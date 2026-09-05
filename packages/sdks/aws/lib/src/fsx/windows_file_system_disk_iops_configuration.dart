// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsFileSystemDiskIopsConfiguration {
  /// Total number of SSD IOPS provisioned for the file system.
  final pulumi.Input<int?>? iops;
  /// Mode for the number of IOPS for the file system. Valid values are `AUTOMATIC` and `USER_PROVISIONED`. Default value is `AUTOMATIC`.
  final pulumi.Input<String?>? mode;

  /// Creates a new [WindowsFileSystemDiskIopsConfiguration].
  /// [iops] Total number of SSD IOPS provisioned for the file system.
  /// [mode] Mode for the number of IOPS for the file system. Valid values are `AUTOMATIC` and `USER_PROVISIONED`. Default value is `AUTOMATIC`.
  const WindowsFileSystemDiskIopsConfiguration({
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
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
