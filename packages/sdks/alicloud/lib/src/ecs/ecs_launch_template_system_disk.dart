// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EcsLaunchTemplateSystemDisk {
  /// The category of the system disk. System disk type. Valid values: `all`, `cloud`, `ephemeral_ssd`, `cloud_essd`, `cloud_efficiency`, `cloud_ssd`, `local_disk`.
  final pulumi.Input<String>? category;

  /// Specifies whether to release the system disk when the instance is released. Default to `true`.
  final pulumi.Input<bool>? deleteWithInstance;

  /// System disk description. It cannot begin with http:// or https://.
  final pulumi.Input<String>? description;

  /// Specifies whether the system disk is encrypted.
  final pulumi.Input<bool>? encrypted;

  /// The Iops.
  final pulumi.Input<String>? iops;

  /// The ID of the KMS key to use for the system disk.
  final pulumi.Input<String>? kmsKeyId;

  /// System disk name. The name is a string of 2 to 128 characters. It must begin with an English or a Chinese character. It can contain A-Z, a-z, Chinese characters, numbers, periods (.), colons (:), underscores (_), and hyphens (-).
  final pulumi.Input<String>? name;

  /// The performance level of the ESSD used as the system disk. Valid Values: `PL0`, `PL1`, `PL2`, and `PL3`. Default to: `PL0`.
  final pulumi.Input<String>? performanceLevel;

  /// Size of the system disk, measured in GB. Value range: [20, 500].
  final pulumi.Input<int>? size;

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
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deleteWithInstance: (() {
        final guardedValue = map['deleteWithInstance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encrypted: (() {
        final guardedValue = map['encrypted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      iops: (() {
        final guardedValue = map['iops'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      performanceLevel: (() {
        final guardedValue = map['performanceLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      size: (() {
        final guardedValue = map['size'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
