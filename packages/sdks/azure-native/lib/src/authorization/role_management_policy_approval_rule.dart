// ignore_for_file: unused_element, unnecessary_cast

import 'approval_settings.dart';
import 'role_management_policy_rule_target.dart';

/// The role management policy approval rule.
class RoleManagementPolicyApprovalRule {
  /// The id of the rule.
  final String? id;
  /// The type of rule
  /// Expected value is 'RoleManagementPolicyApprovalRule'.
  final String ruleType;
  /// The approval setting
  final ApprovalSettings? setting;
  /// The target of the current rule.
  final RoleManagementPolicyRuleTarget? target;

  /// Creates a new [RoleManagementPolicyApprovalRule].
  /// [id] The id of the rule.
  /// [ruleType] The type of rule
  /// [setting] The approval setting
  /// [target] The target of the current rule.
  RoleManagementPolicyApprovalRule({
    this.id,
    required this.ruleType,
    this.setting,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ruleType': ruleType,
      'setting': ?setting == null ? null : setting!.toMap(),
      'target': ?target == null ? null : target!.toMap(),
    };
  }

  factory RoleManagementPolicyApprovalRule.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyApprovalRule(
      id: map['id'] == null ? null : map['id'] as String,
      ruleType: map['ruleType'] as String,
      setting: map['setting'] == null ? null : ApprovalSettings.fromMap((map['setting'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : RoleManagementPolicyRuleTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

