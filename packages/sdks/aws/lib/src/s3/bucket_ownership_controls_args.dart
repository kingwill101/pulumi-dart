// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_ownership_controls_rule.dart';

/// {@template pulumi_s3_bucket_ownership_controls_bucket_ownership_controls_args_doc}
/// The set of arguments for BucketOwnershipControls.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_ownership_controls_bucket_ownership_controls_args_doc}
class BucketOwnershipControlsArgs {
  /// Name of the bucket that you want to associate this access point with.
  final pulumi.Input<String> bucket;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block(s) with Ownership Controls rules. Detailed below.
  final pulumi.Input<BucketOwnershipControlsRule> rule;

  /// Creates a new [BucketOwnershipControlsArgs].
  /// [bucket] Name of the bucket that you want to associate this access point with.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rule] Configuration block(s) with Ownership Controls rules. Detailed below.
  BucketOwnershipControlsArgs({
    required pulumi.Output<String> bucket,
    pulumi.Output<String>? region,
    required pulumi.Output<BucketOwnershipControlsRule> rule,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      region = pulumi.Input.asOptionalInput<String>(region),
      rule = pulumi.Input.asInput<BucketOwnershipControlsRule>(rule);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'region': ?region,
      'rule': pulumi.Input.mapInputValue<BucketOwnershipControlsRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
    };
  }

  factory BucketOwnershipControlsArgs.fromMap(Map<String, dynamic> map) {
    return BucketOwnershipControlsArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rule: pulumi.Output.create<BucketOwnershipControlsRule>(BucketOwnershipControlsRule.fromMap((map['rule'] as Map).cast<String, dynamic>())),
    );
  }
}

