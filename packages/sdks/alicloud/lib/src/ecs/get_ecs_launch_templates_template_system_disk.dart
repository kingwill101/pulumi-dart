// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsLaunchTemplatesTemplateSystemDisk {
  /// The category of the system disk.
  final pulumi.Input<String> category;
  /// Specifies whether to release the system disk when the instance is released.
  final pulumi.Input<bool> deleteWithInstance;
  /// System disk description.
  final pulumi.Input<String> description;
  /// The Iops.
  final pulumi.Input<String> iops;
  /// System disk name.
  final pulumi.Input<String> name;
  /// The performance level of the ESSD used as the system disk.
  final pulumi.Input<String> performanceLevel;
  /// Size of the system disk, measured in GB.
  final pulumi.Input<int> size;

  /// Creates a new [GetEcsLaunchTemplatesTemplateSystemDisk].
  /// [category] The category of the system disk.
  /// [deleteWithInstance] Specifies whether to release the system disk when the instance is released.
  /// [description] System disk description.
  /// [iops] The Iops.
  /// [name] System disk name.
  /// [performanceLevel] The performance level of the ESSD used as the system disk.
  /// [size] Size of the system disk, measured in GB.
  GetEcsLaunchTemplatesTemplateSystemDisk({
    required this.category,
    required this.deleteWithInstance,
    required this.description,
    required this.iops,
    required this.name,
    required this.performanceLevel,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'deleteWithInstance': deleteWithInstance,
      'description': description,
      'iops': iops,
      'name': name,
      'performanceLevel': performanceLevel,
      'size': size,
    };
  }

  factory GetEcsLaunchTemplatesTemplateSystemDisk.fromMap(Map<String, dynamic> map) {
    return GetEcsLaunchTemplatesTemplateSystemDisk(
      category: (map['category'] as String).input(),
      deleteWithInstance: (map['deleteWithInstance'] as bool).input(),
      description: (map['description'] as String).input(),
      iops: (map['iops'] as String).input(),
      name: (map['name'] as String).input(),
      performanceLevel: (map['performanceLevel'] as String).input(),
      size: (map['size'] as int).input(),
    );
  }
}

