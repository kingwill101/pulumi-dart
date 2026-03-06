// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_object_lock_configuration_v2_rule.dart';

/// Input properties used for looking up and filtering BucketObjectLockConfigurationV2 resources.
class BucketObjectLockConfigurationV2State {
  /// Name of the bucket.
  final pulumi.Input<String>? bucket;
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

  /// Creates a new [BucketObjectLockConfigurationV2State].
  /// [bucket] Name of the bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [objectLockEnabled] Indicates whether this bucket has an Object Lock configuration enabled. Defaults to `Enabled`. Valid values: `Enabled`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rule] Configuration block for specifying the Object Lock rule for the specified object. See below.
  /// [token] This argument is deprecated and no longer needed to enable Object Lock.
  const BucketObjectLockConfigurationV2State({
    this.bucket,
    this.expectedBucketOwner,
    this.objectLockEnabled,
    this.region,
    this.rule,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'objectLockEnabled': ?objectLockEnabled,
      'region': ?region,
      'rule': ?pulumi.Input.mapOptionalInputValue<BucketObjectLockConfigurationV2Rule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'token': ?token,
    };
  }

  factory BucketObjectLockConfigurationV2State.fromMap(Map<String, dynamic> map) {
    return BucketObjectLockConfigurationV2State(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedBucketOwner: (() { final guardedValue = map['expectedBucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectLockEnabled: (() { final guardedValue = map['objectLockEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketObjectLockConfigurationV2Rule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

