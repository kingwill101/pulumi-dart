// ignore_for_file: unused_element, unnecessary_cast

import 'role_management_policy_rule_target_response.dart';

/// The role management policy enablement rule.
class RoleManagementPolicyEnablementRuleResponse {
  /// The list of enabled rules.
  final List<String>? enabledRules;
  /// The id of the rule.
  final String? id;
  /// The type of rule
  /// Expected value is 'RoleManagementPolicyEnablementRule'.
  final String ruleType;
  /// The target of the current rule.
  final RoleManagementPolicyRuleTargetResponse? target;

  /// Creates a new [RoleManagementPolicyEnablementRuleResponse].
  /// [enabledRules] The list of enabled rules.
  /// [id] The id of the rule.
  /// [ruleType] The type of rule
  /// [target] The target of the current rule.
  RoleManagementPolicyEnablementRuleResponse({
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

  factory RoleManagementPolicyEnablementRuleResponse.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyEnablementRuleResponse(
      enabledRules: map['enabledRules'] == null ? null : (map['enabledRules'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      ruleType: map['ruleType'] as String,
      target: map['target'] == null ? null : RoleManagementPolicyRuleTargetResponse.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

