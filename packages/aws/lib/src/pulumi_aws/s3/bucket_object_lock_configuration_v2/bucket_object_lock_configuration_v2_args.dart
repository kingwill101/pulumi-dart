// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_object_lock_configuration_v2_rule/bucket_object_lock_configuration_v2_rule.dart';

/// The set of arguments for BucketObjectLockConfigurationV2.
class BucketObjectLockConfigurationV2Args {
  /// Name of the bucket.
  final Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final Input<String>? expectedBucketOwner;

  /// Indicates whether this bucket has an Object Lock configuration enabled. Defaults to `Enabled`. Valid values: `Enabled`.
  final Input<String>? objectLockEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block for specifying the Object Lock rule for the specified object. See below.
  final Input<BucketObjectLockConfigurationV2Rule>? rule;

  /// This argument is deprecated and no longer needed to enable Object Lock.
  /// To enable Object Lock for an existing bucket, you must first enable versioning on the bucket and then enable Object Lock. For more details on versioning, see the <span pulumi-lang-nodejs="`aws.s3.BucketVersioning`" pulumi-lang-dotnet="`aws.s3.BucketVersioning`" pulumi-lang-go="`s3.BucketVersioning`" pulumi-lang-python="`s3.BucketVersioning`" pulumi-lang-yaml="`aws.s3.BucketVersioning`" pulumi-lang-java="`aws.s3.BucketVersioning`">`aws.s3.BucketVersioning`</span> resource.
  final Input<String>? token;

  BucketObjectLockConfigurationV2Args({
    required this.bucket,
    this.expectedBucketOwner,
    this.objectLockEnabled,
    this.region,
    this.rule,
    this.token,
  });

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
      map['rule'] = Input.mapOptionalInputValue<
          BucketObjectLockConfigurationV2Rule,
          Map<String, dynamic>>(ruleValue, (value) => value.toMap());
    }
    final tokenValue = token;
    if (tokenValue != null) {
      map['token'] = tokenValue;
    }
    return map;
  }

  factory BucketObjectLockConfigurationV2Args.fromMap(
      Map<String, dynamic> map) {
    return BucketObjectLockConfigurationV2Args(
      bucket: Input.asInput<String>(map['bucket']),
      expectedBucketOwner:
          Input.asOptionalInput<String>(map['expectedBucketOwner']),
      objectLockEnabled:
          Input.asOptionalInput<String>(map['objectLockEnabled']),
      region: Input.asOptionalInput<String>(map['region']),
      rule: Input.asOptionalInput<BucketObjectLockConfigurationV2Rule>(
          map['rule']),
      token: Input.asOptionalInput<String>(map['token']),
    );
  }
}
