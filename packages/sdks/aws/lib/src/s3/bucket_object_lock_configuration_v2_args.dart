// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_object_lock_configuration_v2_rule.dart';

/// {@template pulumi_s3_bucket_object_lock_configuration_v2_bucket_object_lock_configuration_v2_args_doc}
/// The set of arguments for BucketObjectLockConfigurationV2.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_object_lock_configuration_v2_bucket_object_lock_configuration_v2_args_doc}
class BucketObjectLockConfigurationV2Args {
  /// Name of the bucket.
  final pulumi.Input<String> bucket;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Indicates whether this bucket has an Object Lock configuration enabled. Defaults to `Enabled`. Valid values: `Enabled`.
  final pulumi.Input<String>? objectLockEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for specifying the Object Lock rule for the specified object. See below.
  final pulumi.Input<BucketObjectLockConfigurationV2Rule>? rule;
  /// This argument is deprecated and no longer needed to enable Object Lock.
  /// To enable Object Lock for an existing bucket, you must first enable versioning on the bucket and then enable Object Lock. For more details on versioning, see the `aws.s3.BucketVersioning` resource.
  final pulumi.Input<String>? token;

  /// Creates a new [BucketObjectLockConfigurationV2Args].
  /// [bucket] Name of the bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [objectLockEnabled] Indicates whether this bucket has an Object Lock configuration enabled. Defaults to `Enabled`. Valid values: `Enabled`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rule] Configuration block for specifying the Object Lock rule for the specified object. See below.
  /// [token] This argument is deprecated and no longer needed to enable Object Lock.
  BucketObjectLockConfigurationV2Args({
    required this.bucket,
    this.expectedBucketOwner,
    this.objectLockEnabled,
    this.region,
    this.rule,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'objectLockEnabled': ?objectLockEnabled,
      'region': ?region,
      'rule': ?pulumi.Input.mapOptionalInputValue<BucketObjectLockConfigurationV2Rule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'token': ?token,
    };
  }

  factory BucketObjectLockConfigurationV2Args.fromMap(Map<String, dynamic> map) {
    return BucketObjectLockConfigurationV2Args(
      bucket: (map['bucket'] as String).input(),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : (map['expectedBucketOwner'] as String).input(),
      objectLockEnabled: map['objectLockEnabled'] == null ? null : (map['objectLockEnabled'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      rule: map['rule'] == null ? null : (BucketObjectLockConfigurationV2Rule.fromMap((map['rule'] as Map).cast<String, dynamic>())).input(),
      token: map['token'] == null ? null : (map['token'] as String).input(),
    );
  }
}

