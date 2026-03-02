// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_logging_target_grant.dart';
import 'bucket_logging_target_object_key_format.dart';

/// Input properties used for looking up and filtering BucketLogging resources.
class BucketLoggingState {
  /// Name of the bucket.
  final pulumi.Input<String>? bucket;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the bucket where you want Amazon S3 to store server access logs.
  final pulumi.Input<String>? targetBucket;
  /// Set of configuration blocks with information for granting permissions. See below.
  final pulumi.Input<List<BucketLoggingTargetGrant>>? targetGrants;
  /// Amazon S3 key format for log objects. See below.
  final pulumi.Input<BucketLoggingTargetObjectKeyFormat>? targetObjectKeyFormat;
  /// Prefix for all log object keys.
  final pulumi.Input<String>? targetPrefix;

  /// Creates a new [BucketLoggingState].
  /// [bucket] Name of the bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetBucket] Name of the bucket where you want Amazon S3 to store server access logs.
  /// [targetGrants] Set of configuration blocks with information for granting permissions. See below.
  /// [targetObjectKeyFormat] Amazon S3 key format for log objects. See below.
  /// [targetPrefix] Prefix for all log object keys.
  BucketLoggingState({
    this.bucket,
    this.expectedBucketOwner,
    this.region,
    this.targetBucket,
    this.targetGrants,
    this.targetObjectKeyFormat,
    this.targetPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'region': ?region,
      'targetBucket': ?targetBucket,
      'targetGrants': ?pulumi.Input.mapOptionalInputValue<List<BucketLoggingTargetGrant>, List<Map<String, dynamic>>>(targetGrants, (value) => pulumi.Input.encodeList<BucketLoggingTargetGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetObjectKeyFormat': ?pulumi.Input.mapOptionalInputValue<BucketLoggingTargetObjectKeyFormat, Map<String, dynamic>>(targetObjectKeyFormat, (value) => value.toMap()),
      'targetPrefix': ?targetPrefix,
    };
  }

  factory BucketLoggingState.fromMap(Map<String, dynamic> map) {
    return BucketLoggingState(
      bucket: map['bucket'] == null ? null : ((map['bucket'] as String).input()).input(),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : ((map['expectedBucketOwner'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      targetBucket: map['targetBucket'] == null ? null : ((map['targetBucket'] as String).input()).input(),
      targetGrants: map['targetGrants'] == null ? null : ((pulumi.Input.decodeList<BucketLoggingTargetGrant>(map['targetGrants']!, (value) => BucketLoggingTargetGrant.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      targetObjectKeyFormat: map['targetObjectKeyFormat'] == null ? null : ((BucketLoggingTargetObjectKeyFormat.fromMap((map['targetObjectKeyFormat']! as Map).cast<String, dynamic>())).input()).input(),
      targetPrefix: map['targetPrefix'] == null ? null : ((map['targetPrefix'] as String).input()).input(),
    );
  }
}

