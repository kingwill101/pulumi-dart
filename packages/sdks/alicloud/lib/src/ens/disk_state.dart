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
    pulumi.Output<String>? category,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? diskName,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<String>? ensRegionId,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? size,
    pulumi.Output<String>? snapshotId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      diskName = pulumi.Input.asOptionalInput<String>(diskName),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      ensRegionId = pulumi.Input.asOptionalInput<String>(ensRegionId),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      size = pulumi.Input.asOptionalInput<int>(size),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      diskName: map['diskName'] == null ? null : pulumi.Output.create<String>(map['diskName'] as String),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      ensRegionId: map['ensRegionId'] == null ? null : pulumi.Output.create<String>(map['ensRegionId'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      snapshotId: map['snapshotId'] == null ? null : pulumi.Output.create<String>(map['snapshotId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

