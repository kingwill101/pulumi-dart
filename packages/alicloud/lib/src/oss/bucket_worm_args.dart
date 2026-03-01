// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_bucket_worm_bucket_worm_args_doc}
/// The set of arguments for BucketWorm.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_worm_bucket_worm_args_doc}
class BucketWormArgs {
  /// The name of the bucket
  final pulumi.Input<String> bucket;
  /// The specified number of days to retain the Object.
  final pulumi.Input<int>? retentionPeriodInDays;
  /// The status of the compliance retention policy. Optional values:
  /// - `InProgress`: After a compliance retention policy is created, the policy is in the InProgress status by default, and the validity period of this status is 24 hours.
  /// - `Locked`: The compliance retention policy is Locked.
  final pulumi.Input<String>? status;

  /// Creates a new [BucketWormArgs].
  /// [bucket] The name of the bucket
  /// [retentionPeriodInDays] The specified number of days to retain the Object.
  /// [status] The status of the compliance retention policy. Optional values:
  BucketWormArgs({
    required String bucket,
    int? retentionPeriodInDays,
    String? status,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      retentionPeriodInDays = pulumi.Input.asOptionalInput<int>(retentionPeriodInDays),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'retentionPeriodInDays': ?retentionPeriodInDays,
      'status': ?status,
    };
  }

  factory BucketWormArgs.fromMap(Map<String, dynamic> map) {
    return BucketWormArgs(
      bucket: map['bucket'] as String,
      retentionPeriodInDays: map['retentionPeriodInDays'] == null ? null : map['retentionPeriodInDays'] as int,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

