// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeGroupSystemDisk {
  /// The type of the data disk. Valid values: `cloud_efficiency`, `cloud_essd`, `cloud`, `local_hdd_pro`, `local_disk`, `local_ssd_pro`. **NOTE:** Since version v1.230.0, the categories `cloud`, `local_hdd_pro`, `local_disk`, `local_ssd_pro` are available.
  final pulumi.Input<String> category;

  /// The count of a data disk.
  final pulumi.Input<int>? count;

  /// Worker node data disk performance level, when `category` values `cloud_essd`, the optional values are `PL0`, `PL1`, `PL2` or `PL3`, but the specific performance level is related to the disk capacity.
  final pulumi.Input<String>? performanceLevel;

  /// The size of a data disk, at least 40. Unit: GiB.
  final pulumi.Input<int> size;

  /// Creates a new [ClusterNodeGroupSystemDisk].
  /// [category] The type of the data disk. Valid values: `cloud_efficiency`, `cloud_essd`, `cloud`, `local_hdd_pro`, `local_disk`, `local_ssd_pro`. **NOTE:** Since version v1.230.0, the categories `cloud`, `local_hdd_pro`, `local_disk`, `local_ssd_pro` are available.
  /// [count] The count of a data disk.
  /// [performanceLevel] Worker node data disk performance level, when `category` values `cloud_essd`, the optional values are `PL0`, `PL1`, `PL2` or `PL3`, but the specific performance level is related to the disk capacity.
  /// [size] The size of a data disk, at least 40. Unit: GiB.
  ClusterNodeGroupSystemDisk({
    required this.category,
    this.count,
    this.performanceLevel,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'count': ?count,
      'performanceLevel': ?performanceLevel,
      'size': size,
    };
  }

  factory ClusterNodeGroupSystemDisk.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupSystemDisk(
      category: pulumi.Input.fromValue(map['category'] as String),
      count: (() {
        final guardedValue = map['count'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      performanceLevel: (() {
        final guardedValue = map['performanceLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      size: pulumi.Input.fromValue(map['size'] as int),
    );
  }
}
