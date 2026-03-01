// ignore_for_file: unused_element, unnecessary_cast


class GetEcsLaunchTemplatesTemplateDataDisk {
  /// The category of the system disk.
  final String category;
  /// Specifies whether to release the system disk when the instance is released.
  final bool deleteWithInstance;
  /// System disk description.
  final String description;
  /// Encrypted the data in this disk.
  final bool encrypted;
  /// System disk name.
  final String name;
  /// The performance level of the ESSD used as the system disk.
  final String performanceLevel;
  /// Size of the system disk, measured in GB.
  final int size;
  /// The snapshot ID used to initialize the data disk. If the size specified by snapshot is greater that the size of the disk, use the size specified by snapshot as the size of the data disk.
  final String snapshotId;

  /// Creates a new [GetEcsLaunchTemplatesTemplateDataDisk].
  /// [category] The category of the system disk.
  /// [deleteWithInstance] Specifies whether to release the system disk when the instance is released.
  /// [description] System disk description.
  /// [encrypted] Encrypted the data in this disk.
  /// [name] System disk name.
  /// [performanceLevel] The performance level of the ESSD used as the system disk.
  /// [size] Size of the system disk, measured in GB.
  /// [snapshotId] The snapshot ID used to initialize the data disk. If the size specified by snapshot is greater that the size of the disk, use the size specified by snapshot as the size of the data disk.
  GetEcsLaunchTemplatesTemplateDataDisk({
    required this.category,
    required this.deleteWithInstance,
    required this.description,
    required this.encrypted,
    required this.name,
    required this.performanceLevel,
    required this.size,
    required this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'deleteWithInstance': deleteWithInstance,
      'description': description,
      'encrypted': encrypted,
      'name': name,
      'performanceLevel': performanceLevel,
      'size': size,
      'snapshotId': snapshotId,
    };
  }

  factory GetEcsLaunchTemplatesTemplateDataDisk.fromMap(Map<String, dynamic> map) {
    return GetEcsLaunchTemplatesTemplateDataDisk(
      category: map['category'] as String,
      deleteWithInstance: map['deleteWithInstance'] as bool,
      description: map['description'] as String,
      encrypted: map['encrypted'] as bool,
      name: map['name'] as String,
      performanceLevel: map['performanceLevel'] as String,
      size: map['size'] as int,
      snapshotId: map['snapshotId'] as String,
    );
  }
}

