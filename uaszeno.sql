-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2020 pada 12.20
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uaszeno`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataproduks`
--

CREATE TABLE `dataproduks` (
  `kd_produk` varchar(10) NOT NULL,
  `kd_jenis` varchar(10) NOT NULL,
  `seri_produk` varchar(20) NOT NULL,
  `merk_produk` varchar(20) NOT NULL,
  `kondisi` varchar(20) NOT NULL,
  `hpp` varchar(9) NOT NULL,
  `harga_jual` varchar(9) NOT NULL,
  `jml_produk` varchar(5) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dataproduks`
--

INSERT INTO `dataproduks` (`kd_produk`, `kd_jenis`, `seri_produk`, `merk_produk`, `kondisi`, `hpp`, `harga_jual`, `jml_produk`, `createdAt`, `updatedAt`) VALUES
('kp001', 'kj001', 'kj001', 'Polytron', 'rusak', '2000', '2500', '5', '2020-01-03 08:51:45', '2020-01-03 11:08:27'),
('KP002', 'KJ002', 'KJ002', 'Lenovo', 'Baru', '2000', '3000', '4', '2020-01-03 11:09:18', '2020-01-03 11:09:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailtransaksis`
--

CREATE TABLE `detailtransaksis` (
  `kd_tran_penjualan` varchar(5) NOT NULL,
  `kd_produk` varchar(10) NOT NULL,
  `jumlah` int(9) NOT NULL,
  `harga` int(9) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenisproduks`
--

CREATE TABLE `jenisproduks` (
  `kd_jenis` varchar(5) NOT NULL,
  `jenis_produk` varchar(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenisproduks`
--

INSERT INTO `jenisproduks` (`kd_jenis`, `jenis_produk`, `createdAt`, `updatedAt`) VALUES
('ks', 'hhjnj', '2020-01-03 07:40:58', '2020-01-03 07:40:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesans`
--

CREATE TABLE `pemesans` (
  `id_pemesan` varchar(13) NOT NULL,
  `nama_pemesan` varchar(40) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `registers`
--

CREATE TABLE `registers` (
  `id_user` varchar(5) NOT NULL,
  `nama_pegawai` varchar(40) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(10) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--

CREATE TABLE `transaksis` (
  `kd_tran_penjualan` varchar(5) NOT NULL,
  `id_pemesan` varchar(13) NOT NULL,
  `id_user` varchar(5) NOT NULL,
  `tgl` date NOT NULL,
  `potongan` int(9) NOT NULL,
  `total_harga` int(9) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dataproduks`
--
ALTER TABLE `dataproduks`
  ADD PRIMARY KEY (`kd_produk`);

--
-- Indeks untuk tabel `jenisproduks`
--
ALTER TABLE `jenisproduks`
  ADD PRIMARY KEY (`kd_jenis`);

--
-- Indeks untuk tabel `pemesans`
--
ALTER TABLE `pemesans`
  ADD PRIMARY KEY (`id_pemesan`);

--
-- Indeks untuk tabel `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`kd_tran_penjualan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
