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
  InstanceDataDisk({
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
      autoSnapshotPolicyId: map['autoSnapshotPolicyId'] == null ? null : (map['autoSnapshotPolicyId']! as String).input(),
      burstingEnabled: map['burstingEnabled'] == null ? null : (map['burstingEnabled']! as bool).input(),
      category: map['category'] == null ? null : (map['category']! as String).input(),
      deleteWithInstance: map['deleteWithInstance'] == null ? null : (map['deleteWithInstance']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      device: map['device'] == null ? null : (map['device']! as String).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted']! as bool).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      performanceLevel: map['performanceLevel'] == null ? null : (map['performanceLevel']! as String).input(),
      provisionedIops: map['provisionedIops'] == null ? null : (map['provisionedIops']! as int).input(),
      size: (map['size'] as int).input(),
      snapshotId: map['snapshotId'] == null ? null : (map['snapshotId']! as String).input(),
    );
  }
}

