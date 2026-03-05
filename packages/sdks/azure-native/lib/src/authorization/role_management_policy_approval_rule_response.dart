// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'approval_settings_response.dart';
import 'role_management_policy_rule_target_response.dart';

/// The role management policy approval rule.
class RoleManagementPolicyApprovalRuleResponse {
  /// The id of the rule.
  final pulumi.Input<String>? id;
  /// The type of rule
  /// Expected value is 'RoleManagementPolicyApprovalRule'.
  final pulumi.Input<String> ruleType;
  /// The approval setting
  final pulumi.Input<ApprovalSettingsResponse>? setting;
  /// The target of the current rule.
  final pulumi.Input<RoleManagementPolicyRuleTargetResponse>? target;

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
      'setting': ?pulumi.Input.mapOptionalInputValue<ApprovalSettingsResponse, Map<String, dynamic>>(setting, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyRuleTargetResponse, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory RoleManagementPolicyApprovalRuleResponse.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyApprovalRuleResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
      setting: (() { final guardedValue = map['setting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApprovalSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleManagementPolicyRuleTargetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

