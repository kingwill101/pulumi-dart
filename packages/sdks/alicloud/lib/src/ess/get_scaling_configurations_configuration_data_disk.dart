// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetScalingConfigurationsConfigurationDataDisk {
  /// Category of data disk.
  final pulumi.Input<String> category;
  /// Delete_with_instance attribute of data disk.
  final pulumi.Input<bool> deleteWithInstance;
  /// Device attribute of data disk.
  final pulumi.Input<String> device;
  /// The performance level of the ESSD used as data disk.
  final pulumi.Input<String> performanceLevel;
  /// Size of data disk.
  final pulumi.Input<int> size;
  /// Size of data disk.
  final pulumi.Input<String> snapshotId;

  /// Creates a new [GetScalingConfigurationsConfigurationDataDisk].
  /// [category] Category of data disk.
  /// [deleteWithInstance] Delete_with_instance attribute of data disk.
  /// [device] Device attribute of data disk.
  /// [performanceLevel] The performance level of the ESSD used as data disk.
  /// [size] Size of data disk.
  /// [snapshotId] Size of data disk.
  GetScalingConfigurationsConfigurationDataDisk({
    required this.category,
    required this.deleteWithInstance,
    required this.device,
    required this.performanceLevel,
    required this.size,
    required this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'deleteWithInstance': deleteWithInstance,
      'device': device,
      'performanceLevel': performanceLevel,
      'size': size,
      'snapshotId': snapshotId,
    };
  }

  factory GetScalingConfigurationsConfigurationDataDisk.fromMap(Map<String, dynamic> map) {
    return GetScalingConfigurationsConfigurationDataDisk(
      category: (map['category'] as String).input(),
      deleteWithInstance: (map['deleteWithInstance'] as bool).input(),
      device: (map['device'] as String).input(),
      performanceLevel: (map['performanceLevel'] as String).input(),
      size: (map['size'] as int).input(),
      snapshotId: (map['snapshotId'] as String).input(),
    );
  }
}

