// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_ownership_controls_rule/bucket_ownership_controls_rule.dart';

/// The set of arguments for BucketOwnershipControls.
class BucketOwnershipControlsArgs {
  /// Name of the bucket that you want to associate this access point with.
  final pulumi.Input<String> bucket;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block(s) with Ownership Controls rules. Detailed below.
  final pulumi.Input<BucketOwnershipControlsRule> rule;

  BucketOwnershipControlsArgs({
    required this.bucket,
    this.region,
    required this.rule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['rule'] = pulumi.Input.mapInputValue<BucketOwnershipControlsRule,
        Map<String, dynamic>>(rule, (value) => value.toMap());
    return map;
  }

  factory BucketOwnershipControlsArgs.fromMap(Map<String, dynamic> map) {
    return BucketOwnershipControlsArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      rule: pulumi.Input.asInput<BucketOwnershipControlsRule>(map['rule']),
    );
  }
}
