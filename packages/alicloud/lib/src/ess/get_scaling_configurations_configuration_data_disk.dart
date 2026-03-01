// ignore_for_file: unused_element, unnecessary_cast


class GetScalingConfigurationsConfigurationDataDisk {
  /// Category of data disk.
  final String category;
  /// Delete_with_instance attribute of data disk.
  final bool deleteWithInstance;
  /// Device attribute of data disk.
  final String device;
  /// The performance level of the ESSD used as data disk.
  final String performanceLevel;
  /// Size of data disk.
  final int size;
  /// Size of data disk.
  final String snapshotId;

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
      category: map['category'] as String,
      deleteWithInstance: map['deleteWithInstance'] as bool,
      device: map['device'] as String,
      performanceLevel: map['performanceLevel'] as String,
      size: map['size'] as int,
      snapshotId: map['snapshotId'] as String,
    );
  }
}

