// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule {
  final pulumi.Input<int> interval;
  final pulumi.Input<String> intervalUnit;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule].
  /// [interval] Required.
  /// [intervalUnit] Required.
  const LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule({
    required this.interval,
    required this.intervalUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': interval,
      'intervalUnit': intervalUnit,
    };
  }

  factory LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule(
      interval: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['interval'])),
      intervalUnit: pulumi.Input.fromValue(map['intervalUnit'] as String),
    );
  }
}
