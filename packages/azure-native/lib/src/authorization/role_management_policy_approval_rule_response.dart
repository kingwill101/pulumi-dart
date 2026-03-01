// ignore_for_file: unused_element, unnecessary_cast

import 'approval_settings_response.dart';
import 'role_management_policy_rule_target_response.dart';

/// The role management policy approval rule.
class RoleManagementPolicyApprovalRuleResponse {
  /// The id of the rule.
  final String? id;
  /// The type of rule
  /// Expected value is 'RoleManagementPolicyApprovalRule'.
  final String ruleType;
  /// The approval setting
  final ApprovalSettingsResponse? setting;
  /// The target of the current rule.
  final RoleManagementPolicyRuleTargetResponse? target;

  /// Creates a new [RoleManagementPolicyApprovalRuleResponse].
  /// [id] The id of the rule.
  /// [ruleType] The type of rule
  /// [setting] The approval setting
  /// [target] The target of the current rule.
  RoleManagementPolicyApprovalRuleResponse({
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

  factory RoleManagementPolicyApprovalRuleResponse.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyApprovalRuleResponse(
      id: map['id'] == null ? null : map['id'] as String,
      ruleType: map['ruleType'] as String,
      setting: map['setting'] == null ? null : ApprovalSettingsResponse.fromMap((map['setting'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : RoleManagementPolicyRuleTargetResponse.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

