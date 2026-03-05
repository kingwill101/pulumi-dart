// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EcsInstanceSetDataDisk {
  /// The ID of the automatic snapshot policy applied to the system disk.
  final pulumi.Input<String>? autoSnapshotPolicyId;
  /// The category of the disk. Valid values: `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud`.
  final pulumi.Input<String>? diskCategory;
  /// The description of the data disk.
  final pulumi.Input<String>? diskDescription;
  /// The name of the data disk.
  final pulumi.Input<String>? diskName;
  /// The size of the data disk. Unit: GiB. Valid values:
  /// - When `disk_category` is `cloud_efficiency`, Valid values: `20` to `32768`.
  /// - When `disk_category` is `cloud_ssd`, Valid values: `20` to `32768`.
  /// - When `disk_category` is `cloud_essd`, Valid values: `20` to `32768`.
  /// - When `disk_category` is `cloud`, Valid values: `5` to `200`.
  final pulumi.Input<int> diskSize;
  /// Encrypted the data in this disk. Default value: `false`.
  final pulumi.Input<bool>? encrypted;
  /// The KMS key ID corresponding to the data disk.
  final pulumi.Input<String>? kmsKeyId;
  /// The performance level of the ESSD used as data disk. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  final pulumi.Input<String>? performanceLevel;
  /// The snapshot ID used to initialize the data disk. If the size specified by snapshot is greater that the size of the disk, use the size specified by snapshot as the size of the data disk.
  final pulumi.Input<String>? snapshotId;

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
      autoSnapshotPolicyId: (() { final guardedValue = map['autoSnapshotPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskCategory: (() { final guardedValue = map['diskCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskDescription: (() { final guardedValue = map['diskDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskName: (() { final guardedValue = map['diskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSize: pulumi.Input.fromValue(map['diskSize'] as int),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceLevel: (() { final guardedValue = map['performanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

