// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsFileSystemDiskIopsConfiguration {
  final pulumi.Input<int> iops;
  final pulumi.Input<String> mode;

  /// Creates a new [GetWindowsFileSystemDiskIopsConfiguration].
  /// [iops] Required.
  /// [mode] Required.
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
