-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2017 at 02:29 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_table`
--

CREATE TABLE `login_table` (
  `sno` int(11) NOT NULL,
  `_id` varchar(255) NOT NULL,
  `_password` varchar(255) NOT NULL,
  `_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_details`
--

CREATE TABLE `staff_details` (
  `sno` int(11) NOT NULL,
  `_id` varchar(255) NOT NULL,
  `_name` varchar(255) NOT NULL,
  `_address` mediumtext NOT NULL,
  `_mobile` mediumint(9) NOT NULL,
  `_dob` varchar(255) NOT NULL,
  `_doj` varchar(255) NOT NULL,
  `_picture` longblob NOT NULL,
  `_department` varchar(255) NOT NULL,
  `_role` varchar(255) NOT NULL,
  `_office` mediumtext NOT NULL,
  `_speciality` mediumint(9) NOT NULL,
  `_custom1` longtext NOT NULL,
  `_custom2` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_leave`
--

CREATE TABLE `student_leave` (
  `sno` int(11) NOT NULL,
  `_id` varchar(255) NOT NULL,
  `_start_date` varchar(255) NOT NULL,
  `_number_of_days` int(11) NOT NULL,
  `_comments` longtext NOT NULL,
  `_approver_name` varchar(255) NOT NULL,
  `_approver_id` varchar(255) NOT NULL,
  `_approved_on` varchar(255) NOT NULL,
  `_custom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_table`
--
ALTER TABLE `login_table`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `_id` (`_id`);

--
-- Indexes for table `staff_details`
--
ALTER TABLE `staff_details`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `_id` (`_id`);

--
-- Indexes for table `student_leave`
--
ALTER TABLE `student_leave`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_table`
--
ALTER TABLE `login_table`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `staff_details`
--
ALTER TABLE `staff_details`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_leave`
--
ALTER TABLE `student_leave`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
