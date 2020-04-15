-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2020 at 05:46 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cleaning_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `bekerja`
--

CREATE TABLE `bekerja` (
  `Pegawai` int(20) NOT NULL,
  `Jadwal` varchar(20) NOT NULL,
  `Ref` varchar(100) NOT NULL,
  `Nama_Gedung` varchar(25) NOT NULL,
  `No_Lantai` varchar(2) NOT NULL,
  `Nama_Ruang` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bekerja`
--

INSERT INTO `bekerja` (`Pegawai`, `Jadwal`, `Ref`, `Nama_Gedung`, `No_Lantai`, `Nama_Ruang`) VALUES
(696912029, 'Mengepel', 'Itera0001', 'A', '1', '01'),
(832754255, 'Menyapu', 'Itera0002', 'A', '2', '01'),
(837292942, 'Merapihkan Kelas', 'Itera0003', 'E', '1', '01'),
(123919289, 'Mengepel', 'Itera0004', 'D', '1', '01'),
(123123123, 'Merapihkan Kelas', 'Itera0005', 'C', '1', '01');

-- --------------------------------------------------------

--
-- Table structure for table `gudang`
--

CREATE TABLE `gudang` (
  `No_Gudang` int(5) NOT NULL,
  `Nama_Gedung` varchar(25) NOT NULL,
  `No_Lantai` varchar(2) NOT NULL,
  `Kode_Alat` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `Pekerjaan` varchar(20) NOT NULL,
  `Time` time NOT NULL,
  `Hari` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`Pekerjaan`, `Time`, `Hari`) VALUES
('Mengepel', '06:00:00', 'JUMAT'),
('Mengepel', '06:00:00', 'KAMIS'),
('Mengepel', '06:00:00', 'RABU'),
('Mengepel', '06:00:00', 'SABTU'),
('Mengepel', '06:00:00', 'SELASA'),
('Mengepel', '06:00:00', 'SENIN'),
('Mengepel', '09:00:00', 'JUMAT'),
('Mengepel', '09:00:00', 'KAMIS'),
('Mengepel', '09:00:00', 'RABU'),
('Mengepel', '09:00:00', 'SABTU'),
('Mengepel', '09:00:00', 'SELASA'),
('Mengepel', '09:00:00', 'SENIN'),
('Mengepel', '16:00:00', 'JUMAT'),
('Mengepel', '16:00:00', 'KAMIS'),
('Mengepel', '16:00:00', 'RABU'),
('Mengepel', '16:00:00', 'SABTU'),
('Mengepel', '16:00:00', 'SELASA'),
('Mengepel', '16:00:00', 'SENIN'),
('Menyapu', '06:00:00', 'JUMAT'),
('Menyapu', '06:00:00', 'KAMIS'),
('Menyapu', '06:00:00', 'RABU'),
('Menyapu', '06:00:00', 'SABTU'),
('Menyapu', '06:00:00', 'SELASA'),
('Menyapu', '06:00:00', 'SENIN'),
('Menyapu', '09:00:00', 'JUMAT'),
('Menyapu', '09:00:00', 'KAMIS'),
('Menyapu', '09:00:00', 'RABU'),
('Menyapu', '09:00:00', 'SABTU'),
('Menyapu', '09:00:00', 'SELASA'),
('Menyapu', '16:00:00', 'JUMAT'),
('Menyapu', '16:00:00', 'KAMIS'),
('Menyapu', '16:00:00', 'RABU'),
('Menyapu', '16:00:00', 'SABTU'),
('Menyapu', '16:00:00', 'SELASA'),
('Menyapu', '16:00:00', 'SENIN'),
('Merapihkan Kelas', '06:00:00', 'JUMAT'),
('Merapihkan Kelas', '06:00:00', 'KAMIS'),
('Merapihkan Kelas', '06:00:00', 'RABU'),
('Merapihkan Kelas', '06:00:00', 'SABTU'),
('Merapihkan Kelas', '06:00:00', 'SELASA'),
('Merapihkan Kelas', '06:00:00', 'SENIN'),
('Merapihkan Kelas', '09:00:00', 'JUMAT'),
('Merapihkan Kelas', '09:00:00', 'KAMIS'),
('Merapihkan Kelas', '09:00:00', 'RABU'),
('Merapihkan Kelas', '09:00:00', 'SABTU'),
('Merapihkan Kelas', '09:00:00', 'SELASA'),
('Merapihkan Kelas', '09:00:00', 'SENIN'),
('Merapihkan Kelas', '16:00:00', 'JUMAT'),
('Merapihkan Kelas', '16:00:00', 'KAMIS'),
('Merapihkan Kelas', '16:00:00', 'RABU'),
('Merapihkan Kelas', '16:00:00', 'SABTU'),
('Merapihkan Kelas', '16:00:00', 'SELASA'),
('Merapihkan Kelas', '16:00:00', 'SENIN');

-- --------------------------------------------------------

--
-- Table structure for table `keluhan`
--

CREATE TABLE `keluhan` (
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Alasan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keluhan`
--

INSERT INTO `keluhan` (`Date`, `Alasan`) VALUES
('2019-05-17 03:11:21', 'bau'),
('2019-05-17 03:13:00', '123'),
('2019-05-17 04:18:22', 'bau');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `Nama_Gedung` varchar(25) NOT NULL,
  `No_Lantai` varchar(2) NOT NULL,
  `Nama_Ruang` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`Nama_Gedung`, `No_Lantai`, `Nama_Ruang`) VALUES
