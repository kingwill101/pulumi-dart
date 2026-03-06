// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_object_lock_configuration_rule_default_retention.dart';

class BucketObjectLockConfigurationRule {
  /// Configuration block for specifying the default Object Lock retention settings for new objects placed in the specified bucket. See below.
  final pulumi.Input<BucketObjectLockConfigurationRuleDefaultRetention> defaultRetention;

  /// Creates a new [BucketObjectLockConfigurationRule].
  /// [defaultRetention] Configuration block for specifying the default Object Lock retention settings for new objects placed in the specified bucket. See below.
  const BucketObjectLockConfigurationRule({
    required this.defaultRetention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultRetention': pulumi.Input.mapInputValue<BucketObjectLockConfigurationRuleDefaultRetention, Map<String, dynamic>>(defaultRetention, (value) => value.toMap()),
    };
  }

  factory BucketObjectLockConfigurationRule.fromMap(Map<String, dynamic> map) {
    return BucketObjectLockConfigurationRule(
      defaultRetention: pulumi.Input.fromValue(BucketObjectLockConfigurationRuleDefaultRetention.fromMap((map['defaultRetention']! as Map).cast<String, dynamic>())),
    );
  }
}

