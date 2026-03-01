// ignore_for_file: unused_element, unnecessary_cast


class HyperNodeDataDisk {
  /// Whether to enable Burst (performance Burst).
  final bool? burstingEnabled;
  /// The disk type. Value range:
  /// - cloud_essd:ESSD cloud disk.
  final String? category;
  /// Whether the data disk is unsubscribed and deleted with the node.
  final bool? deleteWithNode;
  /// When creating an ESSD cloud disk to use as a system disk, set the performance level of the cloud disk. Value range:
  /// - PL0: maximum random read/write IOPS 10000 for a single disk.
  /// - PL1: maximum random read/write IOPS 50000 for a single disk.
  final String? performanceLevel;
  /// ESSD AutoPL cloud disk (single disk) pre-configuration performance of IOPS.
  final int? provisionedIops;
  /// The size of the disk. The unit is GiB.
  final int? size;

  /// Creates a new [HyperNodeDataDisk].
  /// [burstingEnabled] Whether to enable Burst (performance Burst).
  /// [category] The disk type. Value range:
  /// [deleteWithNode] Whether the data disk is unsubscribed and deleted with the node.
  /// [performanceLevel] When creating an ESSD cloud disk to use as a system disk, set the performance level of the cloud disk. Value range:
  /// [provisionedIops] ESSD AutoPL cloud disk (single disk) pre-configuration performance of IOPS.
  /// [size] The size of the disk. The unit is GiB.
  HyperNodeDataDisk({
    this.burstingEnabled,
    this.category,
    this.deleteWithNode,
    this.performanceLevel,
    this.provisionedIops,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'burstingEnabled': ?burstingEnabled,
      'category': ?category,
      'deleteWithNode': ?deleteWithNode,
      'performanceLevel': ?performanceLevel,
      'provisionedIops': ?provisionedIops,
      'size': ?size,
    };
  }

  factory HyperNodeDataDisk.fromMap(Map<String, dynamic> map) {
    return HyperNodeDataDisk(
      burstingEnabled: map['burstingEnabled'] == null ? null : map['burstingEnabled'] as bool,
      category: map['category'] == null ? null : map['category'] as String,
      deleteWithNode: map['deleteWithNode'] == null ? null : map['deleteWithNode'] as bool,
      performanceLevel: map['performanceLevel'] == null ? null : map['performanceLevel'] as String,
      provisionedIops: map['provisionedIops'] == null ? null : map['provisionedIops'] as int,
      size: map['size'] == null ? null : map['size'] as int,
    );
  }
}