('A', '1', '01'),
('A', '1', '02'),
('A', '1', '03'),
('A', '1', '07'),
('A', '1', '08'),
('A', '1', '09'),
('A', '1', '10'),
('A', '1', '31'),
('A', '1', 'PRO'),
('A', '1', 'PRODI'),
('A', '1', 'SLSR'),
('A', '1', 'WC'),
('A', '2', '01'),
('A', '2', '02'),
('A', '2', 'PRODI'),
('A', '2', 'SLSR'),
('A', '2', 'WC'),
('A', '3', 'PRODI'),
('A', '3', 'PRPS'),
('A', '3', 'SLSR'),
('A', '4', 'RFTOP'),
('B', '1', '01'),
('B', '1', '02'),
('B', '1', 'PRODI'),
('B', '1', 'SLSR'),
('B', '1', 'WC'),
('B', '2', '01'),
('B', '2', '02'),
('B', '2', 'PRODI'),
('B', '2', 'PRPS'),
('B', '2', 'SLSR'),
('B', '2', 'WC'),
('B', '3', '01'),
('B', '3', '02'),
('B', '3', 'PRODI'),
('B', '3', 'SLSR'),
('B', '3', 'WC'),
('B', '4', 'RFTOP'),
('C', '1', '01'),
('C', '1', '02'),
('C', '1', '03'),
('C', '1', 'LAB'),
('C', '1', 'PRODI'),
('C', '1', 'SLSR'),
('C', '1', 'WC'),
('C', '2', '01'),
('C', '2', '02'),
('C', '2', '03'),
('C', '2', 'LAB'),
('C', '2', 'PRODI'),
('C', '2', 'SLSR'),
('C', '2', 'WC'),
('C', '3', 'AULA'),
('C', '3', 'LAB'),
('C', '3', 'PRODI'),
('C', '3', 'WC'),
('C', '4', 'RFTOP'),
('D', '1', '01'),
('D', '1', '02'),
('D', '1', '03'),
('D', '1', 'PRODI'),
('D', '1', 'SLSR'),
('D', '1', 'WC'),
('D', '2', '01'),
('D', '2', '02'),
('D', '2', '03'),
('D', '2', 'PRODI'),
('D', '2', 'SLSR'),
('D', '2', 'WC'),
('D', '3', '01'),
('D', '3', '02'),
('D', '3', '03'),
('D', '3', 'PRODI'),
('D', '3', 'SLSR'),
('D', '3', 'WC'),
('D', '4', 'RFTOP'),
('E', '0', '01'),
('E', '0', '02'),
('E', '0', '03'),
('E', '0', 'SLSR'),
('E', '0', 'WC'),
('E', '1', '01'),
('E', '1', '02'),
('E', '1', 'SLSR'),
('E', '1', 'WC'),
('E', '2', '01'),
('E', '2', 'SLSR'),
('E', '2', 'WC'),
('E', '3', '01'),
('E', '3', '02'),
('E', '3', 'SLSR'),
('E', '3', 'WC'),
('E', '4', 'RFTOP'),
('GKU', '1', 'ALL'),
('GKU', '2', 'ALL'),
('GKU', '3', 'ALL'),
('LABTEK', '1', 'LAB'),
('LABTEK', '2', 'LAB'),
('LABTEK', '3', 'LAB');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `NIK` int(20) NOT NULL,
  `Nama_Pegawai` varchar(50) NOT NULL,
  `Password` varchar(150) NOT NULL,
  `Alamat_Pegawai` varchar(350) NOT NULL,
  `No_Telp` int(15) NOT NULL,
  `Jenis_Kelamin` enum('L','P') NOT NULL,
  `Usia` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`NIK`, `Nama_Pegawai`, `Password`, `Alamat_Pegawai`, `No_Telp`, `Jenis_Kelamin`, `Usia`) VALUES
