// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterV2ManagerManagerNodeSystemDisk {
  /// Manage the system disk configuration of the node. Value range:
  /// - cloud_efficiency: The Ultra cloud disk.
  /// - cloud_ssd:SSD cloud disk.
  /// - cloud_essd:ESSD cloud disk.
  /// - cloud: ordinary cloud disk.
  final pulumi.Input<String>? category;

  /// When creating an ESSD cloud disk to use as a system disk, set the performance level of the cloud disk. Value range:
  /// - PL0: maximum random read/write IOPS 10000 for a single disk.
  /// - PL1 (default): Maximum random read/write IOPS 50000 for a single disk.
  /// - PL2: maximum random read/write IOPS 100000 for a single disk.
  /// - PL3: maximum random read/write IOPS 1 million for a single disk.
  final pulumi.Input<String>? level;

  /// The system disk size of the management node. Unit: GiB. Value range:
  /// - Ordinary cloud tray: 20~500.
  /// - ESSD cloud disk:
  /// - PL0:1~2048.
  /// - PL1:20~2048.
  /// - PL2:461~2048.
  /// - PL3:1261~2048.
  /// - Other cloud disk types: 20~2048.
  final pulumi.Input<int>? size;

  /// Creates a new [ClusterV2ManagerManagerNodeSystemDisk].
  /// [category] Manage the system disk configuration of the node. Value range:
  /// [level] When creating an ESSD cloud disk to use as a system disk, set the performance level of the cloud disk. Value range:
  /// [size] The system disk size of the management node. Unit: GiB. Value range:
  ClusterV2ManagerManagerNodeSystemDisk({this.category, this.level, this.size});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'level': ?level,
      'size': ?size,
    };
  }

  factory ClusterV2ManagerManagerNodeSystemDisk.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterV2ManagerManagerNodeSystemDisk(
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      level: (() {
        final guardedValue = map['level'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      size: (() {
        final guardedValue = map['size'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
