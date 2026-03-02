// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsFileSystemDiskIopsConfiguration {
  /// The total number of SSD IOPS provisioned for the file system.
  final pulumi.Input<int>? iops;
  /// Specifies whether the number of IOPS for the file system is using the system. Valid values are `AUTOMATIC` and `USER_PROVISIONED`. Default value is `AUTOMATIC`.
  final pulumi.Input<String>? mode;

  /// Creates a new [WindowsFileSystemDiskIopsConfiguration].
  /// [iops] The total number of SSD IOPS provisioned for the file system.
  /// [mode] Specifies whether the number of IOPS for the file system is using the system. Valid values are `AUTOMATIC` and `USER_PROVISIONED`. Default value is `AUTOMATIC`.
  WindowsFileSystemDiskIopsConfiguration({
    this.iops,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iops': ?iops,
      'mode': ?mode,
    };
  }

  factory WindowsFileSystemDiskIopsConfiguration.fromMap(Map<String, dynamic> map) {
    return WindowsFileSystemDiskIopsConfiguration(
      iops: map['iops'] == null ? null : ((map['iops'] as int).input()).input(),
      mode: map['mode'] == null ? null : ((map['mode'] as String).input()).input(),
    );
  }
}

