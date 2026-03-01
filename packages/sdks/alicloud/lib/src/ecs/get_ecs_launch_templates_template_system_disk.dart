// ignore_for_file: unused_element, unnecessary_cast


class GetEcsLaunchTemplatesTemplateSystemDisk {
  /// The category of the system disk.
  final String category;
  /// Specifies whether to release the system disk when the instance is released.
  final bool deleteWithInstance;
  /// System disk description.
  final String description;
  /// The Iops.
  final String iops;
  /// System disk name.
  final String name;
  /// The performance level of the ESSD used as the system disk.
  final String performanceLevel;
  /// Size of the system disk, measured in GB.
  final int size;

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
      category: map['category'] as String,
      deleteWithInstance: map['deleteWithInstance'] as bool,
      description: map['description'] as String,
      iops: map['iops'] as String,
      name: map['name'] as String,
      performanceLevel: map['performanceLevel'] as String,
      size: map['size'] as int,
    );
  }
}

