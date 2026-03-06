// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperNodeDataDisk {
  /// Whether to enable Burst (performance Burst).
  final pulumi.Input<bool>? burstingEnabled;
  /// The disk type. Value range:
  /// - cloud_essd:ESSD cloud disk.
  final pulumi.Input<String>? category;
  /// Whether the data disk is unsubscribed and deleted with the node.
  final pulumi.Input<bool>? deleteWithNode;
  /// When creating an ESSD cloud disk to use as a system disk, set the performance level of the cloud disk. Value range:
  /// - PL0: maximum random read/write IOPS 10000 for a single disk.
  /// - PL1: maximum random read/write IOPS 50000 for a single disk.
  final pulumi.Input<String>? performanceLevel;
  /// ESSD AutoPL cloud disk (single disk) pre-configuration performance of IOPS.
  final pulumi.Input<int>? provisionedIops;
  /// The size of the disk. The unit is GiB.
  final pulumi.Input<int>? size;

  /// Creates a new [HyperNodeDataDisk].
  /// [burstingEnabled] Whether to enable Burst (performance Burst).
  /// [category] The disk type. Value range:
  /// [deleteWithNode] Whether the data disk is unsubscribed and deleted with the node.
  /// [performanceLevel] When creating an ESSD cloud disk to use as a system disk, set the performance level of the cloud disk. Value range:
  /// [provisionedIops] ESSD AutoPL cloud disk (single disk) pre-configuration performance of IOPS.
  /// [size] The size of the disk. The unit is GiB.
  const HyperNodeDataDisk({
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
      burstingEnabled: (() { final guardedValue = map['burstingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteWithNode: (() { final guardedValue = map['deleteWithNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      performanceLevel: (() { final guardedValue = map['performanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedIops: (() { final guardedValue = map['provisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

