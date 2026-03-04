// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule {
  final pulumi.Input<int> interval;
  final pulumi.Input<String> intervalUnit;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule].
  /// [interval] Required.
  /// [intervalUnit] Required.
  LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule({
    required this.interval,
    required this.intervalUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': interval,
      'intervalUnit': intervalUnit,
    };
  }

  factory LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule(
      interval: pulumi.Input.fromValue(map['interval'] as int),
      intervalUnit: pulumi.Input.fromValue(map['intervalUnit'] as String),
    );
  }
}
