// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceDataDisk {
  /// The ID of the automatic snapshot policy applied to the system disk.
  final pulumi.Input<String>? autoSnapshotPolicyId;
  /// Specifies whether to enable the performance burst feature for the system disk. Valid values:
  final pulumi.Input<bool>? burstingEnabled;
  /// The category of the disk:
  final pulumi.Input<String>? category;
  /// Delete this data disk when the instance is destroyed. It only works on cloud, cloud_efficiency, cloud_essd, cloud_ssd disk. If the category of this data disk was ephemeral_ssd, please don't set this param. Default value: `true`.
  final pulumi.Input<bool>? deleteWithInstance;
  /// The description of the data disk.
  final pulumi.Input<String>? description;
  /// The mount point of the data disk.
  final pulumi.Input<String>? device;
  /// Encrypted the data in this disk. Default value: `false`.
  final pulumi.Input<bool>? encrypted;
  /// The KMS key ID corresponding to the Nth data disk.
  final pulumi.Input<String>? kmsKeyId;
  /// The name of the data disk.
  final pulumi.Input<String>? name;
  /// The performance level of the ESSD used as data disk:
  /// - `PL0`: A single ESSD can deliver up to 10,000 random read/write IOPS.
  /// - `PL1`: A single ESSD can deliver up to 50,000 random read/write IOPS.
  /// - `PL2`: A single ESSD can deliver up to 100,000 random read/write IOPS.
  /// - `PL3`: A single ESSD can deliver up to 1,000,000 random read/write IOPS.
  /// Default to `PL1`.
  final pulumi.Input<String>? performanceLevel;
  /// The provisioned read/write IOPS of the ESSD AutoPL disk to use as the data disk.
  final pulumi.Input<int>? provisionedIops;
  /// The size of the data disk.
  /// - cloud：[5, 2000]
  /// - cloud_efficiency：[20, 32768]
  /// - cloud_ssd：[20, 32768]
  /// - cloud_essd：[20, 32768]
  /// - ephemeral_ssd: [5, 800]
  final pulumi.Input<int> size;
  /// The snapshot ID used to initialize the data disk. If the size specified by snapshot is greater that the size of the disk, use the size specified by snapshot as the size of the data disk.
  final pulumi.Input<String>? snapshotId;

  /// Creates a new [InstanceDataDisk].
  /// [autoSnapshotPolicyId] The ID of the automatic snapshot policy applied to the system disk.
  /// [burstingEnabled] Specifies whether to enable the performance burst feature for the system disk. Valid values:
  /// [category] The category of the disk:
  /// [deleteWithInstance] Delete this data disk when the instance is destroyed. It only works on cloud, cloud_efficiency, cloud_essd, cloud_ssd disk. If the category of this data disk was ephemeral_ssd, please don't set this param. Default value: `true`.
  /// [description] The description of the data disk.
  /// [device] The mount point of the data disk.
  /// [encrypted] Encrypted the data in this disk. Default value: `false`.
  /// [kmsKeyId] The KMS key ID corresponding to the Nth data disk.
  /// [name] The name of the data disk.
  /// [performanceLevel] The performance level of the ESSD used as data disk:
  /// [provisionedIops] The provisioned read/write IOPS of the ESSD AutoPL disk to use as the data disk.
  /// [size] The size of the data disk.
  /// [snapshotId] The snapshot ID used to initialize the data disk. If the size specified by snapshot is greater that the size of the disk, use the size specified by snapshot as the size of the data disk.
  const InstanceDataDisk({
    this.autoSnapshotPolicyId,
    this.burstingEnabled,
    this.category,
    this.deleteWithInstance,
    this.description,
    this.device,
    this.encrypted,
    this.kmsKeyId,
    this.name,
    this.performanceLevel,
    this.provisionedIops,
    required this.size,
    this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSnapshotPolicyId': ?autoSnapshotPolicyId,
      'burstingEnabled': ?burstingEnabled,
      'category': ?category,
      'deleteWithInstance': ?deleteWithInstance,
      'description': ?description,
      'device': ?device,
      'encrypted': ?encrypted,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'performanceLevel': ?performanceLevel,
      'provisionedIops': ?provisionedIops,
      'size': size,
      'snapshotId': ?snapshotId,
    };
  }

  factory InstanceDataDisk.fromMap(Map<String, dynamic> map) {
    return InstanceDataDisk(
      autoSnapshotPolicyId: (() { final guardedValue = map['autoSnapshotPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      burstingEnabled: (() { final guardedValue = map['burstingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteWithInstance: (() { final guardedValue = map['deleteWithInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      device: (() { final guardedValue = map['device']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceLevel: (() { final guardedValue = map['performanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedIops: (() { final guardedValue = map['provisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      size: pulumi.Input.fromValue(map['size'] as int),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

