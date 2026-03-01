// ignore_for_file: unused_element, unnecessary_cast

import 'role_management_policy_rule_target.dart';

/// The role management policy enablement rule.
class RoleManagementPolicyEnablementRule {
  /// The list of enabled rules.
  final List<String>? enabledRules;
  /// The id of the rule.
  final String? id;
  /// The type of rule
  /// Expected value is 'RoleManagementPolicyEnablementRule'.
  final String ruleType;
  /// The target of the current rule.
  final RoleManagementPolicyRuleTarget? target;

  /// Creates a new [RoleManagementPolicyEnablementRule].
  /// [enabledRules] The list of enabled rules.
  /// [id] The id of the rule.
  /// [ruleType] The type of rule
  /// [target] The target of the current rule.
  RoleManagementPolicyEnablementRule({
    this.enabledRules,
    this.id,
    required this.ruleType,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledRules': ?enabledRules,
      'id': ?id,
      'ruleType': ruleType,
      'target': ?target == null ? null : target!.toMap(),
    };
  }

  factory RoleManagementPolicyEnablementRule.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyEnablementRule(
      enabledRules: map['enabledRules'] == null ? null : (map['enabledRules'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      ruleType: map['ruleType'] as String,
      target: map['target'] == null ? null : RoleManagementPolicyRuleTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

