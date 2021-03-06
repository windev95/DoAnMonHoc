USE [master]
GO
/****** Object:  Database [DIENTHOAIDIDONG]    Script Date: 12/25/2016 16:25:16 ******/
CREATE DATABASE [DIENTHOAIDIDONG]
ALTER DATABASE [DIENTHOAIDIDONG] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DIENTHOAIDIDONG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET ARITHABORT OFF
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET AUTO_CLOSE ON
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET  DISABLE_BROKER
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET  READ_WRITE
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET RECOVERY SIMPLE
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET  MULTI_USER
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DIENTHOAIDIDONG] SET DB_CHAINING OFF
GO
USE [DIENTHOAIDIDONG]
GO
/****** Object:  Table [dbo].[CUAHANG]    Script Date: 12/25/2016 16:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUAHANG](
	[MA_CH] [int] NOT NULL,
	[DIACHI_CH] [nvarchar](100) NULL,
	[SODT_CH] [varchar](15) NULL,
	[MAIL_CH] [nvarchar](50) NULL,
	[TOADO_CH] [varchar](30) NULL,
 CONSTRAINT [PK_CUAHANG] PRIMARY KEY CLUSTERED 
(
	[MA_CH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CUAHANG] ([MA_CH], [DIACHI_CH], [SODT_CH], [MAIL_CH], [TOADO_CH]) VALUES (1, N'425A Điện Biên Phủ, P.25, Q.Bình Thạnh, TP.HCM', N'+093-319-4610', N'chuong72000@gmail.com', N'10.801275, 106.714988')
/****** Object:  Table [dbo].[EVENT]    Script Date: 12/25/2016 16:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EVENT](
	[MA_EVENT] [int] IDENTITY(1,1) NOT NULL,
	[TEN_EVENT] [nvarchar](200) NULL,
	[HINH_EVENT] [varchar](500) NULL,
 CONSTRAINT [PK_EVENT] PRIMARY KEY CLUSTERED 
(
	[MA_EVENT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EVENT] ON
INSERT [dbo].[EVENT] ([MA_EVENT], [TEN_EVENT], [HINH_EVENT]) VALUES (1, N'Sắm Samsung tặng laptop', N'1.jpg')
INSERT [dbo].[EVENT] ([MA_EVENT], [TEN_EVENT], [HINH_EVENT]) VALUES (2, N'Đặt trước XPeria XZ rước combo quà', N'3.jpg')
INSERT [dbo].[EVENT] ([MA_EVENT], [TEN_EVENT], [HINH_EVENT]) VALUES (3, N'Chính thức mở bán Samsung Galaxy J7 Prime', N'4.jpg')
INSERT [dbo].[EVENT] ([MA_EVENT], [TEN_EVENT], [HINH_EVENT]) VALUES (4, N'Lenovo Siêu bão cuối tháng - Giảm đến 50%', N'5.jpg')
INSERT [dbo].[EVENT] ([MA_EVENT], [TEN_EVENT], [HINH_EVENT]) VALUES (7, N'Oppo f1s thêm màu mới - quà mới "kool" hơn', N'5950_H1-800x300.jpg')
SET IDENTITY_INSERT [dbo].[EVENT] OFF
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 12/25/2016 16:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MA_PQ] [int] NOT NULL,
	[TEN_PQ] [nvarchar](30) NULL,
	[MOTA_PQ] [nvarchar](200) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MA_PQ] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PhanQuyen] ([MA_PQ], [TEN_PQ], [MOTA_PQ]) VALUES (1, N'Quản trị viên', N'Quản lý mọi hoạt động web cũng như các nhân viên cửa hàng')
INSERT [dbo].[PhanQuyen] ([MA_PQ], [TEN_PQ], [MOTA_PQ]) VALUES (2, N'Nhân viên', N'Quản lý các hoạt động của trang web')
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 12/25/2016 16:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MA_NCC] [int] IDENTITY(1,1) NOT NULL,
	[TEN_NCC] [nvarchar](50) NULL,
	[DIACHI_NCC] [nvarchar](100) NULL,
	[SODT_NCC] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_NCC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON
INSERT [dbo].[NHACUNGCAP] ([MA_NCC], [TEN_NCC], [DIACHI_NCC], [SODT_NCC]) VALUES (1, N'Công ty 1', N'diachi1', N'09331111112')
INSERT [dbo].[NHACUNGCAP] ([MA_NCC], [TEN_NCC], [DIACHI_NCC], [SODT_NCC]) VALUES (2, N'Công ty 2', N'diachi2', N'0933222222')
INSERT [dbo].[NHACUNGCAP] ([MA_NCC], [TEN_NCC], [DIACHI_NCC], [SODT_NCC]) VALUES (3, N'Công ty 3', N'diachi3', N'0933333333')
INSERT [dbo].[NHACUNGCAP] ([MA_NCC], [TEN_NCC], [DIACHI_NCC], [SODT_NCC]) VALUES (4, N'Công ty 4', N'diachi4', N'0933444444')
INSERT [dbo].[NHACUNGCAP] ([MA_NCC], [TEN_NCC], [DIACHI_NCC], [SODT_NCC]) VALUES (5, N'Công ty 5', N'diachi5', N'0933555555')
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
/****** Object:  Table [dbo].[LOAIPHUKIEN]    Script Date: 12/25/2016 16:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIPHUKIEN](
	[MA_LPK] [int] IDENTITY(1,1) NOT NULL,
	[TEN_LPK] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_LPK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LOAIPHUKIEN] ON
INSERT [dbo].[LOAIPHUKIEN] ([MA_LPK], [TEN_LPK]) VALUES (1, N'Bao da ốp lưng')
INSERT [dbo].[LOAIPHUKIEN] ([MA_LPK], [TEN_LPK]) VALUES (2, N'Sạc dự phòng')
INSERT [dbo].[LOAIPHUKIEN] ([MA_LPK], [TEN_LPK]) VALUES (3, N'Loa')
INSERT [dbo].[LOAIPHUKIEN] ([MA_LPK], [TEN_LPK]) VALUES (4, N'Tai nghe')
INSERT [dbo].[LOAIPHUKIEN] ([MA_LPK], [TEN_LPK]) VALUES (5, N'Thẻ nhớ')
INSERT [dbo].[LOAIPHUKIEN] ([MA_LPK], [TEN_LPK]) VALUES (6, N'Balô - túi xách')
INSERT [dbo].[LOAIPHUKIEN] ([MA_LPK], [TEN_LPK]) VALUES (7, N'Miếng dán màn hình')
INSERT [dbo].[LOAIPHUKIEN] ([MA_LPK], [TEN_LPK]) VALUES (9, N'Sạc cáp')
SET IDENTITY_INSERT [dbo].[LOAIPHUKIEN] OFF
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/25/2016 16:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MA_KH] [int] IDENTITY(1,1) NOT NULL,
	[TAIKHOAN] [varchar](30) NOT NULL,
	[MATKHAU] [varchar](30) NOT NULL,
	[EMAIL] [varchar](30) NULL,
	[SODT_KH] [varchar](15) NULL,
	[HOTEN_KH] [nvarchar](30) NULL,
	[NGAYSINH_KH] [datetime] NULL,
	[GIOITINH_KH] [bit] NULL,
	[DIACHI_KH] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_KH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON
INSERT [dbo].[KHACHHANG] ([MA_KH], [TAIKHOAN], [MATKHAU], [EMAIL], [SODT_KH], [HOTEN_KH], [NGAYSINH_KH], [GIOITINH_KH], [DIACHI_KH]) VALUES (1, N'taikhoan1', N'123456789', N'taikhoan1', N'0933111111', N'Nguyễn Văn A', CAST(0x0000722300000000 AS DateTime), 1, N'taikhoan1')
INSERT [dbo].[KHACHHANG] ([MA_KH], [TAIKHOAN], [MATKHAU], [EMAIL], [SODT_KH], [HOTEN_KH], [NGAYSINH_KH], [GIOITINH_KH], [DIACHI_KH]) VALUES (2, N'taikhoan2', N'123456789', N'taikhoan2', N'0933222222', N'Nguyễn Thị B', CAST(0x0000796600000000 AS DateTime), 0, N'taikhoan2')
INSERT [dbo].[KHACHHANG] ([MA_KH], [TAIKHOAN], [MATKHAU], [EMAIL], [SODT_KH], [HOTEN_KH], [NGAYSINH_KH], [GIOITINH_KH], [DIACHI_KH]) VALUES (3, N'taikhoan3', N'123456789', N'taikhoan3', N'0933333333', N'Nguyễn Thanh C', CAST(0x000076A800000000 AS DateTime), 1, N'taikhoan3')
INSERT [dbo].[KHACHHANG] ([MA_KH], [TAIKHOAN], [MATKHAU], [EMAIL], [SODT_KH], [HOTEN_KH], [NGAYSINH_KH], [GIOITINH_KH], [DIACHI_KH]) VALUES (4, N'made123s', N'123', N'chuong72000@gmail.com', N'0933194610', N'Giang Tuấn Chương', CAST(0x000087B700000000 AS DateTime), NULL, N'17')
INSERT [dbo].[KHACHHANG] ([MA_KH], [TAIKHOAN], [MATKHAU], [EMAIL], [SODT_KH], [HOTEN_KH], [NGAYSINH_KH], [GIOITINH_KH], [DIACHI_KH]) VALUES (5, N'p', N'123', NULL, N'hj', N'p', CAST(0x0000A68700000000 AS DateTime), NULL, N'gh')
INSERT [dbo].[KHACHHANG] ([MA_KH], [TAIKHOAN], [MATKHAU], [EMAIL], [SODT_KH], [HOTEN_KH], [NGAYSINH_KH], [GIOITINH_KH], [DIACHI_KH]) VALUES (6, N'taikhoan4', N'123', N'asd@yahoo.com', N'312314', N'Giang Tuấn Chương', CAST(0x0000A69000000000 AS DateTime), 1, N'aa')
INSERT [dbo].[KHACHHANG] ([MA_KH], [TAIKHOAN], [MATKHAU], [EMAIL], [SODT_KH], [HOTEN_KH], [NGAYSINH_KH], [GIOITINH_KH], [DIACHI_KH]) VALUES (9, N'eqqwe', N'123456789', N'chuong72000@gmail.com', N'123143513123123', N'qweqwe', CAST(0x0000A6B200000000 AS DateTime), 1, N'')
INSERT [dbo].[KHACHHANG] ([MA_KH], [TAIKHOAN], [MATKHAU], [EMAIL], [SODT_KH], [HOTEN_KH], [NGAYSINH_KH], [GIOITINH_KH], [DIACHI_KH]) VALUES (10, N'giang123', N'123456789', N'giang.0162@gmail.com', N'01208301419', N'Trường Giang', CAST(0x0000883800000000 AS DateTime), 0, N'aasdasdasd')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
/****** Object:  Table [dbo].[Admin]    Script Date: 12/25/2016 16:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[Ten_TK_Admin] [varchar](30) NOT NULL,
	[MatKhau_Admin] [varchar](30) NULL,
	[Hoten_Admin] [nvarchar](30) NULL,
	[Diachi_Admin] [nvarchar](100) NULL,
	[Sodt_Admin] [varchar](15) NULL,
	[MA_PQ] [int] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Ten_TK_Admin] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Admin] ([Ten_TK_Admin], [MatKhau_Admin], [Hoten_Admin], [Diachi_Admin], [Sodt_Admin], [MA_PQ]) VALUES (N'admin123', N'123456789', N'Giang Tuấn Chương', N'17 Nguyễn Đình Chính F.15 Q.Phú Nhuận TP.HCM ', N'093319461', 1)
INSERT [dbo].[Admin] ([Ten_TK_Admin], [MatKhau_Admin], [Hoten_Admin], [Diachi_Admin], [Sodt_Admin], [MA_PQ]) VALUES (N'admin321', N'123456789', N'Phan Thanh Tân', N'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', N'123456', 2)
/****** Object:  Table [dbo].[PHUKIEN]    Script Date: 12/25/2016 16:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHUKIEN](
	[MA_PK] [int] IDENTITY(1,1) NOT NULL,
	[MA_LPK] [int] NOT NULL,
	[TEN_PK] [nvarchar](100) NULL,
	[MOTA_PK] [nvarchar](1000) NULL,
	[GIABAN_PK] [decimal](18, 0) NULL,
	[HINHANH_PK] [varchar](100) NULL,
	[SOLUONG_PK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PHUKIEN] ON
INSERT [dbo].[PHUKIEN] ([MA_PK], [MA_LPK], [TEN_PK], [MOTA_PK], [GIABAN_PK], [HINHANH_PK], [SOLUONG_PK]) VALUES (1, 1, N'Ốp lưng Oppo F1s Balloon', N'<p><span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 18px; background-color: #f2f2f2;">Thiết kế vừa vặn trong suốt &ocirc;m s&aacute;t th&acirc;n m&aacute;y, chống trầy xước th&acirc;n m&aacute;y tối ưu. Chất liệu silicon dễ d&agrave;ng th&aacute;o lắp</span></p>', CAST(50000 AS Decimal(18, 0)), N'oppof1s-balloon.jpg', 50)
INSERT [dbo].[PHUKIEN] ([MA_PK], [MA_LPK], [TEN_PK], [MOTA_PK], [GIABAN_PK], [HINHANH_PK], [SOLUONG_PK]) VALUES (2, 1, N'Ốp lưng Huawei GR5 Silicon', N'<p><span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 18px; background-color: #f2f2f2;">Thiết kế vừa vặn trong suốt &ocirc;m s&aacute;t th&acirc;n m&aacute;y, chống trầy xước th&acirc;n m&aacute;y tối ưu. Chất liệu silicon dễ d&agrave;ng th&aacute;o lắp</span></p>', CAST(68000 AS Decimal(18, 0)), N'OP-LUNG-HUAWEI-GR5-SILICON-05.jpg', 20)
INSERT [dbo].[PHUKIEN] ([MA_PK], [MA_LPK], [TEN_PK], [MOTA_PK], [GIABAN_PK], [HINHANH_PK], [SOLUONG_PK]) VALUES (3, 4, N'Tai nghe Sony Earpod MDR-E9LP', N'<p><span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 18px; background-color: #f2f2f2;">Thiết kế đơn giản, đẹp mắt. Bộ m&agrave;ng loa 13.5mm t&aacute;i tạo &acirc;m trầm mạnh mẽ. Miếng đệm tai mềm cho cảm gi&aacute;c thoải m&aacute;i khi đeo. Dải tần số rộng cho &acirc;m thanh ch&acirc;n thực v&agrave; sống động.</span></p>', CAST(199000 AS Decimal(18, 0)), N'Tai-nghe-Sony-Earpod-MDR-E9LP.png', 20)
INSERT [dbo].[PHUKIEN] ([MA_PK], [MA_LPK], [TEN_PK], [MOTA_PK], [GIABAN_PK], [HINHANH_PK], [SOLUONG_PK]) VALUES (4, 2, N'Sạc dự phòng Nấm Lùn 8000mAh', N'<p><span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 18px; background-color: #f2f2f2;">C&oacute; chip IC chống ch&aacute;y nổ, ổn định d&ograve;ng điện bảo vệ pin điện thoại, tự ngắt khi sạc đầy</span></p>', CAST(449000 AS Decimal(18, 0)), N'NAM-LUN-8000MAH-00262818.png', 20)
INSERT [dbo].[PHUKIEN] ([MA_PK], [MA_LPK], [TEN_PK], [MOTA_PK], [GIABAN_PK], [HINHANH_PK], [SOLUONG_PK]) VALUES (6, 3, N'Loa Dàn 2.0 Soundmax A130 Blue', N'<p>Thiết kế nhỏ gọn, mang đến sự tiện lợi cao.</p>
<p>Kh&ocirc;ng dẫn nhiệt - dẫn điện khi d&ugrave;ng trong thời gian d&agrave;i.</p>', CAST(179000 AS Decimal(18, 0)), N'SOUNDMAX-A130-BLUE-0003983.png', 100)
INSERT [dbo].[PHUKIEN] ([MA_PK], [MA_LPK], [TEN_PK], [MOTA_PK], [GIABAN_PK], [HINHANH_PK], [SOLUONG_PK]) VALUES (7, 9, N'Cáp Micro USB Hoco 20 cm', N'<p>Độ ho&agrave;n thiện cao khi được đan một lớp d&acirc;y rất chắc chắn, vừa gi&uacute;p chống rối, vừa gi&uacute;p bảo vệ mạnh mẽ. Đồng thời thể hiện được c&aacute; t&iacute;nh thời trang của người sử dụng.</p>', CAST(100000 AS Decimal(18, 0)), N'636011722580854499_00006898.jpg', 50)
INSERT [dbo].[PHUKIEN] ([MA_PK], [MA_LPK], [TEN_PK], [MOTA_PK], [GIABAN_PK], [HINHANH_PK], [SOLUONG_PK]) VALUES (8, 5, N'Combo Tiện Dụng (Thẻ nhớ-Đầu đọc thẻ) cho Điện Thoại', N'<p><span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 18px; background-color: #f2f2f2;">D&agrave;nh cho tất cả c&aacute;c d&ograve;ng m&aacute;y c&oacute; hỗ trợ thẻ nhớ gắn ngo&agrave;i</span></p>
<p><span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 18px; background-color: #f2f2f2;">G&iacute;a rẻ hơn so với mua lẻ. Thẻ nhớ thương hiệu h&agrave;ng đầu thế giới. Đầu đọc thẻ tặng k&egrave;m gi&uacute;p sao ch&eacute;p dữ liệu nhanh ch&oacute;ng v&agrave; tiện lợi.</span></p>', CAST(159000 AS Decimal(18, 0)), N'DAU-DOC-THE-CHO-DIEN-THOAI-00001358.png', 25)
INSERT [dbo].[PHUKIEN] ([MA_PK], [MA_LPK], [TEN_PK], [MOTA_PK], [GIABAN_PK], [HINHANH_PK], [SOLUONG_PK]) VALUES (9, 7, N'MDMH Kính cường lực iP 6/6S iSmile', N'<p>Độ bền cao, bảo vệ vượt trội</p>', CAST(150000 AS Decimal(18, 0)), N'iPHONE-6-6S-ISMILE-CUONG-LUC-00006108.png', 200)
INSERT [dbo].[PHUKIEN] ([MA_PK], [MA_LPK], [TEN_PK], [MOTA_PK], [GIABAN_PK], [HINHANH_PK], [SOLUONG_PK]) VALUES (10, 6, N'Túi đeo chéo Crown Ipad / Tablet 8''''', N'<p><span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 18px; background-color: #f2f2f2;">Chất liệu vải c&oacute; khả năng trợt nước, với lớp mood gi&uacute;p chống sốc để bảo vệ m&aacute;y tablet khỏi sự va đập. D&acirc;y đeo lụa nhẹ nh&agrave;ng xinh xắn.</span></p>', CAST(399000 AS Decimal(18, 0)), N'TUI-DEO-CHEO-CROWN-IPAD-TABLET-8-00247694.jpg', 52)
SET IDENTITY_INSERT [dbo].[PHUKIEN] OFF
/****** Object:  Table [dbo].[HOADON]    Script Date: 12/25/2016 16:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOADON](
	[MA_HD] [int] IDENTITY(1,1) NOT NULL,
	[NGAYLAP_HD] [datetime] NULL,
	[NGAYGIAO_HD] [datetime] NULL,
	[TONGTIEN_HD] [decimal](18, 0) NULL,
	[THANHTOAN] [bit] NULL,
	[MA_KH] [int] NOT NULL,
	[TEN_NGUOINHAN] [nvarchar](30) NULL,
	[GIAOHANG] [bit] NULL,
	[DIACHI_NGUOINHAN] [nvarchar](100) NULL,
	[SODT_NGUOINHAN] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_HD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[HOADON] ON
INSERT [dbo].[HOADON] ([MA_HD], [NGAYLAP_HD], [NGAYGIAO_HD], [TONGTIEN_HD], [THANHTOAN], [MA_KH], [TEN_NGUOINHAN], [GIAOHANG], [DIACHI_NGUOINHAN], [SODT_NGUOINHAN]) VALUES (1, CAST(0x0000A696014E202C AS DateTime), CAST(0x0000A6BC00000000 AS DateTime), CAST(54098000 AS Decimal(18, 0)), 1, 4, N'Giang Tuấn Chương', 1, N'17', N'0933194610')
INSERT [dbo].[HOADON] ([MA_HD], [NGAYLAP_HD], [NGAYGIAO_HD], [TONGTIEN_HD], [THANHTOAN], [MA_KH], [TEN_NGUOINHAN], [GIAOHANG], [DIACHI_NGUOINHAN], [SODT_NGUOINHAN]) VALUES (2, CAST(0x0000A69601535BAE AS DateTime), CAST(0x0000A6BD00000000 AS DateTime), CAST(24156000 AS Decimal(18, 0)), 0, 2, N'Nguyễn Thị B', 0, N'taikhoan2', N'0933222222')
INSERT [dbo].[HOADON] ([MA_HD], [NGAYLAP_HD], [NGAYGIAO_HD], [TONGTIEN_HD], [THANHTOAN], [MA_KH], [TEN_NGUOINHAN], [GIAOHANG], [DIACHI_NGUOINHAN], [SODT_NGUOINHAN]) VALUES (3, CAST(0x0000A696017025E0 AS DateTime), CAST(0x0000A6C400000000 AS DateTime), CAST(186000 AS Decimal(18, 0)), 0, 1, N'Nguyễn Văn A', 0, N'taikhoan1', N'0933111111')
INSERT [dbo].[HOADON] ([MA_HD], [NGAYLAP_HD], [NGAYGIAO_HD], [TONGTIEN_HD], [THANHTOAN], [MA_KH], [TEN_NGUOINHAN], [GIAOHANG], [DIACHI_NGUOINHAN], [SODT_NGUOINHAN]) VALUES (4, CAST(0x0000A69A012A799B AS DateTime), CAST(0x0000A6EC00000000 AS DateTime), CAST(15980000 AS Decimal(18, 0)), 0, 4, N'Giang Tuấn Chương', 0, N'17', N'0933194610')
INSERT [dbo].[HOADON] ([MA_HD], [NGAYLAP_HD], [NGAYGIAO_HD], [TONGTIEN_HD], [THANHTOAN], [MA_KH], [TEN_NGUOINHAN], [GIAOHANG], [DIACHI_NGUOINHAN], [SODT_NGUOINHAN]) VALUES (5, CAST(0x0000A69A013AEE4E AS DateTime), CAST(0x0000A6EE00000000 AS DateTime), CAST(32088000 AS Decimal(18, 0)), 0, 4, N'Giang Tuấn Chương', 0, N'17', N'0933194610')
INSERT [dbo].[HOADON] ([MA_HD], [NGAYLAP_HD], [NGAYGIAO_HD], [TONGTIEN_HD], [THANHTOAN], [MA_KH], [TEN_NGUOINHAN], [GIAOHANG], [DIACHI_NGUOINHAN], [SODT_NGUOINHAN]) VALUES (6, CAST(0x0000A69E00173A3C AS DateTime), CAST(0x0000A6DD00000000 AS DateTime), CAST(28156000 AS Decimal(18, 0)), 0, 4, N'Giang Tuấn Chương', 0, N'17', N'0933194610')
SET IDENTITY_INSERT [dbo].[HOADON] OFF
/****** Object:  Table [dbo].[LOAIDIENTHOAI]    Script Date: 12/25/2016 16:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIDIENTHOAI](
	[MA_LDT] [int] IDENTITY(1,1) NOT NULL,
	[TEN_LDT] [nvarchar](30) NULL,
	[MA_NCC] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_LDT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LOAIDIENTHOAI] ON
INSERT [dbo].[LOAIDIENTHOAI] ([MA_LDT], [TEN_LDT], [MA_NCC]) VALUES (2, N'Samsung', 1)
INSERT [dbo].[LOAIDIENTHOAI] ([MA_LDT], [TEN_LDT], [MA_NCC]) VALUES (3, N'Apple (Iphone)', 2)
INSERT [dbo].[LOAIDIENTHOAI] ([MA_LDT], [TEN_LDT], [MA_NCC]) VALUES (4, N'Oppo', 3)
INSERT [dbo].[LOAIDIENTHOAI] ([MA_LDT], [TEN_LDT], [MA_NCC]) VALUES (5, N'Nokia', 1)
INSERT [dbo].[LOAIDIENTHOAI] ([MA_LDT], [TEN_LDT], [MA_NCC]) VALUES (6, N'HTC', 2)
INSERT [dbo].[LOAIDIENTHOAI] ([MA_LDT], [TEN_LDT], [MA_NCC]) VALUES (7, N'Sony', 4)
INSERT [dbo].[LOAIDIENTHOAI] ([MA_LDT], [TEN_LDT], [MA_NCC]) VALUES (8, N'Mobiistar', 5)
INSERT [dbo].[LOAIDIENTHOAI] ([MA_LDT], [TEN_LDT], [MA_NCC]) VALUES (9, N'Mobell', 5)
INSERT [dbo].[LOAIDIENTHOAI] ([MA_LDT], [TEN_LDT], [MA_NCC]) VALUES (11, N'Huawei', 3)
INSERT [dbo].[LOAIDIENTHOAI] ([MA_LDT], [TEN_LDT], [MA_NCC]) VALUES (14, N'Lenovo', 3)
INSERT [dbo].[LOAIDIENTHOAI] ([MA_LDT], [TEN_LDT], [MA_NCC]) VALUES (15, N'Masstel', 1)
SET IDENTITY_INSERT [dbo].[LOAIDIENTHOAI] OFF
/****** Object:  Table [dbo].[DIENTHOAI]    Script Date: 12/25/2016 16:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DIENTHOAI](
	[MA_DT] [int] IDENTITY(1,1) NOT NULL,
	[TEN_DT] [nvarchar](30) NULL,
	[MOTA_DT] [nvarchar](100) NULL,
	[MOTA_CT_DT] [nvarchar](1000) NULL,
	[GIABAN_DT] [decimal](18, 0) NULL,
	[SOLUONGTON] [int] NULL,
	[HINHANH_DT] [varchar](50) NULL,
	[HINHANH_DT2] [varchar](50) NULL,
	[NGAYNHAP_DT] [datetime] NULL,
	[MA_LDT] [int] NOT NULL,
	[LINK_TTTT] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_DT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DIENTHOAI] ON
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [MOTA_DT], [MOTA_CT_DT], [GIABAN_DT], [SOLUONGTON], [HINHANH_DT], [HINHANH_DT2], [NGAYNHAP_DT], [MA_LDT], [LINK_TTTT]) VALUES (1, N'Oppo F1s', N'Chuyên gia selfie', N'<p>Tiếp tục đ&aacute;nh mạnh v&agrave;o yếu tố chụp ảnh selfie, OPPO F1s ra mắt c&ugrave;ng những t&iacute;nh năng tuyệt vời của camera trước. C&ugrave;ng với thiết kế sang trọng cuốn h&uacute;t, chiếc điện thoại n&agrave;y sẽ g&acirc;y ấn tượng cho bất cứ ai ngay trong lần trải nghiệm đầu ti&ecirc;n.</p>', CAST(5990000 AS Decimal(18, 0)), 200, N'oppof1s.jpg', N'OPPO-F1s.jpg', CAST(0x0000A66400000000 AS DateTime), 4, NULL)
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [MOTA_DT], [MOTA_CT_DT], [GIABAN_DT], [SOLUONGTON], [HINHANH_DT], [HINHANH_DT2], [NGAYNHAP_DT], [MA_LDT], [LINK_TTTT]) VALUES (2, N'Samsung Galaxy J7 Prime', N'Camera tuyệt đỉnh - Thiết kế hoàn hảo', N'<p><span style="color: #333333; font-family: Arial, sans-serif; font-size: 14px; line-height: 26px;">Samsung Galaxy J7 Prime ra mắt với mục đ&iacute;ch đ&aacute;nh mạnh v&agrave;o ph&acirc;n kh&uacute;c smartphone tầm trung hiện nay. Sở hữu m&agrave;n h&igrave;nh lớn 5.5 inch Full HD, vi xử l&yacute; 8 nh&acirc;n xung nhịp 1.6 GHz với 3 GB RAM chạy tr&ecirc;n nền Android 6.0.1 c&ugrave;ng bộ đ&ocirc;i camera 13 MP/8 MP chất lượng, tất cả chỉ trong một mức gi&aacute; dễ chịu của ph&acirc;n kh&uacute;c.</span></p>', CAST(6290000 AS Decimal(18, 0)), 150, N'samsunggalaxyj7prime.jpg', N'samsung-galaxy-j7-prime.jpg', CAST(0x0000A68900000000 AS DateTime), 2, N'<a href="https://www.baokim.vn/payment/product/version11?business=chuong72000%40gmail.com&id=&order_description=Samsung+Galaxy+J7+Prime+ra+m%E1%BA%AFt+v%E1%BB%9Bi+m%E1%BB%A5c+%C4%91%C3%ADch+%C4%91%C3%A1nh+m%E1%BA%A1nh+v%C3%A0o+ph%C3%A2n+kh%C3%BAc+smartphone+t%E1%BA%A7m+trung+hi%E1%BB%87n+nay.+S%E1%BB%9F+h%E1%BB%AFu+m%C3%A0n+h%C3%ACnh+l%E1%BB%9Bn+5.5+inch+Full+HD%2C+vi+x%E1%BB%AD+l%C3%BD+8+nh%C3%A2n+xung+nh%E1%BB%8Bp+1.6+GHz+v%E1%BB%9Bi+3+GB+RAM+ch%E1%BA%A1y+tr%C3%AAn+n%E1%BB%81n+Android+6.0.1+c%C3%B9ng+b%E1%BB%99+%C4%91%C3%B4i+camera+13+MP%2F8+MP+ch%E1%BA%A5t+l%C6%B0%E1%BB%A3ng%2C+t%E1%BA%A5t+c%E1%BA%A3+ch%E1%BB%89+trong+m%E1%BB%99t+m%E1%BB%A9c+gi%C3%A1+d%E1%BB%85+ch%E1%BB%8Bu+c%E1%BB%A7a+ph%C3%A2n+kh%C3%BAc.&product_name=Samsung+Galaxy+J7+Prime&product_price=6290000&product_quantity=1&total_amount=6290000&url_cancel=&url_detail=http%3A%2F%2Flocalhost%3A53488%2FIndex%2FDETAILS%2F2&url_success=http%3A%2F%2Flocalhost%3A53488%2FGioHang%2FXacNhanDonHang"><img src="http://www.baokim.vn/developers/uploads/baokim_btn/muahang-l.png" alt="Thanh toán an toàn với Bảo Kim !" border="0" title="Thanh toán trực tuyến an toàn dùng tài khoản Ngân hàng (VietcomBank, TechcomBank, Đông Á, VietinBank, Quân Đội, VIB, SHB,... và thẻ Quốc tế (Visa, Master Card...) qua Cổng thanh toán trực tuyến BảoKim.vn" ></a>')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [MOTA_DT], [MOTA_CT_DT], [GIABAN_DT], [SOLUONGTON], [HINHANH_DT], [HINHANH_DT2], [NGAYNHAP_DT], [MA_LDT], [LINK_TTTT]) VALUES (3, N'Nokia Lumia 525', N'Đơn giản - Trực quan - Dễ kiểm soát', N'<p><span style="color: #333333; font-family: Arial, sans-serif; font-size: 14px; line-height: 26px;">Điện thoại Nokia Lumia 525 l&agrave; sự lựa chọn ho&agrave;n hảo cho người d&ugrave;ng th&iacute;ch sự trải nghiệm</span></p>', CAST(799000 AS Decimal(18, 0)), 1, N'nokialumia525.jpg', N'NOKIA-LUMIA-525.jpg', CAST(0x0000A60700000000 AS DateTime), 5, NULL)
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [MOTA_DT], [MOTA_CT_DT], [GIABAN_DT], [SOLUONGTON], [HINHANH_DT], [HINHANH_DT2], [NGAYNHAP_DT], [MA_LDT], [LINK_TTTT]) VALUES (4, N'Iphone 7', NULL, NULL, CAST(30000000 AS Decimal(18, 0)), 0, N'iphone_7.jpg', N'iphone7.jpg', CAST(0x0000A69100000000 AS DateTime), 3, NULL)
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [MOTA_DT], [MOTA_CT_DT], [GIABAN_DT], [SOLUONGTON], [HINHANH_DT], [HINHANH_DT2], [NGAYNHAP_DT], [MA_LDT], [LINK_TTTT]) VALUES (5, N'Oppo F1 Plus', N'Màn hình rộng rãi - Hiệu năng ấn tượng', N'<p><span style="color: #333333; font-family: Arial, sans-serif; font-size: 14px; line-height: 26px;">OPPO F1 Plus l&agrave; mẫu phablet tầm trung vừa được OPPO ch&iacute;nh thức giới thiệu c&aacute;ch đ&acirc;y kh&ocirc;ng l&acirc;u. Sở hữu m&agrave;n h&igrave;nh k&iacute;ch thước lớn 5,5 inch c&ugrave;ng một thiết kế thời trang v&agrave; cấu h&igrave;nh mạnh mẽ, chiếc điện thoại n&agrave;y chắc chắn sẽ l&agrave; sự lựa chọn của kh&ocirc;ng &iacute;t t&iacute;n đồ c&ocirc;ng nghệ ngay sau khi n&oacute; ch&iacute;nh thức được l&ecirc;n kệ.</span></p>', CAST(9990000 AS Decimal(18, 0)), 122, N'oppof1plus.jpg', N'oppo-f1-plus.jpg', CAST(0x0000A66300000000 AS DateTime), 4, N'<a href="https://www.baokim.vn/payment/product/version11?business=chuong72000%40gmail.com&id=&order_description=OPPO+F1+Plus+l%C3%A0+m%E1%BA%ABu+phablet+t%E1%BA%A7m+trung+v%E1%BB%ABa+%C4%91%C6%B0%E1%BB%A3c+OPPO+ch%C3%ADnh+th%E1%BB%A9c+gi%E1%BB%9Bi+thi%E1%BB%87u+c%C3%A1ch+%C4%91%C3%A2y+kh%C3%B4ng+l%C3%A2u.+S%E1%BB%9F+h%E1%BB%AFu+m%C3%A0n+h%C3%ACnh+k%C3%ADch+th%C6%B0%E1%BB%9Bc+l%E1%BB%9Bn+5%2C5+inch+c%C3%B9ng+m%E1%BB%99t+thi%E1%BA%BFt+k%E1%BA%BF+th%E1%BB%9Di+trang+v%C3%A0+c%E1%BA%A5u+h%C3%ACnh+m%E1%BA%A1nh+m%E1%BA%BD%2C+chi%E1%BA%BFc+%C4%91i%E1%BB%87n+tho%E1%BA%A1i+n%C3%A0y+ch%E1%BA%AFc+ch%E1%BA%AFn+s%E1%BA%BD+l%C3%A0+s%E1%BB%B1+l%E1%BB%B1a+ch%E1%BB%8Dn+c%E1%BB%A7a+kh%C3%B4ng+%C3%ADt+t%C3%ADn+%C4%91%E1%BB%93+c%C3%B4ng+ngh%E1%BB%87+ngay+sau+khi+n%C3%B3+ch%C3%ADnh+th%E1%BB%A9c+%C4%91%C6%B0%E1%BB%A3c+l%C3%AAn+k%E1%BB%87.&product_name=Oppo+F1+Plus&product_price=9990000&product_quantity=1&total_amount=9990000&url_cancel=&url_detail=http%3A%2F%2Flocalhost%3A53488%2FIndex%2FDETAILS%2F5&url_success=http%3A%2F%2Flocalhost%3A53488%2FGioHang%2FXacNhanDonHang"><img src="http://www.baokim.vn/developers/uploads/baokim_btn/muahang-l.png" alt="Thanh toán an toàn với Bảo Kim !" border="0" title="Thanh toán trực tuyến an toàn dùng tài khoản Ngân hàng (VietcomBank, TechcomBank, Đông Á, VietinBank, Quân Đội, VIB, SHB,... và thẻ Quốc tế (Visa, Master Card...) qua Cổng thanh toán trực tuyến BảoKim.vn" ></a>')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [MOTA_DT], [MOTA_CT_DT], [GIABAN_DT], [SOLUONGTON], [HINHANH_DT], [HINHANH_DT2], [NGAYNHAP_DT], [MA_LDT], [LINK_TTTT]) VALUES (6, N'Mobiistar Prime X Grand', N'Cấu hình mạnh mẽ - Xử lý mượt mà', N'<p><span style="color: #333333; font-family: Arial, sans-serif; font-size: 14px; line-height: 26px;">Mobiistar Prime X Grand l&agrave; smartphone nằm trong d&ograve;ng sản phẩm KIM Series của Mobiistar ra mắt đầu năm 2016. Sở hữu một lớp vỏ nguy&ecirc;n khối bằng kim loại đẹp mắt, cấu h&igrave;nh mạnh v&agrave; camera chụp ảnh đẹp trong một mức gi&aacute; đầy hấp dẫn, chiếc điện thoại hứa hẹn sẽ tạo l&ecirc;n sức hấp dẫn cực lớn tr&ecirc;n thị trường ngay sau khi l&ecirc;n kệ.</span></p>', CAST(3990000 AS Decimal(18, 0)), 51, N'mobiistarprime_xgrand.png', N'mobiistarprimxgrand.jpg', CAST(0x0000A62900000000 AS DateTime), 8, NULL)
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [MOTA_DT], [MOTA_CT_DT], [GIABAN_DT], [SOLUONGTON], [HINHANH_DT], [HINHANH_DT2], [NGAYNHAP_DT], [MA_LDT], [LINK_TTTT]) VALUES (7, N'HTC Desire 820G Plus Dual SIM', N'Thiết kế cách tân ấn tượng', N'<p><span style="color: #333333; font-family: Arial, sans-serif; font-size: 14px; line-height: 26px;">HTC Desire 820G Plus Dual SIM l&agrave; phi&ecirc;n bản smartphone tầm trung sở hữu sự c&aacute;ch t&acirc;n ấn tượng về thiết kế, c&ugrave;ng với đ&oacute; một cấu h&igrave;nh mạnh mẽ c&ugrave;ng nhiều t&iacute;nh năng nổi bật để mang đến trải nghiệm tốt nhất cho những người d&ugrave;ng trẻ.</span></p>', CAST(3790000 AS Decimal(18, 0)), 67, N'HTCDesire820GPlusDual_SIM.jpg', N'HTCDesire820GPlus_Dual_SIM.jpg', CAST(0x0000A69B00000000 AS DateTime), 6, NULL)
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [MOTA_DT], [MOTA_CT_DT], [GIABAN_DT], [SOLUONGTON], [HINHANH_DT], [HINHANH_DT2], [NGAYNHAP_DT], [MA_LDT], [LINK_TTTT]) VALUES (8, N'Sony Xperia Z5 Premium', N'Thiết kế bóng bảy - sang trọng', N'<p><span style="color: #333333; font-family: Arial, sans-serif; font-size: 14px; line-height: 26px;">Chiếc smartphone m&agrave;n h&igrave;nh n&eacute;t nhất thế giới đ&atilde; xuất hiện. Sony Xperia Z5 Premium m&agrave;n h&igrave;nh độ ph&acirc;n giải 4K Ultra HD sẽ khiến tất cả phải bất ngờ v&igrave; sự ấn tượng của m&aacute;y đ&atilde; vượt qua mọi giới hạn</span></p>', CAST(15990000 AS Decimal(18, 0)), 50, N'sonyxperiaz5_premium.jpg', N'sonyxperiaz5premium.jpg', CAST(0x0000A62100000000 AS DateTime), 7, NULL)
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [MOTA_DT], [MOTA_CT_DT], [GIABAN_DT], [SOLUONGTON], [HINHANH_DT], [HINHANH_DT2], [NGAYNHAP_DT], [MA_LDT], [LINK_TTTT]) VALUES (9, N'Samsung Galaxy S7 Edge', N'Vẻ ngoài hoàn mỹ- Chuyên gia chống nước', N'<p><span style="color: #333333; font-family: Arial, sans-serif; font-size: 14px; line-height: 26px;">Samsung Galaxy S7 edge l&agrave; sự tiếp nối của phi&ecirc;n bản S6 edge m&agrave; Samsung đ&atilde; cho ra mắt hồi đầu năm 2015. Với sự n&acirc;ng cấp mạnh mẽ về cấu h&igrave;nh c&ugrave;ng nhiều t&iacute;nh năng mới đi k&egrave;m, chiếc điện thoại n&agrave;y chắc chắn sẽ l&agrave;m h&agrave;i l&ograve;ng những t&iacute;n đồ trung th&agrave;nh của thương hiệu H&agrave;n Quốc ngay sau khi ch&iacute;nh thức l&ecirc;n kệ.</span></p>', CAST(18490000 AS Decimal(18, 0)), 67, N'Samsung_Galaxy_S7Edge.jpg', N'SamsungGalaxyS7Edge.jpg', CAST(0x0000A65000000000 AS DateTime), 2, N'<a href="https://www.baokim.vn/payment/product/version11?business=chuong72000%40gmail.com&id=&order_description=Samsung+Galaxy+S7+edge+l%C3%A0+s%E1%BB%B1+ti%E1%BA%BFp+n%E1%BB%91i+c%E1%BB%A7a+phi%C3%AAn+b%E1%BA%A3n+S6+edge+m%C3%A0+Samsung+%C4%91%C3%A3+cho+ra+m%E1%BA%AFt+h%E1%BB%93i+%C4%91%E1%BA%A7u+n%C4%83m+2015.+V%E1%BB%9Bi+s%E1%BB%B1+n%C3%A2ng+c%E1%BA%A5p+m%E1%BA%A1nh+m%E1%BA%BD+v%E1%BB%81+c%E1%BA%A5u+h%C3%ACnh+c%C3%B9ng+nhi%E1%BB%81u+t%C3%ADnh+n%C4%83ng+m%E1%BB%9Bi+%C4%91i+k%C3%A8m%2C+chi%E1%BA%BFc+%C4%91i%E1%BB%87n+tho%E1%BA%A1i+n%C3%A0y+ch%E1%BA%AFc+ch%E1%BA%AFn+s%E1%BA%BD+l%C3%A0m+h%C3%A0i+l%C3%B2ng+nh%E1%BB%AFng+t%C3%ADn+%C4%91%E1%BB%93+trung+th%C3%A0nh+c%E1%BB%A7a+th%C6%B0%C6%A1ng+hi%E1%BB%87u+H%C3%A0n+Qu%E1%BB%91c+ngay+sau+khi+ch%C3%ADnh+th%E1%BB%A9c+l%C3%AAn+k%E1%BB%87.&product_name=Samsung+Galaxy+S7+Edge&product_price=18490000&product_quantity=1&total_amount=18490000&url_cancel=&url_detail=http%3A%2F%2Flocalhost%3A53488%2FIndex%2FDETAILS%2F9&url_success=http%3A%2F%2Flocalhost%3A53488%2FGioHang%2FXacNhanDonHang"><img src="http://www.baokim.vn/developers/uploads/baokim_btn/muahang-l.png" alt="Thanh toán an toàn với Bảo Kim !" border="0" title="Thanh toán trực tuyến an toàn dùng tài khoản Ngân hàng (VietcomBank, TechcomBank, Đông Á, VietinBank, Quân Đội, VIB, SHB,... và thẻ Quốc tế (Visa, Master Card...) qua Cổng thanh toán trực tuyến BảoKim.vn" ></a>')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [MOTA_DT], [MOTA_CT_DT], [GIABAN_DT], [SOLUONGTON], [HINHANH_DT], [HINHANH_DT2], [NGAYNHAP_DT], [MA_LDT], [LINK_TTTT]) VALUES (10, N'Samsung Galaxy A9 Pro', N'Thiết kế đỉnh - đỉnh quyền năng', N'<p>Bạn y&ecirc;u th&iacute;ch smartphone nhưng e ngại vấn đề mu&ocirc;n thuở về dung lượng pin? Samsung thấu hiểu mong muốn của người d&ugrave;ng v&agrave; cho ra mắt Galaxy A9 Pro với vi&ecirc;n pin khủng, cho thời gian sử dụng l&acirc;u k&egrave;m c&ocirc;ng nghệ sạc nhanh Quick Charge của Qualcomm gi&uacute;p bạn qu&ecirc;n đi mọi lo lắng v&agrave; thoải m&aacute;i trải nghiệm.</p>', CAST(11990000 AS Decimal(18, 0)), 120, N'samsung-galaxy-a9-pro.jpg', N'samsung-galaxy-a9pro.jpg', CAST(0x0000A69600000000 AS DateTime), 2, N'<a href="https://www.baokim.vn/payment/product/version11?business=chuong72000%40gmail.com&id=&order_description=B%E1%BA%A1n+y%C3%AAu+th%C3%ADch+smartphone+nh%C6%B0ng+e+ng%E1%BA%A1i+v%E1%BA%A5n+%C4%91%E1%BB%81+mu%C3%B4n+thu%E1%BB%9F+v%E1%BB%81+dung+l%C6%B0%E1%BB%A3ng+pin%3F+Samsung+th%E1%BA%A5u+hi%E1%BB%83u+mong+mu%E1%BB%91n+c%E1%BB%A7a+ng%C6%B0%E1%BB%9Di+d%C3%B9ng+v%C3%A0+cho+ra+m%E1%BA%AFt+Galaxy+A9+Pro+v%E1%BB%9Bi+vi%C3%AAn+pin+kh%E1%BB%A7ng%2C+cho+th%E1%BB%9Di+gian+s%E1%BB%AD+d%E1%BB%A5ng+l%C3%A2u+k%C3%A8m+c%C3%B4ng+ngh%E1%BB%87+s%E1%BA%A1c+nhanh+Quick+Charge+c%E1%BB%A7a+Qualcomm+gi%C3%BAp+b%E1%BA%A1n+qu%C3%AAn+%C4%91i+m%E1%BB%8Di+lo+l%E1%BA%AFng+v%C3%A0+tho%E1%BA%A3i+m%C3%A1i+tr%E1%BA%A3i+nghi%E1%BB%87m.&product_name=Samsung+Galaxy+A9+Pro&product_price=11990000&product_quantity=1&total_amount=11990000&url_cancel=&url_detail=http%3A%2F%2Flocalhost%3A53488%2FIndex%2FDETAILS%2F10&url_success=http%3A%2F%2Flocalhost%3A53488%2FGioHang%2FXacNhanDonHang"><img src="http://www.baokim.vn/developers/uploads/baokim_btn/muahang-l.png" alt="Thanh toán an toàn với Bảo Kim !" border="0" title="Thanh toán trực tuyến an toàn dùng tài khoản Ngân hàng (VietcomBank, TechcomBank, Đông Á, VietinBank, Quân Đội, VIB, SHB,... và thẻ Quốc tế (Visa, Master Card...) qua Cổng thanh toán trực tuyến BảoKim.vn" ></a>')
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [MOTA_DT], [MOTA_CT_DT], [GIABAN_DT], [SOLUONGTON], [HINHANH_DT], [HINHANH_DT2], [NGAYNHAP_DT], [MA_LDT], [LINK_TTTT]) VALUES (13, N'Mobell Nova F7', NULL, N'Mobell Nova F7 ra đời và xoá tan quan niệm về phân khúc smartphone phổ thông giá rẻ, nhưng chất lượng chưa cao từ nhà sản xuất Mobell. Sản phẩm mang lại một trải nghiệm hoàn toàn mới với màn hình IPS 5.0 inch, chip xử lý MediaTek MT6580 1.3 GHz, RAM 1 GB cùng hệ điều hành Android 5.1.', CAST(1990000 AS Decimal(18, 0)), 50, N'mobell_nova_f7.jpg', N'mobellnovaf7.jpg', CAST(0x0000A61D00000000 AS DateTime), 9, NULL)
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [MOTA_DT], [MOTA_CT_DT], [GIABAN_DT], [SOLUONGTON], [HINHANH_DT], [HINHANH_DT2], [NGAYNHAP_DT], [MA_LDT], [LINK_TTTT]) VALUES (18, N'iPhone 6 64GB', N'Màn hình lớn cho trải nghiệm thêm thú vị', N'<p><span style="color: #333333; font-family: Arial, sans-serif; font-size: 14px; line-height: 26px;">iPhone 6 l&agrave; một phi&ecirc;n bản iPhone m&agrave;n h&igrave;nh lớn, nhưng n&oacute; kh&ocirc;ng chỉ đơn thuần l&agrave; lớn hơn về k&iacute;ch thước m&agrave; c&ograve;n tốt hơn về mọi mặt. Thiết kế kim loại cao cấp bao phủ m&agrave;n h&igrave;nh Retina HD tuyệt đẹp; mạnh mẽ hơn, nhưng lại tiết kiệm pin hơn; những sự phối hợp giữa phần cứng v&agrave; phần mềm ho&agrave;n hảo, tạo ra một thế hệ mới nhất của iPhone v&agrave; tốt hơn bất cứ sản phẩm n&agrave;o trước đ&acirc;y.</span></p>', CAST(18499000 AS Decimal(18, 0)), 150, N'iphone-6-silver-5.jpg', N'iPhone-6-11.jpg', CAST(0x0000A6AD00000000 AS DateTime), 3, NULL)
INSERT [dbo].[DIENTHOAI] ([MA_DT], [TEN_DT], [MOTA_DT], [MOTA_CT_DT], [GIABAN_DT], [SOLUONGTON], [HINHANH_DT], [HINHANH_DT2], [NGAYNHAP_DT], [MA_LDT], [LINK_TTTT]) VALUES (19, N'OPPO A37 (Neo 9)', N'Thiết kế cứng cáp, cấu hình mạnh mẽ, camera chất lượng cao', N'<p><span style="color: #333333; font-family: Arial, sans-serif; font-size: 14px; line-height: 26px;">OPPO A37 (hay c&ograve;n gọi l&agrave; OPPO Neo 9) l&agrave; sản phẩm kế thừa sự th&agrave;nh c&ocirc;ng của Neo 7, với khung kim loại, mặt lưng giả kim v&agrave; m&agrave;n h&igrave;nh cong 2,5D được bảo vệ bởi k&iacute;nh cường lực Gorilla Glass 4. Ở ph&acirc;n kh&uacute;c dưới 5 triệu đồng, đ&acirc;y l&agrave; một thiết kế kh&aacute; tốt khi so với những đối thủ trong tầm gi&aacute;.</span></p>', CAST(3690000 AS Decimal(18, 0)), 300, N'oppo-a37f-chi-tiet.jpg', N'oppo_a37_5.jpg', CAST(0x0000A6B000000000 AS DateTime), 4, N'<a href="https://www.baokim.vn/payment/product/version11?business=chuong72000%40gmail.com&id=&order_description=OPPO+A37+%28hay+c%C3%B2n+g%E1%BB%8Di+l%C3%A0+OPPO+Neo+9%29+l%C3%A0+s%E1%BA%A3n+ph%E1%BA%A9m+k%E1%BA%BF+th%E1%BB%ABa+s%E1%BB%B1+th%C3%A0nh+c%C3%B4ng+c%E1%BB%A7a+Neo+7%2C+v%E1%BB%9Bi+khung+kim+lo%E1%BA%A1i%2C+m%E1%BA%B7t+l%C6%B0ng+gi%E1%BA%A3+kim+v%C3%A0+m%C3%A0n+h%C3%ACnh+cong+2%2C5D+%C4%91%C6%B0%E1%BB%A3c+b%E1%BA%A3o+v%E1%BB%87+b%E1%BB%9Fi+k%C3%ADnh+c%C6%B0%E1%BB%9Dng+l%E1%BB%B1c+Gorilla+Glass+4.+%E1%BB%9E+ph%C3%A2n+kh%C3%BAc+d%C6%B0%E1%BB%9Bi+5+tri%E1%BB%87u+%C4%91%E1%BB%93ng%2C+%C4%91%C3%A2y+l%C3%A0+m%E1%BB%99t+thi%E1%BA%BFt+k%E1%BA%BF+kh%C3%A1+t%E1%BB%91t+khi+so+v%E1%BB%9Bi+nh%E1%BB%AFng+%C4%91%E1%BB%91i+th%E1%BB%A7+trong+t%E1%BA%A7m+gi%C3%A1.&product_name=OPPO+A37+%28Neo+9%29&product_price=3690000&product_quantity=1&total_amount=3690000&url_cancel=&url_detail=http%3A%2F%2Flocalhost%3A53488%2FIndex%2FDETAILS%2F19&url_success=http%3A%2F%2Flocalhost%3A53488%2FGioHang%2FXacNhanDonHang"><img src="http://www.baokim.vn/developers/uploads/baokim_btn/muahang-l.png" alt="Thanh toán an toàn với Bảo Kim !" border="0" title="Thanh toán trực tuyến an toàn dùng tài khoản Ngân hàng (VietcomBank, TechcomBank, Đông Á, VietinBank, Quân Đội, VIB, SHB,... và thẻ Quốc tế (Visa, Master Card...) qua Cổng thanh toán trực tuyến BảoKim.vn" ></a>')
SET IDENTITY_INSERT [dbo].[DIENTHOAI] OFF
/****** Object:  Table [dbo].[CT_HOADON_PK]    Script Date: 12/25/2016 16:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HOADON_PK](
	[MA_HD] [int] NOT NULL,
	[MA_PK] [int] NOT NULL,
	[SLMUA_PK] [int] NULL,
	[DGMUA_PK] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CT_HOADON_PK] PRIMARY KEY CLUSTERED 
(
	[MA_HD] ASC,
	[MA_PK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CT_HOADON_PK] ([MA_HD], [MA_PK], [SLMUA_PK], [DGMUA_PK]) VALUES (1, 1, 1, CAST(50000 AS Decimal(18, 0)))
INSERT [dbo].[CT_HOADON_PK] ([MA_HD], [MA_PK], [SLMUA_PK], [DGMUA_PK]) VALUES (1, 2, 1, CAST(68000 AS Decimal(18, 0)))
INSERT [dbo].[CT_HOADON_PK] ([MA_HD], [MA_PK], [SLMUA_PK], [DGMUA_PK]) VALUES (2, 1, 1, CAST(50000 AS Decimal(18, 0)))
INSERT [dbo].[CT_HOADON_PK] ([MA_HD], [MA_PK], [SLMUA_PK], [DGMUA_PK]) VALUES (2, 2, 2, CAST(136000 AS Decimal(18, 0)))
INSERT [dbo].[CT_HOADON_PK] ([MA_HD], [MA_PK], [SLMUA_PK], [DGMUA_PK]) VALUES (3, 1, 1, CAST(50000 AS Decimal(18, 0)))
INSERT [dbo].[CT_HOADON_PK] ([MA_HD], [MA_PK], [SLMUA_PK], [DGMUA_PK]) VALUES (3, 2, 2, CAST(136000 AS Decimal(18, 0)))
INSERT [dbo].[CT_HOADON_PK] ([MA_HD], [MA_PK], [SLMUA_PK], [DGMUA_PK]) VALUES (5, 1, 1, CAST(50000 AS Decimal(18, 0)))
INSERT [dbo].[CT_HOADON_PK] ([MA_HD], [MA_PK], [SLMUA_PK], [DGMUA_PK]) VALUES (5, 2, 1, CAST(68000 AS Decimal(18, 0)))
INSERT [dbo].[CT_HOADON_PK] ([MA_HD], [MA_PK], [SLMUA_PK], [DGMUA_PK]) VALUES (6, 1, 1, CAST(50000 AS Decimal(18, 0)))
INSERT [dbo].[CT_HOADON_PK] ([MA_HD], [MA_PK], [SLMUA_PK], [DGMUA_PK]) VALUES (6, 2, 2, CAST(136000 AS Decimal(18, 0)))
/****** Object:  StoredProcedure [dbo].[LAY_DS_LOAI_PK]    Script Date: 12/25/2016 16:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[LAY_DS_LOAI_PK]
as
select L.MA_LPK, TEN_LPK, COUNT(MA_PK) as SL
from LOAIPHUKIEN L left join PHUKIEN P
on L.MA_LPK = P.MA_LPK
group by L.MA_LPK, TEN_LPK
GO
/****** Object:  StoredProcedure [dbo].[LAY_DS_LOAI_DT]    Script Date: 12/25/2016 16:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[LAY_DS_LOAI_DT]
as
select L.MA_LDT, TEN_LDT, COUNT(TEN_DT) as SL
from DIENTHOAI D right join LOAIDIENTHOAI L
on D.MA_LDT = L.MA_LDT
where SOLUONGTON != 0 and NGAYNHAP_DT <= GETDATE()
group by L.MA_LDT, TEN_LDT
GO
/****** Object:  Table [dbo].[CT_PHUKIEN]    Script Date: 12/25/2016 16:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PHUKIEN](
	[MA_PK] [int] NOT NULL,
	[MA_DT] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_PK] ASC,
	[MA_DT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_HOADON]    Script Date: 12/25/2016 16:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HOADON](
	[MA_HD] [int] NOT NULL,
	[MA_DT] [int] NOT NULL,
	[SOLUONGMUA] [int] NULL,
	[DONGIAMUA] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_HD] ASC,
	[MA_DT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CT_HOADON] ([MA_HD], [MA_DT], [SOLUONGMUA], [DONGIAMUA]) VALUES (1, 4, 1, CAST(30000000 AS Decimal(18, 0)))
INSERT [dbo].[CT_HOADON] ([MA_HD], [MA_DT], [SOLUONGMUA], [DONGIAMUA]) VALUES (1, 10, 2, CAST(23980000 AS Decimal(18, 0)))
INSERT [dbo].[CT_HOADON] ([MA_HD], [MA_DT], [SOLUONGMUA], [DONGIAMUA]) VALUES (2, 1, 2, CAST(11980000 AS Decimal(18, 0)))
INSERT [dbo].[CT_HOADON] ([MA_HD], [MA_DT], [SOLUONGMUA], [DONGIAMUA]) VALUES (2, 10, 1, CAST(11990000 AS Decimal(18, 0)))
INSERT [dbo].[CT_HOADON] ([MA_HD], [MA_DT], [SOLUONGMUA], [DONGIAMUA]) VALUES (4, 5, 2, CAST(15980000 AS Decimal(18, 0)))
INSERT [dbo].[CT_HOADON] ([MA_HD], [MA_DT], [SOLUONGMUA], [DONGIAMUA]) VALUES (5, 2, 1, CAST(7990000 AS Decimal(18, 0)))
INSERT [dbo].[CT_HOADON] ([MA_HD], [MA_DT], [SOLUONGMUA], [DONGIAMUA]) VALUES (5, 10, 2, CAST(23980000 AS Decimal(18, 0)))
INSERT [dbo].[CT_HOADON] ([MA_HD], [MA_DT], [SOLUONGMUA], [DONGIAMUA]) VALUES (6, 2, 2, CAST(15980000 AS Decimal(18, 0)))
INSERT [dbo].[CT_HOADON] ([MA_HD], [MA_DT], [SOLUONGMUA], [DONGIAMUA]) VALUES (6, 10, 1, CAST(11990000 AS Decimal(18, 0)))
/****** Object:  ForeignKey [FK_Admin_PhanQuyen]    Script Date: 12/25/2016 16:25:17 ******/
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_PhanQuyen] FOREIGN KEY([MA_PQ])
REFERENCES [dbo].[PhanQuyen] ([MA_PQ])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_PhanQuyen]
GO
/****** Object:  ForeignKey [FK_PHUKIEN_LOAIPHUKIEN]    Script Date: 12/25/2016 16:25:17 ******/
ALTER TABLE [dbo].[PHUKIEN]  WITH CHECK ADD  CONSTRAINT [FK_PHUKIEN_LOAIPHUKIEN] FOREIGN KEY([MA_LPK])
REFERENCES [dbo].[LOAIPHUKIEN] ([MA_LPK])
GO
ALTER TABLE [dbo].[PHUKIEN] CHECK CONSTRAINT [FK_PHUKIEN_LOAIPHUKIEN]
GO
/****** Object:  ForeignKey [FK__HOADON__MA_KH__22AA2996]    Script Date: 12/25/2016 16:25:17 ******/
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([MA_KH])
REFERENCES [dbo].[KHACHHANG] ([MA_KH])
GO
/****** Object:  ForeignKey [FK__LOAIDIENT__MA_NC__21B6055D]    Script Date: 12/25/2016 16:25:17 ******/
ALTER TABLE [dbo].[LOAIDIENTHOAI]  WITH CHECK ADD FOREIGN KEY([MA_NCC])
REFERENCES [dbo].[NHACUNGCAP] ([MA_NCC])
GO
/****** Object:  ForeignKey [FK__DIENTHOAI__MA_LD__49C3F6B7]    Script Date: 12/25/2016 16:25:17 ******/
ALTER TABLE [dbo].[DIENTHOAI]  WITH CHECK ADD FOREIGN KEY([MA_LDT])
REFERENCES [dbo].[LOAIDIENTHOAI] ([MA_LDT])
GO
/****** Object:  ForeignKey [FK_CT_HOADON_PK_HOADON]    Script Date: 12/25/2016 16:25:17 ******/
ALTER TABLE [dbo].[CT_HOADON_PK]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADON_PK_HOADON] FOREIGN KEY([MA_HD])
REFERENCES [dbo].[HOADON] ([MA_HD])
GO
ALTER TABLE [dbo].[CT_HOADON_PK] CHECK CONSTRAINT [FK_CT_HOADON_PK_HOADON]
GO
/****** Object:  ForeignKey [FK_CT_HOADON_PK_PHUKIEN]    Script Date: 12/25/2016 16:25:17 ******/
ALTER TABLE [dbo].[CT_HOADON_PK]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADON_PK_PHUKIEN] FOREIGN KEY([MA_PK])
REFERENCES [dbo].[PHUKIEN] ([MA_PK])
GO
ALTER TABLE [dbo].[CT_HOADON_PK] CHECK CONSTRAINT [FK_CT_HOADON_PK_PHUKIEN]
GO
/****** Object:  ForeignKey [FK_CT_PHUKIEN_DIENTHOAI]    Script Date: 12/25/2016 16:25:19 ******/
ALTER TABLE [dbo].[CT_PHUKIEN]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHUKIEN_DIENTHOAI] FOREIGN KEY([MA_DT])
REFERENCES [dbo].[DIENTHOAI] ([MA_DT])
GO
ALTER TABLE [dbo].[CT_PHUKIEN] CHECK CONSTRAINT [FK_CT_PHUKIEN_DIENTHOAI]
GO
/****** Object:  ForeignKey [FK_CT_PHUKIEN_PHUKIEN]    Script Date: 12/25/2016 16:25:19 ******/
ALTER TABLE [dbo].[CT_PHUKIEN]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHUKIEN_PHUKIEN] FOREIGN KEY([MA_PK])
REFERENCES [dbo].[PHUKIEN] ([MA_PK])
GO
ALTER TABLE [dbo].[CT_PHUKIEN] CHECK CONSTRAINT [FK_CT_PHUKIEN_PHUKIEN]
GO
/****** Object:  ForeignKey [FK__CT_HOADON__MA_HD__276EDEB3]    Script Date: 12/25/2016 16:25:19 ******/
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD FOREIGN KEY([MA_HD])
REFERENCES [dbo].[HOADON] ([MA_HD])
GO
/****** Object:  ForeignKey [FK_CT_HOADON_DIENTHOAI]    Script Date: 12/25/2016 16:25:19 ******/
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADON_DIENTHOAI] FOREIGN KEY([MA_DT])
REFERENCES [dbo].[DIENTHOAI] ([MA_DT])
GO
ALTER TABLE [dbo].[CT_HOADON] CHECK CONSTRAINT [FK_CT_HOADON_DIENTHOAI]
GO
