// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeGroupDataDisk {
  /// The type of the data disk. Valid values: `cloud_efficiency`, `cloud_essd`, `cloud`, `local_hdd_pro`, `local_disk`, `local_ssd_pro`. **NOTE:** Since version v1.230.0, the categories `cloud`, `local_hdd_pro`, `local_disk`, `local_ssd_pro` are available.
  final pulumi.Input<String> category;
  /// The count of a data disk.
  final pulumi.Input<int>? count;
  /// Worker node data disk performance level, when `category` values `cloud_essd`, the optional values are `PL0`, `PL1`, `PL2` or `PL3`, but the specific performance level is related to the disk capacity.
  final pulumi.Input<String>? performanceLevel;
  /// The size of a data disk, at least 40. Unit: GiB.
  final pulumi.Input<int> size;

  /// Creates a new [ClusterNodeGroupDataDisk].
  /// [category] The type of the data disk. Valid values: `cloud_efficiency`, `cloud_essd`, `cloud`, `local_hdd_pro`, `local_disk`, `local_ssd_pro`. **NOTE:** Since version v1.230.0, the categories `cloud`, `local_hdd_pro`, `local_disk`, `local_ssd_pro` are available.
  /// [count] The count of a data disk.
  /// [performanceLevel] Worker node data disk performance level, when `category` values `cloud_essd`, the optional values are `PL0`, `PL1`, `PL2` or `PL3`, but the specific performance level is related to the disk capacity.
  /// [size] The size of a data disk, at least 40. Unit: GiB.
  ClusterNodeGroupDataDisk({
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

  factory ClusterNodeGroupDataDisk.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupDataDisk(
      category: (map['category'] as String).input(),
      count: map['count'] == null ? null : (map['count']! as int).input(),
      performanceLevel: map['performanceLevel'] == null ? null : (map['performanceLevel']! as String).input(),
      size: (map['size'] as int).input(),
    );
  }
}

