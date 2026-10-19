// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOntapFileSystemDiskIopsConfiguration {
  /// Total number of SSD IOPS provisioned for the file system.
  final pulumi.Input<int> iops;
  /// Whether the file system is using the `AUTOMATIC` setting of SSD IOPS of 3 IOPS per GB of storage capacity, or if it using a `USER_PROVISIONED` value.
  final pulumi.Input<String> mode;

  /// Creates a new [GetOntapFileSystemDiskIopsConfiguration].
  /// [iops] Total number of SSD IOPS provisioned for the file system.
  /// [mode] Whether the file system is using the `AUTOMATIC` setting of SSD IOPS of 3 IOPS per GB of storage capacity, or if it using a `USER_PROVISIONED` value.
  const GetOntapFileSystemDiskIopsConfiguration({
    required this.iops,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iops': iops,
      'mode': mode,
    };
  }

  factory GetOntapFileSystemDiskIopsConfiguration.fromMap(Map<String, dynamic> map) {
    return GetOntapFileSystemDiskIopsConfiguration(
      iops: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['iops'])),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
