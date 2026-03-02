// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateSystemDisk {
  /// The category of the disk:
  /// - cloud: Basic cloud disk.
  /// - cloud_efficiency: Ultra cloud disk.
  /// - cloud_ssd: SSD cloud Disks.
  /// - ephemeral_ssd: local SSD Disks
  /// - cloud_essd: ESSD cloud Disks.
  ///
  /// Default to `cloud_efficiency`.
  final pulumi.Input<String>? category;
  /// Delete this data disk when the instance is destroyed. It only works on cloud, cloud_efficiency, cloud_ssd and cloud_essd disk. If the category of this data disk was ephemeral_ssd, please don't set this param.
  ///
  /// Default to true
  final pulumi.Input<bool>? deleteWithInstance;
  /// Description of instance launch template version 1. It can be [2, 256] characters in length. It cannot start with "http://" or "https://". The default value is null.
  final pulumi.Input<String>? description;
  /// Encrypted the data in this disk.
  ///
  /// Default to false
  final pulumi.Input<bool>? encrypted;
  final pulumi.Input<String>? iops;
  final pulumi.Input<String>? kmsKeyId;
  /// Instance launch template name. Can contain [2, 128] characters in length. It must start with an English letter or Chinese, can contain numbers, periods (.), colons (:), underscores (_), and hyphens (-). It cannot start with "http://" or "https://".
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? performanceLevel;
  /// The size of the data disk.
  /// - cloud：[5, 2000]
  /// - cloud_efficiency：[20, 32768]
  /// - cloud_ssd：[20, 32768]
  /// - cloud_essd：[20, 32768]
  /// - ephemeral_ssd: [5, 800]
  final pulumi.Input<int>? size;

  /// Creates a new [LaunchTemplateSystemDisk].
  /// [category] The category of the disk:
  /// [deleteWithInstance] Delete this data disk when the instance is destroyed. It only works on cloud, cloud_efficiency, cloud_ssd and cloud_essd disk. If the category of this data disk was ephemeral_ssd, please don't set this param.
  /// [description] Description of instance launch template version 1. It can be [2, 256] characters in length. It cannot start with "http://" or "https://". The default value is null.
  /// [encrypted] Encrypted the data in this disk.
  /// [iops] Optional.
  /// [kmsKeyId] Optional.
  /// [name] Instance launch template name. Can contain [2, 128] characters in length. It must start with an English letter or Chinese, can contain numbers, periods (.), colons (:), underscores (_), and hyphens (-). It cannot start with "http://" or "https://".
  /// [performanceLevel] Optional.
  /// [size] The size of the data disk.
  LaunchTemplateSystemDisk({
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

  factory LaunchTemplateSystemDisk.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateSystemDisk(
      category: map['category'] == null ? null : (map['category']! as String).input(),
      deleteWithInstance: map['deleteWithInstance'] == null ? null : (map['deleteWithInstance']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted']! as bool).input(),
      iops: map['iops'] == null ? null : (map['iops']! as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      performanceLevel: map['performanceLevel'] == null ? null : (map['performanceLevel']! as String).input(),
      size: map['size'] == null ? null : (map['size']! as int).input(),
    );
  }
}

