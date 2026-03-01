// ignore_for_file: unused_element, unnecessary_cast


class EdgeKubernetesWorkerDataDisk {
  /// Worker node data disk auto snapshot policy.
  final String? autoSnapshotPolicyId;
  /// The type of the data disks. Valid values: `cloud`, `cloud_efficiency`, `cloud_ssd` and `cloud_essd`. Default to `cloud_efficiency`.
  final String? category;
  /// The device of the data disks.
  final String? device;
  /// Specifies whether to encrypt data disks. Valid values: true and false. Default is `false`.
  final String? encrypted;
  /// The id of the kms key.
  final String? kmsKeyId;
  /// The name of the data disks.
  final String? name;
  /// Worker node data disk performance level, when `category` values `cloud_essd`, the optional values are `PL0`, `PL1`, `PL2` or `PL3`, but the specific performance level is related to the disk capacity. For more information, see [Enhanced SSDs](https://www.alibabacloud.com/help/doc-detail/122389.htm). Default is `PL1`.
  final String? performanceLevel;
  /// The size of a data disk, at least 40. Unit: GiB.
  final String? size;
  /// The id of snapshot.
  final String? snapshotId;

  /// Creates a new [EdgeKubernetesWorkerDataDisk].
  /// [autoSnapshotPolicyId] Worker node data disk auto snapshot policy.
  /// [category] The type of the data disks. Valid values: `cloud`, `cloud_efficiency`, `cloud_ssd` and `cloud_essd`. Default to `cloud_efficiency`.
  /// [device] The device of the data disks.
  /// [encrypted] Specifies whether to encrypt data disks. Valid values: true and false. Default is `false`.
  /// [kmsKeyId] The id of the kms key.
  /// [name] The name of the data disks.
  /// [performanceLevel] Worker node data disk performance level, when `category` values `cloud_essd`, the optional values are `PL0`, `PL1`, `PL2` or `PL3`, but the specific performance level is related to the disk capacity. For more information, see [Enhanced SSDs](https://www.alibabacloud.com/help/doc-detail/122389.htm). Default is `PL1`.
  /// [size] The size of a data disk, at least 40. Unit: GiB.
  /// [snapshotId] The id of snapshot.
  EdgeKubernetesWorkerDataDisk({
    this.autoSnapshotPolicyId,
    this.category,
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
      'autoSnapshotPolicyId': ?autoSnapshotPolicyId,
      'category': ?category,
      'device': ?device,
      'encrypted': ?encrypted,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'performanceLevel': ?performanceLevel,
      'size': ?size,
      'snapshotId': ?snapshotId,
    };
  }

  factory EdgeKubernetesWorkerDataDisk.fromMap(Map<String, dynamic> map) {
    return EdgeKubernetesWorkerDataDisk(
      autoSnapshotPolicyId: map['autoSnapshotPolicyId'] == null ? null : map['autoSnapshotPolicyId'] as String,
      category: map['category'] == null ? null : map['category'] as String,
      device: map['device'] == null ? null : map['device'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      performanceLevel: map['performanceLevel'] == null ? null : map['performanceLevel'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId'] as String,
    );
  }
}

