// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesNodePoolsNodepoolDataDisk {
  /// Whether to automatically mount the data disk. Valid values: true and false.
  final pulumi.Input<String> autoFormat;
  /// The ID of the automatic snapshot policy that you want to apply to the system disk.
  final pulumi.Input<String> autoSnapshotPolicyId;
  /// Whether the data disk is enabled with Burst (performance Burst). This is configured when the disk type is cloud_auto.
  final pulumi.Input<bool> burstingEnabled;
  /// The type of data disk. Default value: `cloud_efficiency`. Valid values:- `cloud`: basic disk.- `cloud_efficiency`: ultra disk.- `cloud_ssd`: standard SSD.- `cloud_essd`: Enterprise SSD (ESSD).- `cloud_auto`: ESSD AutoPL disk.- `cloud_essd_entry`: ESSD Entry disk.- `elastic_ephemeral_disk_premium`: premium elastic ephemeral disk.- `elastic_ephemeral_disk_standard`: standard elastic ephemeral disk.
  final pulumi.Input<String> category;
  /// The mount target of data disk N. Valid values of N: 1 to 16. If you do not specify this parameter, the system automatically assigns a mount target when Auto Scaling creates ECS instances. The name of the mount target ranges from /dev/xvdb to /dev/xvdz.
  final pulumi.Input<String> device;
  /// Specifies whether to encrypt data disks. Valid values: true and false. Default to `false`.
  final pulumi.Input<String> encrypted;
  /// The type of the mounted file system. Works when auto_format is true. Optional value: `ext4`, `xfs`.
  final pulumi.Input<String> fileSystem;
  /// The kms key id used to encrypt the data disk. It takes effect when `encrypted` is true.
  final pulumi.Input<String> kmsKeyId;
  /// The Mount path. Works when auto_format is true.
  final pulumi.Input<String> mountTarget;
  /// The length is 2~128 English or Chinese characters. It must start with an uppercase or lowr letter or a Chinese character and cannot start with http:// or https. Can contain numbers, colons (:), underscores (_), or dashes (-). It will be overwritten if auto_format is set.
  final pulumi.Input<String> name;
  /// Worker node data disk performance level, when `category` values `cloud_essd`, the optional values are `PL0`, `PL1`, `PL2` or `PL3`, but the specific performance level is related to the disk capacity. For more information, see [Enhanced SSDs](https://www.alibabacloud.com/help/doc-detail/122389.htm). Default is `PL1`.
  final pulumi.Input<String> performanceLevel;
  /// The read/write IOPS preconfigured for the data disk, which is configured when the disk type is cloud_auto.
  final pulumi.Input<int> provisionedIops;
  /// The size of a data disk, Its valid value range [40~32768] in GB. Default to `40`.
  final pulumi.Input<int> size;
  /// The ID of the snapshot that you want to use to create data disk N. Valid values of N: 1 to 16. If you specify this parameter, DataDisk.N.Size is ignored. The size of the disk is the same as the size of the specified snapshot. If you specify a snapshot that is created on or before July 15, 2013, the operation fails and InvalidSnapshot.TooOld is returned.
  final pulumi.Input<String> snapshotId;

  /// Creates a new [GetKubernetesNodePoolsNodepoolDataDisk].
  /// [autoFormat] Whether to automatically mount the data disk. Valid values: true and false.
  /// [autoSnapshotPolicyId] The ID of the automatic snapshot policy that you want to apply to the system disk.
  /// [burstingEnabled] Whether the data disk is enabled with Burst (performance Burst). This is configured when the disk type is cloud_auto.
  /// [category] The type of data disk. Default value: `cloud_efficiency`. Valid values:- `cloud`: basic disk.- `cloud_efficiency`: ultra disk.- `cloud_ssd`: standard SSD.- `cloud_essd`: Enterprise SSD (ESSD).- `cloud_auto`: ESSD AutoPL disk.- `cloud_essd_entry`: ESSD Entry disk.- `elastic_ephemeral_disk_premium`: premium elastic ephemeral disk.- `elastic_ephemeral_disk_standard`: standard elastic ephemeral disk.
  /// [device] The mount target of data disk N. Valid values of N: 1 to 16. If you do not specify this parameter, the system automatically assigns a mount target when Auto Scaling creates ECS instances. The name of the mount target ranges from /dev/xvdb to /dev/xvdz.
  /// [encrypted] Specifies whether to encrypt data disks. Valid values: true and false. Default to `false`.
  /// [fileSystem] The type of the mounted file system. Works when auto_format is true. Optional value: `ext4`, `xfs`.
  /// [kmsKeyId] The kms key id used to encrypt the data disk. It takes effect when `encrypted` is true.
  /// [mountTarget] The Mount path. Works when auto_format is true.
  /// [name] The length is 2~128 English or Chinese characters. It must start with an uppercase or lowr letter or a Chinese character and cannot start with http:// or https. Can contain numbers, colons (:), underscores (_), or dashes (-). It will be overwritten if auto_format is set.
  /// [performanceLevel] Worker node data disk performance level, when `category` values `cloud_essd`, the optional values are `PL0`, `PL1`, `PL2` or `PL3`, but the specific performance level is related to the disk capacity. For more information, see [Enhanced SSDs](https://www.alibabacloud.com/help/doc-detail/122389.htm). Default is `PL1`.
  /// [provisionedIops] The read/write IOPS preconfigured for the data disk, which is configured when the disk type is cloud_auto.
  /// [size] The size of a data disk, Its valid value range [40~32768] in GB. Default to `40`.
  /// [snapshotId] The ID of the snapshot that you want to use to create data disk N. Valid values of N: 1 to 16. If you specify this parameter, DataDisk.N.Size is ignored. The size of the disk is the same as the size of the specified snapshot. If you specify a snapshot that is created on or before July 15, 2013, the operation fails and InvalidSnapshot.TooOld is returned.
  GetKubernetesNodePoolsNodepoolDataDisk({
    required this.autoFormat,
    required this.autoSnapshotPolicyId,
    required this.burstingEnabled,
    required this.category,
    required this.device,
    required this.encrypted,
    required this.fileSystem,
    required this.kmsKeyId,
    required this.mountTarget,
    required this.name,
    required this.performanceLevel,
    required this.provisionedIops,
    required this.size,
    required this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoFormat': autoFormat,
      'autoSnapshotPolicyId': autoSnapshotPolicyId,
      'burstingEnabled': burstingEnabled,
      'category': category,
      'device': device,
      'encrypted': encrypted,
      'fileSystem': fileSystem,
      'kmsKeyId': kmsKeyId,
      'mountTarget': mountTarget,
      'name': name,
      'performanceLevel': performanceLevel,
      'provisionedIops': provisionedIops,
      'size': size,
      'snapshotId': snapshotId,
    };
  }

  factory GetKubernetesNodePoolsNodepoolDataDisk.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolsNodepoolDataDisk(
      autoFormat: (map['autoFormat'] as String).input(),
      autoSnapshotPolicyId: (map['autoSnapshotPolicyId'] as String).input(),
      burstingEnabled: (map['burstingEnabled'] as bool).input(),
      category: (map['category'] as String).input(),
      device: (map['device'] as String).input(),
      encrypted: (map['encrypted'] as String).input(),
      fileSystem: (map['fileSystem'] as String).input(),
      kmsKeyId: (map['kmsKeyId'] as String).input(),
      mountTarget: (map['mountTarget'] as String).input(),
      name: (map['name'] as String).input(),
      performanceLevel: (map['performanceLevel'] as String).input(),
      provisionedIops: (map['provisionedIops'] as int).input(),
      size: (map['size'] as int).input(),
      snapshotId: (map['snapshotId'] as String).input(),
    );
  }
}

