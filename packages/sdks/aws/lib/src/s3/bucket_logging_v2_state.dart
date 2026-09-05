// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_logging_v2_target_grant.dart';
import 'bucket_logging_v2_target_object_key_format.dart';

/// Input properties used for looking up and filtering BucketLoggingV2 resources.
class BucketLoggingV2State {
  /// Name of the bucket.
  final pulumi.Input<String?>? bucket;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String?>? expectedBucketOwner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Name of the bucket where you want Amazon S3 to store server access logs.
  final pulumi.Input<String?>? targetBucket;
  /// Set of configuration blocks with information for granting permissions. See below.
  final pulumi.Input<List<BucketLoggingV2TargetGrant>?>? targetGrants;
  /// Amazon S3 key format for log objects. See below.
  final pulumi.Input<BucketLoggingV2TargetObjectKeyFormat?>? targetObjectKeyFormat;
  /// Prefix for all log object keys.
  final pulumi.Input<String?>? targetPrefix;

  /// Creates a new [BucketLoggingV2State].
  /// [bucket] Name of the bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetBucket] Name of the bucket where you want Amazon S3 to store server access logs.
  /// [targetGrants] Set of configuration blocks with information for granting permissions. See below.
  /// [targetObjectKeyFormat] Amazon S3 key format for log objects. See below.
  /// [targetPrefix] Prefix for all log object keys.
  const BucketLoggingV2State({
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
      'targetGrants': ?pulumi.Input.mapOptionalInputValue<List<BucketLoggingV2TargetGrant>, List<Map<String, dynamic>>>(targetGrants, (value) => pulumi.Input.encodeList<BucketLoggingV2TargetGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetObjectKeyFormat': ?pulumi.Input.mapOptionalInputValue<BucketLoggingV2TargetObjectKeyFormat, Map<String, dynamic>>(targetObjectKeyFormat, (value) => value.toMap()),
      'targetPrefix': ?targetPrefix,
    };
  }

  factory BucketLoggingV2State.fromMap(Map<String, dynamic> map) {
    return BucketLoggingV2State(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedBucketOwner: (() { final guardedValue = map['expectedBucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetBucket: (() { final guardedValue = map['targetBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetGrants: (() { final guardedValue = map['targetGrants']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketLoggingV2TargetGrant>(guardedValue, (value) => BucketLoggingV2TargetGrant.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetObjectKeyFormat: (() { final guardedValue = map['targetObjectKeyFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLoggingV2TargetObjectKeyFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetPrefix: (() { final guardedValue = map['targetPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
