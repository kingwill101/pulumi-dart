// ignore_for_file: unused_element, unnecessary_cast

import '../deny_policy_rule_deny_rule/deny_policy_rule_deny_rule.dart';

class DenyPolicyRule {
  /// A deny rule in an IAM deny policy.
  /// Structure is documented below.
  final DenyPolicyRuleDenyRule? denyRule;

  /// The description of the rule.
  final String? description;

  DenyPolicyRule({
    this.denyRule,
    this.description,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final denyRuleValue = denyRule;
    if (denyRuleValue != null) {
      map['denyRule'] = denyRuleValue.toMap();
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    return map;
  }

  factory DenyPolicyRule.fromMap(Map<String, dynamic> map) {
    return DenyPolicyRule(
      denyRule: map['denyRule'] == null
          ? null
          : DenyPolicyRuleDenyRule.fromMap(
              (map['denyRule'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
    );
  }
}
