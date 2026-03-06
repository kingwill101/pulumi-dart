// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateDataDisk {
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
  /// The description of the data disk.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? device;
  /// Encrypted the data in this disk.
  ///
  /// Default to false
  final pulumi.Input<bool>? encrypted;
  final pulumi.Input<String>? kmsKeyId;
  /// The name of the data disk.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? performanceLevel;
  /// The size of the data disk.
  /// - cloud：[5, 2000]
  /// - cloud_efficiency：[20, 32768]
  /// - cloud_ssd：[20, 32768]
  /// - cloud_essd：[20, 32768]
  /// - ephemeral_ssd: [5, 800]
  final pulumi.Input<int>? size;
  /// The snapshot ID used to initialize the data disk. If the size specified by snapshot is greater that the size of the disk, use the size specified by snapshot as the size of the data disk.
  final pulumi.Input<String>? snapshotId;

  /// Creates a new [LaunchTemplateDataDisk].
  /// [category] The category of the disk:
  /// [deleteWithInstance] Delete this data disk when the instance is destroyed. It only works on cloud, cloud_efficiency, cloud_ssd and cloud_essd disk. If the category of this data disk was ephemeral_ssd, please don't set this param.
  /// [description] The description of the data disk.
  /// [device] Optional.
  /// [encrypted] Encrypted the data in this disk.
  /// [kmsKeyId] Optional.
  /// [name] The name of the data disk.
  /// [performanceLevel] Optional.
  /// [size] The size of the data disk.
  /// [snapshotId] The snapshot ID used to initialize the data disk. If the size specified by snapshot is greater that the size of the disk, use the size specified by snapshot as the size of the data disk.
  const LaunchTemplateDataDisk({
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

  factory LaunchTemplateDataDisk.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateDataDisk(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteWithInstance: (() { final guardedValue = map['deleteWithInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      device: (() { final guardedValue = map['device']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceLevel: (() { final guardedValue = map['performanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

