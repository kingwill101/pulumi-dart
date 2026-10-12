// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsFileSystemDiskIopsConfiguration {
  /// Total number of SSD IOPS provisioned for the file system.
  final pulumi.Input<int> iops;
  /// Mode for the number of IOPS for the file system.
  final pulumi.Input<String> mode;

  /// Creates a new [GetWindowsFileSystemDiskIopsConfiguration].
  /// [iops] Total number of SSD IOPS provisioned for the file system.
  /// [mode] Mode for the number of IOPS for the file system.
  const GetWindowsFileSystemDiskIopsConfiguration({
    required this.iops,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iops': iops,
      'mode': mode,
    };
  }

  factory GetWindowsFileSystemDiskIopsConfiguration.fromMap(Map<String, dynamic> map) {
    return GetWindowsFileSystemDiskIopsConfiguration(
      iops: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['iops'])),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
