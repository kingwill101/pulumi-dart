// ignore_for_file: unused_element, unnecessary_cast


class EcsInstanceSetDataDisk {
  /// The ID of the automatic snapshot policy applied to the system disk.
  final String? autoSnapshotPolicyId;
  /// The category of the disk. Valid values: `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud`.
  final String? diskCategory;
  /// The description of the data disk.
  final String? diskDescription;
  /// The name of the data disk.
  final String? diskName;
  /// The size of the data disk. Unit: GiB. Valid values:
  /// - When `disk_category` is `cloud_efficiency`, Valid values: `20` to `32768`.
  /// - When `disk_category` is `cloud_ssd`, Valid values: `20` to `32768`.
  /// - When `disk_category` is `cloud_essd`, Valid values: `20` to `32768`.
  /// - When `disk_category` is `cloud`, Valid values: `5` to `200`.
  final int diskSize;
  /// Encrypted the data in this disk. Default value: `false`.
  final bool? encrypted;
  /// The KMS key ID corresponding to the data disk.
  final String? kmsKeyId;
  /// The performance level of the ESSD used as data disk. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  final String? performanceLevel;
  /// The snapshot ID used to initialize the data disk. If the size specified by snapshot is greater that the size of the disk, use the size specified by snapshot as the size of the data disk.
  final String? snapshotId;

  /// Creates a new [EcsInstanceSetDataDisk].
  /// [autoSnapshotPolicyId] The ID of the automatic snapshot policy applied to the system disk.
  /// [diskCategory] The category of the disk. Valid values: `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud`.
  /// [diskDescription] The description of the data disk.
  /// [diskName] The name of the data disk.
  /// [diskSize] The size of the data disk. Unit: GiB. Valid values:
  /// [encrypted] Encrypted the data in this disk. Default value: `false`.
  /// [kmsKeyId] The KMS key ID corresponding to the data disk.
  /// [performanceLevel] The performance level of the ESSD used as data disk. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  /// [snapshotId] The snapshot ID used to initialize the data disk. If the size specified by snapshot is greater that the size of the disk, use the size specified by snapshot as the size of the data disk.
  EcsInstanceSetDataDisk({
    this.autoSnapshotPolicyId,
    this.diskCategory,
    this.diskDescription,
    this.diskName,
    required this.diskSize,
    this.encrypted,
    this.kmsKeyId,
    this.performanceLevel,
    this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSnapshotPolicyId': ?autoSnapshotPolicyId,
      'diskCategory': ?diskCategory,
      'diskDescription': ?diskDescription,
      'diskName': ?diskName,
      'diskSize': diskSize,
      'encrypted': ?encrypted,
      'kmsKeyId': ?kmsKeyId,
      'performanceLevel': ?performanceLevel,
      'snapshotId': ?snapshotId,
    };
  }

  factory EcsInstanceSetDataDisk.fromMap(Map<String, dynamic> map) {
    return EcsInstanceSetDataDisk(
      autoSnapshotPolicyId: map['autoSnapshotPolicyId'] == null ? null : map['autoSnapshotPolicyId'] as String,
      diskCategory: map['diskCategory'] == null ? null : map['diskCategory'] as String,
      diskDescription: map['diskDescription'] == null ? null : map['diskDescription'] as String,
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskSize: map['diskSize'] as int,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      performanceLevel: map['performanceLevel'] == null ? null : map['performanceLevel'] as String,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId'] as String,
    );
  }
}

