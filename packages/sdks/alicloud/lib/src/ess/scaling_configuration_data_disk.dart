// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingConfigurationDataDisk {
  /// The id of auto snapshot policy for data disk.
  final pulumi.Input<String>? autoSnapshotPolicyId;
  /// Category of data disk. The parameter value options are `ephemeral_ssd`, `cloud_efficiency`, `cloud_ssd` , `cloud_essd` and `cloud`.
  final pulumi.Input<String>? category;
  /// Whether to delete data disks attached on ecs when release ecs instance. Optional value: `true` or `false`, default to `true`.
  final pulumi.Input<bool>? deleteWithInstance;
  /// The description of data disk N. Valid values of N: 1 to 16. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  final pulumi.Input<String>? description;
  /// The mount point of data disk N. Valid values of N: 1 to 16. If this parameter is not specified, the system automatically allocates a mount point to created ECS instances. The name of the mount point ranges from /dev/xvdb to /dev/xvdz in alphabetical order.
  final pulumi.Input<String>? device;
  /// Specifies whether data disk N is to be encrypted. Valid values of N: 1 to 16. Valid values: `true`: encrypted, `false`: not encrypted. Default value: `false`.
  final pulumi.Input<bool>? encrypted;
  /// The CMK ID for data disk N. Valid values of N: 1 to 16.
  final pulumi.Input<String>? kmsKeyId;
  /// The name of data disk N. Valid values of N: 1 to 16. It must be 2 to 128 characters in length. It must start with a letter and cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), and hyphens (-). Default value: null.
  final pulumi.Input<String>? name;
  /// The performance level of the ESSD used as data disk.
  final pulumi.Input<String>? performanceLevel;
  /// IOPS measures the number of read and write operations that an Elastic Block Storage (EBS) device can process per second.
  final pulumi.Input<int>? provisionedIops;
  /// Size of data disk, in GB. The value ranges [5,2000] for a cloud disk, [5,1024] for an ephemeral disk, [5,800] for an ephemeral_ssd disk, [20,32768] for cloud_efficiency, cloud_ssd, cloud_essd disk.
  final pulumi.Input<int>? size;
  /// Snapshot used for creating the data disk. If this parameter is specified, the size parameter is neglected, and the size of the created disk is the size of the snapshot.
  final pulumi.Input<String>? snapshotId;

  /// Creates a new [ScalingConfigurationDataDisk].
  /// [autoSnapshotPolicyId] The id of auto snapshot policy for data disk.
  /// [category] Category of data disk. The parameter value options are `ephemeral_ssd`, `cloud_efficiency`, `cloud_ssd` , `cloud_essd` and `cloud`.
  /// [deleteWithInstance] Whether to delete data disks attached on ecs when release ecs instance. Optional value: `true` or `false`, default to `true`.
  /// [description] The description of data disk N. Valid values of N: 1 to 16. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  /// [device] The mount point of data disk N. Valid values of N: 1 to 16. If this parameter is not specified, the system automatically allocates a mount point to created ECS instances. The name of the mount point ranges from /dev/xvdb to /dev/xvdz in alphabetical order.
  /// [encrypted] Specifies whether data disk N is to be encrypted. Valid values of N: 1 to 16. Valid values: `true`: encrypted, `false`: not encrypted. Default value: `false`.
  /// [kmsKeyId] The CMK ID for data disk N. Valid values of N: 1 to 16.
  /// [name] The name of data disk N. Valid values of N: 1 to 16. It must be 2 to 128 characters in length. It must start with a letter and cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), and hyphens (-). Default value: null.
  /// [performanceLevel] The performance level of the ESSD used as data disk.
  /// [provisionedIops] IOPS measures the number of read and write operations that an Elastic Block Storage (EBS) device can process per second.
  /// [size] Size of data disk, in GB. The value ranges [5,2000] for a cloud disk, [5,1024] for an ephemeral disk, [5,800] for an ephemeral_ssd disk, [20,32768] for cloud_efficiency, cloud_ssd, cloud_essd disk.
  /// [snapshotId] Snapshot used for creating the data disk. If this parameter is specified, the size parameter is neglected, and the size of the created disk is the size of the snapshot.
  ScalingConfigurationDataDisk({
    this.autoSnapshotPolicyId,
    this.category,
    this.deleteWithInstance,
    this.description,
    this.device,
    this.encrypted,
    this.kmsKeyId,
    this.name,
    this.performanceLevel,
    this.provisionedIops,
    this.size,
    this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSnapshotPolicyId': ?autoSnapshotPolicyId,
      'category': ?category,
      'deleteWithInstance': ?deleteWithInstance,
      'description': ?description,
      'device': ?device,
      'encrypted': ?encrypted,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'performanceLevel': ?performanceLevel,
      'provisionedIops': ?provisionedIops,
      'size': ?size,
      'snapshotId': ?snapshotId,
    };
  }

  factory ScalingConfigurationDataDisk.fromMap(Map<String, dynamic> map) {
    return ScalingConfigurationDataDisk(
      autoSnapshotPolicyId: map['autoSnapshotPolicyId'] == null ? null : (map['autoSnapshotPolicyId']! as String).input(),
      category: map['category'] == null ? null : (map['category']! as String).input(),
      deleteWithInstance: map['deleteWithInstance'] == null ? null : (map['deleteWithInstance']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      device: map['device'] == null ? null : (map['device']! as String).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted']! as bool).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      performanceLevel: map['performanceLevel'] == null ? null : (map['performanceLevel']! as String).input(),
      provisionedIops: map['provisionedIops'] == null ? null : (map['provisionedIops']! as int).input(),
      size: map['size'] == null ? null : (map['size']! as int).input(),
      snapshotId: map['snapshotId'] == null ? null : (map['snapshotId']! as String).input(),
    );
  }
}

