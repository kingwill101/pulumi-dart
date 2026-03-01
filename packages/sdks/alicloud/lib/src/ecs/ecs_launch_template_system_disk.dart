// ignore_for_file: unused_element, unnecessary_cast


class EcsLaunchTemplateSystemDisk {
  /// The category of the system disk. System disk type. Valid values: `all`, `cloud`, `ephemeral_ssd`, `cloud_essd`, `cloud_efficiency`, `cloud_ssd`, `local_disk`.
  final String? category;
  /// Specifies whether to release the system disk when the instance is released. Default to `true`.
  final bool? deleteWithInstance;
  /// System disk description. It cannot begin with http:// or https://.
  final String? description;
  /// Specifies whether the system disk is encrypted.
  final bool? encrypted;
  /// The Iops.
  final String? iops;
  /// The ID of the KMS key to use for the system disk.
  final String? kmsKeyId;
  /// System disk name. The name is a string of 2 to 128 characters. It must begin with an English or a Chinese character. It can contain A-Z, a-z, Chinese characters, numbers, periods (.), colons (:), underscores (_), and hyphens (-).
  final String? name;
  /// The performance level of the ESSD used as the system disk. Valid Values: `PL0`, `PL1`, `PL2`, and `PL3`. Default to: `PL0`.
  final String? performanceLevel;
  /// Size of the system disk, measured in GB. Value range: [20, 500].
  final int? size;

  /// Creates a new [EcsLaunchTemplateSystemDisk].
  /// [category] The category of the system disk. System disk type. Valid values: `all`, `cloud`, `ephemeral_ssd`, `cloud_essd`, `cloud_efficiency`, `cloud_ssd`, `local_disk`.
  /// [deleteWithInstance] Specifies whether to release the system disk when the instance is released. Default to `true`.
  /// [description] System disk description. It cannot begin with http:// or https://.
  /// [encrypted] Specifies whether the system disk is encrypted.
  /// [iops] The Iops.
  /// [kmsKeyId] The ID of the KMS key to use for the system disk.
  /// [name] System disk name. The name is a string of 2 to 128 characters. It must begin with an English or a Chinese character. It can contain A-Z, a-z, Chinese characters, numbers, periods (.), colons (:), underscores (_), and hyphens (-).
  /// [performanceLevel] The performance level of the ESSD used as the system disk. Valid Values: `PL0`, `PL1`, `PL2`, and `PL3`. Default to: `PL0`.
  /// [size] Size of the system disk, measured in GB. Value range: [20, 500].
  EcsLaunchTemplateSystemDisk({
    this.category,
    this.deleteWithInstance,
    this.description,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.name,
    this.performanceLevel,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'deleteWithInstance': ?deleteWithInstance,
      'description': ?description,
      'encrypted': ?encrypted,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'performanceLevel': ?performanceLevel,
      'size': ?size,
    };
  }

  factory EcsLaunchTemplateSystemDisk.fromMap(Map<String, dynamic> map) {
    return EcsLaunchTemplateSystemDisk(
      category: map['category'] == null ? null : map['category'] as String,
      deleteWithInstance: map['deleteWithInstance'] == null ? null : map['deleteWithInstance'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      iops: map['iops'] == null ? null : map['iops'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      performanceLevel: map['performanceLevel'] == null ? null : map['performanceLevel'] as String,
      size: map['size'] == null ? null : map['size'] as int,
    );
  }
}

