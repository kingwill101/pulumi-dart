// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Disk resources.
class DiskState {
  /// The category of the disk. Valid values: `cloud_efficiency` (high-efficiency cloud disk), `cloud_ssd` (full Flash cloud disk), `local_hdd` (local HDD), `local_ssd` (local ssd).
  final pulumi.Input<String>? category;
  /// The time when the disk was created.
  final pulumi.Input<String>? createTime;
  /// The name of the disk.
  final pulumi.Input<String>? diskName;
  /// Specifies whether to encrypt the new system disk. Valid values: `true`, `false`(default).
  final pulumi.Input<bool>? encrypted;
  /// The ID of the edge node.
  final pulumi.Input<String>? ensRegionId;
  /// The ID of the KMS key used by the cloud disk. If `encrypted` is set to `true`, the service default key is used when KMSKeyId is empty.
  final pulumi.Input<String>? kmsKeyId;
  /// The billing method of the instance. Valid values: `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;
  /// The size of the disk instance. Unit: GiB.
  final pulumi.Input<int>? size;
  /// The ID of the snapshot used to create the cloud disk.
  ///
  /// The SnapshotId and Size parameters have the following limitations:
  /// - If the snapshot capacity corresponding to the `snapshot_id` parameter is greater than the specified `size` parameter, the Size of the cloud disk created is the Size of the specified snapshot.
  /// - If the snapshot capacity corresponding to the `snapshot_id` parameter is less than the set `size` parameter value, the Size of the cloud disk created is the specified `size` parameter value.
  final pulumi.Input<String>? snapshotId;
  /// The status of the disk.
  final pulumi.Input<String>? status;
  /// The label to which the instance is bound.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DiskState].
  /// [category] The category of the disk. Valid values: `cloud_efficiency` (high-efficiency cloud disk), `cloud_ssd` (full Flash cloud disk), `local_hdd` (local HDD), `local_ssd` (local ssd).
  /// [createTime] The time when the disk was created.
  /// [diskName] The name of the disk.
  /// [encrypted] Specifies whether to encrypt the new system disk. Valid values: `true`, `false`(default).
  /// [ensRegionId] The ID of the edge node.
  /// [kmsKeyId] The ID of the KMS key used by the cloud disk. If `encrypted` is set to `true`, the service default key is used when KMSKeyId is empty.
  /// [paymentType] The billing method of the instance. Valid values: `PayAsYouGo`.
  /// [size] The size of the disk instance. Unit: GiB.
  /// [snapshotId] The ID of the snapshot used to create the cloud disk.
  /// [status] The status of the disk.
  /// [tags] The label to which the instance is bound.
  DiskState({
    this.category,
    this.createTime,
    this.diskName,
    this.encrypted,
    this.ensRegionId,
    this.kmsKeyId,
    this.paymentType,
    this.size,
    this.snapshotId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'createTime': ?createTime,
      'diskName': ?diskName,
      'encrypted': ?encrypted,
      'ensRegionId': ?ensRegionId,
      'kmsKeyId': ?kmsKeyId,
      'paymentType': ?paymentType,
      'size': ?size,
      'snapshotId': ?snapshotId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory DiskState.fromMap(Map<String, dynamic> map) {
    return DiskState(
      category: map['category'] == null ? null : (map['category'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      diskName: map['diskName'] == null ? null : (map['diskName'] as String).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted'] as bool).input(),
      ensRegionId: map['ensRegionId'] == null ? null : (map['ensRegionId'] as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      size: map['size'] == null ? null : (map['size'] as int).input(),
      snapshotId: map['snapshotId'] == null ? null : (map['snapshotId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

