// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_ownership_controls_rule.dart';

/// Input properties used for looking up and filtering BucketOwnershipControls resources.
class BucketOwnershipControlsState {
  /// Name of the bucket that you want to associate this access point with.
  final pulumi.Input<String>? bucket;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block(s) with Ownership Controls rules. Detailed below.
  final pulumi.Input<BucketOwnershipControlsRule>? rule;

  /// Creates a new [BucketOwnershipControlsState].
  /// [bucket] Name of the bucket that you want to associate this access point with.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rule] Configuration block(s) with Ownership Controls rules. Detailed below.
  BucketOwnershipControlsState({
    this.bucket,
    this.region,
    this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'region': ?region,
      'rule': ?pulumi.Input.mapOptionalInputValue<BucketOwnershipControlsRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
    };
  }

  factory BucketOwnershipControlsState.fromMap(Map<String, dynamic> map) {
    return BucketOwnershipControlsState(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketOwnershipControlsRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

