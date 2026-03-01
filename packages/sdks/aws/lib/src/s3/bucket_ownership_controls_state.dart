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
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? region,
    pulumi.Output<BucketOwnershipControlsRule>? rule,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      region = pulumi.Input.asOptionalInput<String>(region),
      rule = pulumi.Input.asOptionalInput<BucketOwnershipControlsRule>(rule);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'region': ?region,
      'rule': ?pulumi.Input.mapOptionalInputValue<BucketOwnershipControlsRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
    };
  }

  factory BucketOwnershipControlsState.fromMap(Map<String, dynamic> map) {
    return BucketOwnershipControlsState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rule: map['rule'] == null ? null : pulumi.Output.create<BucketOwnershipControlsRule>(BucketOwnershipControlsRule.fromMap((map['rule'] as Map).cast<String, dynamic>())),
    );
  }
}

