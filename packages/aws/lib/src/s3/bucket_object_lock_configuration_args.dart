// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_object_lock_configuration_rule.dart';

/// {@template pulumi_s3_bucket_object_lock_configuration_bucket_object_lock_configuration_args_doc}
/// The set of arguments for BucketObjectLockConfiguration.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_object_lock_configuration_bucket_object_lock_configuration_args_doc}
class BucketObjectLockConfigurationArgs {
  /// Name of the bucket.
  final pulumi.Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Indicates whether this bucket has an Object Lock configuration enabled. Defaults to `Enabled`. Valid values: `Enabled`.
  final pulumi.Input<String>? objectLockEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block for specifying the Object Lock rule for the specified object. See below.
  final pulumi.Input<BucketObjectLockConfigurationRule>? rule;

  /// This argument is deprecated and no longer needed to enable Object Lock.
  /// To enable Object Lock for an existing bucket, you must first enable versioning on the bucket and then enable Object Lock. For more details on versioning, see the `aws.s3.BucketVersioning` resource.
  final pulumi.Input<String>? token;

  /// Creates a new [BucketObjectLockConfigurationArgs].
  /// [bucket] Name of the bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [objectLockEnabled] Indicates whether this bucket has an Object Lock configuration enabled. Defaults to `Enabled`. Valid values: `Enabled`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rule] Configuration block for specifying the Object Lock rule for the specified object. See below.
  /// [token] This argument is deprecated and no longer needed to enable Object Lock.
  BucketObjectLockConfigurationArgs({
    required String bucket,
    String? expectedBucketOwner,
    String? objectLockEnabled,
    String? region,
    BucketObjectLockConfigurationRule? rule,
    String? token,
  })  : bucket = pulumi.Input.asInput<String>(bucket),
        expectedBucketOwner =
            pulumi.Input.asOptionalInput<String>(expectedBucketOwner),
        objectLockEnabled =
            pulumi.Input.asOptionalInput<String>(objectLockEnabled),
        region = pulumi.Input.asOptionalInput<String>(region),
        rule = pulumi.Input.asOptionalInput<BucketObjectLockConfigurationRule>(
            rule),
        token = pulumi.Input.asOptionalInput<String>(token);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    final objectLockEnabledValue = objectLockEnabled;
    if (objectLockEnabledValue != null) {
      map['objectLockEnabled'] = objectLockEnabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final ruleValue = rule;
    if (ruleValue != null) {
      map['rule'] = pulumi.Input.mapOptionalInputValue<
          BucketObjectLockConfigurationRule,
          Map<String, dynamic>>(ruleValue, (value) => value.toMap());
    }
    final tokenValue = token;
    if (tokenValue != null) {
      map['token'] = tokenValue;
    }
    return map;
  }

  factory BucketObjectLockConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return BucketObjectLockConfigurationArgs(
      bucket: map['bucket'] as String,
      expectedBucketOwner: map['expectedBucketOwner'] == null
          ? null
          : map['expectedBucketOwner'] as String,
      objectLockEnabled: map['objectLockEnabled'] == null
          ? null
          : map['objectLockEnabled'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      rule: map['rule'] == null
          ? null
          : BucketObjectLockConfigurationRule.fromMap(
              (map['rule'] as Map).cast<String, dynamic>()),
      token: map['token'] == null ? null : map['token'] as String,
    );
  }
}
