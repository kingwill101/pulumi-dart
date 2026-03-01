// ignore_for_file: unused_element, unnecessary_cast


class EcsLaunchTemplateDataDisk {
  /// The category of the disk.
  final String? category;
  /// Indicates whether the data disk is released with the instance.
  final bool? deleteWithInstance;
  /// The description of the data disk.
  final String? description;
  /// The mount point of the data disk.
  final String? device;
  /// Encrypted the data in this disk.
  final bool? encrypted;
  /// The ID of the KMS key used for the data disk.
  final String? kmsKeyId;
  /// The name of the data disk.
  final String? name;
  /// The performance level of the ESSD used as the data disk.
  final String? performanceLevel;
  /// The size of the data disk.
  final int? size;
  /// The snapshot ID used to initialize the data disk. If the size specified by snapshot is greater that the size of the disk, use the size specified by snapshot as the size of the data disk.
  final String? snapshotId;

  /// Creates a new [EcsLaunchTemplateDataDisk].
  /// [category] The category of the disk.
  /// [deleteWithInstance] Indicates whether the data disk is released with the instance.
  /// [description] The description of the data disk.
  /// [device] The mount point of the data disk.
  /// [encrypted] Encrypted the data in this disk.
  /// [kmsKeyId] The ID of the KMS key used for the data disk.
  /// [name] The name of the data disk.
  /// [performanceLevel] The performance level of the ESSD used as the data disk.
  /// [size] The size of the data disk.
  /// [snapshotId] The snapshot ID used to initialize the data disk. If the size specified by snapshot is greater that the size of the disk, use the size specified by snapshot as the size of the data disk.
  EcsLaunchTemplateDataDisk({
    this.category,
    this.deleteWithInstance,
    this.description,
    this.device,
    this.encrypted,
    this.kmsKeyId,
    this.name,
    this.performanceLevel,
    this.size,
    this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'deleteWithInstance': ?deleteWithInstance,
      'description': ?description,
      'device': ?device,
      'encrypted': ?encrypted,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'performanceLevel': ?performanceLevel,
      'size': ?size,
      'snapshotId': ?snapshotId,
    };
  }

  factory EcsLaunchTemplateDataDisk.fromMap(Map<String, dynamic> map) {
    return EcsLaunchTemplateDataDisk(
      category: map['category'] == null ? null : map['category'] as String,
      deleteWithInstance: map['deleteWithInstance'] == null ? null : map['deleteWithInstance'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      device: map['device'] == null ? null : map['device'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      performanceLevel: map['performanceLevel'] == null ? null : map['performanceLevel'] as String,
      size: map['size'] == null ? null : map['size'] as int,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId'] as String,
    );
  }
}

