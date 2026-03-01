// ignore_for_file: unused_element, unnecessary_cast


class NodePoolDataDisk {
  /// Whether to automatically mount the data disk. Valid values: true and false.
  final String? autoFormat;
  /// The ID of the automatic snapshot policy that you want to apply to the system disk.
  final String? autoSnapshotPolicyId;
  /// Whether the data disk is enabled with Burst (performance Burst). This is configured when the disk type is cloud_auto.
  final bool? burstingEnabled;
  /// The type of data disk. Default value: `cloud_efficiency`. Valid values:
  final String? category;
  /// The mount target of data disk N. Valid values of N: 1 to 16. If you do not specify this parameter, the system automatically assigns a mount target when Auto Scaling creates ECS instances. The name of the mount target ranges from /dev/xvdb to /dev/xvdz.
  final String? device;
  /// Specifies whether to encrypt data disks. Valid values: true and false. Default to `false`.
  final String? encrypted;
  /// The type of the mounted file system. Works when auto_format is true. Optional value: `ext4`, `xfs`.
  final String? fileSystem;
  /// The kms key id used to encrypt the data disk. It takes effect when `encrypted` is true.
  final String? kmsKeyId;
  /// The Mount path. Works when auto_format is true.
  final String? mountTarget;
  /// The length is 2~128 English or Chinese characters. It must start with an uppercase or lowr letter or a Chinese character and cannot start with http:// or https. Can contain numbers, colons (:), underscores (_), or dashes (-). It will be overwritten if auto_format is set.
  final String? name;
  /// Worker node data disk performance level, when `category` values `cloud_essd`, the optional values are `PL0`, `PL1`, `PL2` or `PL3`, but the specific performance level is related to the disk capacity. For more information, see [Enhanced SSDs](https://www.alibabacloud.com/help/doc-detail/122389.htm). Default is `PL1`.
  final String? performanceLevel;
  /// The read/write IOPS preconfigured for the data disk, which is configured when the disk type is cloud_auto.
  final int? provisionedIops;
  /// The size of a data disk, Its valid value range [40~32768] in GB. Default to `40`.
  final int? size;
  /// The ID of the snapshot that you want to use to create data disk N. Valid values of N: 1 to 16. If you specify this parameter, DataDisk.N.Size is ignored. The size of the disk is the same as the size of the specified snapshot. If you specify a snapshot that is created on or before July 15, 2013, the operation fails and InvalidSnapshot.TooOld is returned.
  final String? snapshotId;

  /// Creates a new [NodePoolDataDisk].
  /// [autoFormat] Whether to automatically mount the data disk. Valid values: true and false.
  /// [autoSnapshotPolicyId] The ID of the automatic snapshot policy that you want to apply to the system disk.
  /// [burstingEnabled] Whether the data disk is enabled with Burst (performance Burst). This is configured when the disk type is cloud_auto.
  /// [category] The type of data disk. Default value: `cloud_efficiency`. Valid values:
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
  NodePoolDataDisk({
    this.autoFormat,
    this.autoSnapshotPolicyId,
    this.burstingEnabled,
    this.category,
    this.device,
    this.encrypted,
    this.fileSystem,
    this.kmsKeyId,
    this.mountTarget,
    this.name,
    this.performanceLevel,
    this.provisionedIops,
    this.size,
    this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoFormat': ?autoFormat,
      'autoSnapshotPolicyId': ?autoSnapshotPolicyId,
      'burstingEnabled': ?burstingEnabled,
      'category': ?category,
      'device': ?device,
      'encrypted': ?encrypted,
      'fileSystem': ?fileSystem,
      'kmsKeyId': ?kmsKeyId,
      'mountTarget': ?mountTarget,
      'name': ?name,
      'performanceLevel': ?performanceLevel,
      'provisionedIops': ?provisionedIops,
      'size': ?size,
      'snapshotId': ?snapshotId,
    };
  }

  factory NodePoolDataDisk.fromMap(Map<String, dynamic> map) {
    return NodePoolDataDisk(
      autoFormat: map['autoFormat'] == null ? null : map['autoFormat'] as String,
      autoSnapshotPolicyId: map['autoSnapshotPolicyId'] == null ? null : map['autoSnapshotPolicyId'] as String,
      burstingEnabled: map['burstingEnabled'] == null ? null : map['burstingEnabled'] as bool,
      category: map['category'] == null ? null : map['category'] as String,
      device: map['device'] == null ? null : map['device'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as String,
      fileSystem: map['fileSystem'] == null ? null : map['fileSystem'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      mountTarget: map['mountTarget'] == null ? null : map['mountTarget'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      performanceLevel: map['performanceLevel'] == null ? null : map['performanceLevel'] as String,
      provisionedIops: map['provisionedIops'] == null ? null : map['provisionedIops'] as int,
      size: map['size'] == null ? null : map['size'] as int,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId'] as String,
    );
  }
}

