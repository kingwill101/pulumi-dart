// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule {
  final pulumi.Input<int> interval;
  final pulumi.Input<String> intervalUnit;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule].
  /// [interval] Required.
  /// [intervalUnit] Required.
  const LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule({
    required this.interval,
    required this.intervalUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': interval,
      'intervalUnit': intervalUnit,
    };
  }

  factory LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule(
      interval: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['interval'])),
      intervalUnit: pulumi.Input.fromValue(map['intervalUnit'] as String),
    );
  }
}
