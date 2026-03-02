// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsLaunchTemplatesTemplateDataDisk {
  /// The category of the system disk.
  final pulumi.Input<String> category;
  /// Specifies whether to release the system disk when the instance is released.
  final pulumi.Input<bool> deleteWithInstance;
  /// System disk description.
  final pulumi.Input<String> description;
  /// Encrypted the data in this disk.
  final pulumi.Input<bool> encrypted;
  /// System disk name.
  final pulumi.Input<String> name;
  /// The performance level of the ESSD used as the system disk.
  final pulumi.Input<String> performanceLevel;
  /// Size of the system disk, measured in GB.
  final pulumi.Input<int> size;
  /// The snapshot ID used to initialize the data disk. If the size specified by snapshot is greater that the size of the disk, use the size specified by snapshot as the size of the data disk.
  final pulumi.Input<String> snapshotId;

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
      category: (map['category'] as String).input(),
      deleteWithInstance: (map['deleteWithInstance'] as bool).input(),
      description: (map['description'] as String).input(),
      encrypted: (map['encrypted'] as bool).input(),
      name: (map['name'] as String).input(),
      performanceLevel: (map['performanceLevel'] as String).input(),
      size: (map['size'] as int).input(),
      snapshotId: (map['snapshotId'] as String).input(),
    );
  }
}

