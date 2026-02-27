// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_logging_v2_target_grant/bucket_logging_v2_target_grant.dart';
import '../bucket_logging_v2_target_object_key_format/bucket_logging_v2_target_object_key_format.dart';

/// The set of arguments for BucketLoggingV2.
class BucketLoggingV2Args {
  /// Name of the bucket.
  final pulumi.Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of the bucket where you want Amazon S3 to store server access logs.
  final pulumi.Input<String> targetBucket;

  /// Set of configuration blocks with information for granting permissions. See below.
  final pulumi.Input<List<BucketLoggingV2TargetGrant>>? targetGrants;

  /// Amazon S3 key format for log objects. See below.
  final pulumi.Input<BucketLoggingV2TargetObjectKeyFormat>?
      targetObjectKeyFormat;

  /// Prefix for all log object keys.
  final pulumi.Input<String> targetPrefix;

  BucketLoggingV2Args({
    required this.bucket,
    this.expectedBucketOwner,
    this.region,
    required this.targetBucket,
    this.targetGrants,
    this.targetObjectKeyFormat,
    required this.targetPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['targetBucket'] = targetBucket;
    final targetGrantsValue = targetGrants;
    if (targetGrantsValue != null) {
      map['targetGrants'] = pulumi.Input.mapOptionalInputValue<
              List<BucketLoggingV2TargetGrant>, List<Map<String, dynamic>>>(
          targetGrantsValue,
          (value) => pulumi.Input.encodeList<BucketLoggingV2TargetGrant,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final targetObjectKeyFormatValue = targetObjectKeyFormat;
    if (targetObjectKeyFormatValue != null) {
      map['targetObjectKeyFormat'] = pulumi.Input.mapOptionalInputValue<
              BucketLoggingV2TargetObjectKeyFormat, Map<String, dynamic>>(
          targetObjectKeyFormatValue, (value) => value.toMap());
    }
    map['targetPrefix'] = targetPrefix;
    return map;
  }

  factory BucketLoggingV2Args.fromMap(Map<String, dynamic> map) {
    return BucketLoggingV2Args(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      expectedBucketOwner:
          pulumi.Input.asOptionalInput<String>(map['expectedBucketOwner']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      targetBucket: pulumi.Input.asInput<String>(map['targetBucket']),
      targetGrants:
          pulumi.Input.asOptionalInput<List<BucketLoggingV2TargetGrant>>(
              map['targetGrants']),
      targetObjectKeyFormat:
          pulumi.Input.asOptionalInput<BucketLoggingV2TargetObjectKeyFormat>(
              map['targetObjectKeyFormat']),
      targetPrefix: pulumi.Input.asInput<String>(map['targetPrefix']),
    );
  }
}