(14117130, 'Coriza Caesarchakti', '14117130', 'Rumah', 821868, 'L', 20),
(123123123, 'Yapi', '123123123', 'JL. Sukajadi', 811928123, 'P', 24),
(123919289, 'Robby', '123919289', 'Jl. Sayur Kol', 891283292, 'P', 35),
(696912029, 'A. Budrahman', '696912029', 'Jl. Arab Butek', 89201292, 'P', 25),
(832754255, 'Egi Rachma', '832754255', 'Jl. Antar Sari', 723716282, 'P', 24),
(837292942, 'M. Rizki Ramzxx', '837292942', 'Jl. Kemiling Lingkaran', 76462826, 'P', 24);

-- --------------------------------------------------------

--
-- Table structure for table `peralatan`
--

CREATE TABLE `peralatan` (
  `Nama_Alat` varchar(25) NOT NULL,
  `Kode_Alat` varchar(5) NOT NULL,
  `Jumlah_Alat` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peralatan`
--

INSERT INTO `peralatan` (`Nama_Alat`, `Kode_Alat`, `Jumlah_Alat`) VALUES
('Busa', 'B001', 100),
('Kemoceng', 'K001', 5),
('Kamper', 'K002', 500),
('Lap', 'L001', 200),
('Pel', 'P001', 30),
('Pengharum', 'P002', 1000),
('Sapu', 'S001', 50),
('Sikat', 'S002', 10),
('Sabun', 'S003', 600);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bekerja`
--
ALTER TABLE `bekerja`
  ADD PRIMARY KEY (`Ref`),
  ADD KEY `Pegawai` (`Pegawai`,`Jadwal`),
  ADD KEY `Jadwal` (`Jadwal`),
  ADD KEY `No_Lantai` (`No_Lantai`,`Nama_Ruang`),
  ADD KEY `Nama_Gedung` (`Nama_Gedung`);

--
-- Indexes for table `gudang`
--
ALTER TABLE `gudang`
  ADD PRIMARY KEY (`No_Gudang`),
  ADD KEY `Nama_Gedung` (`Nama_Gedung`),
  ADD KEY `Kode_Alat` (`Kode_Alat`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`Pekerjaan`,`Time`,`Hari`);

--
-- Indexes for table `keluhan`
--
ALTER TABLE `keluhan`
  ADD PRIMARY KEY (`Date`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`Nama_Gedung`,`No_Lantai`,`Nama_Ruang`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `peralatan`
--
ALTER TABLE `peralatan`
  ADD PRIMARY KEY (`Kode_Alat`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bekerja`
--
ALTER TABLE `bekerja`
  ADD CONSTRAINT `bekerja_ibfk_1` FOREIGN KEY (`Pegawai`) REFERENCES `pegawai` (`NIK`);

--
-- Constraints for table `gudang`
--
ALTER TABLE `gudang`
  ADD CONSTRAINT `gudang_ibfk_2` FOREIGN KEY (`Kode_Alat`) REFERENCES `peralatan` (`Kode_Alat`),
  ADD CONSTRAINT `gudang_ibfk_3` FOREIGN KEY (`Nama_Gedung`) REFERENCES `lokasi` (`Nama_Gedung`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
