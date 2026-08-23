// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OpenZfsFileSystemDiskIopsConfiguration {
  /// Total number of SSD IOPS provisioned for the file system.
  final pulumi.Input<int>? iops;
  /// How the number of IOPS for the file system is set. Valid values are `AUTOMATIC` and `USER_PROVISIONED`. Default value is `AUTOMATIC`.
  final pulumi.Input<String>? mode;

  /// Creates a new [OpenZfsFileSystemDiskIopsConfiguration].
  /// [iops] Total number of SSD IOPS provisioned for the file system.
  /// [mode] How the number of IOPS for the file system is set. Valid values are `AUTOMATIC` and `USER_PROVISIONED`. Default value is `AUTOMATIC`.
  const OpenZfsFileSystemDiskIopsConfiguration({
    this.iops,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iops': ?iops,
      'mode': ?mode,
    };
  }

  factory OpenZfsFileSystemDiskIopsConfiguration.fromMap(Map<String, dynamic> map) {
    return OpenZfsFileSystemDiskIopsConfiguration(
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
