// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketWorm resources.
class BucketWormState {
  /// The name of the bucket
  final pulumi.Input<String>? bucket;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The specified number of days to retain the Object.
  final pulumi.Input<int>? retentionPeriodInDays;
  /// The status of the compliance retention policy. Optional values:
  /// - `InProgress`: After a compliance retention policy is created, the policy is in the InProgress status by default, and the validity period of this status is 24 hours.
  /// - `Locked`: The compliance retention policy is Locked.
  final pulumi.Input<String>? status;
  /// The ID of the retention policy.
  final pulumi.Input<String>? wormId;

  /// Creates a new [BucketWormState].
  /// [bucket] The name of the bucket
  /// [createTime] The creation time of the resource
  /// [retentionPeriodInDays] The specified number of days to retain the Object.
  /// [status] The status of the compliance retention policy. Optional values:
  /// [wormId] The ID of the retention policy.
  BucketWormState({
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? createTime,
    pulumi.Output<int>? retentionPeriodInDays,
    pulumi.Output<String>? status,
    pulumi.Output<String>? wormId,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      retentionPeriodInDays = pulumi.Input.asOptionalInput<int>(retentionPeriodInDays),
      status = pulumi.Input.asOptionalInput<String>(status),
      wormId = pulumi.Input.asOptionalInput<String>(wormId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'createTime': ?createTime,
      'retentionPeriodInDays': ?retentionPeriodInDays,
      'status': ?status,
      'wormId': ?wormId,
    };
  }

  factory BucketWormState.fromMap(Map<String, dynamic> map) {
    return BucketWormState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      retentionPeriodInDays: map['retentionPeriodInDays'] == null ? null : pulumi.Output.create<int>(map['retentionPeriodInDays'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      wormId: map['wormId'] == null ? null : pulumi.Output.create<String>(map['wormId'] as String),
    );
  }
}

