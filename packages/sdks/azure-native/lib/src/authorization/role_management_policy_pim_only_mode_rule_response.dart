// ignore_for_file: unused_element, unnecessary_cast

import 'pimonly_mode_settings_response.dart';
import 'role_management_policy_rule_target_response.dart';

/// The role management policy PIM only mode rule.
class RoleManagementPolicyPimOnlyModeRuleResponse {
  /// The id of the rule.
  final String? id;
  /// The PIM Only Mode settings
  final PIMOnlyModeSettingsResponse? pimOnlyModeSettings;
  /// The type of rule
  /// Expected value is 'RoleManagementPolicyPimOnlyModeRule'.
  final String ruleType;
  /// The target of the current rule.
  final RoleManagementPolicyRuleTargetResponse? target;

  /// Creates a new [RoleManagementPolicyPimOnlyModeRuleResponse].
  /// [id] The id of the rule.
  /// [pimOnlyModeSettings] The PIM Only Mode settings
  /// [ruleType] The type of rule
  /// [target] The target of the current rule.
  RoleManagementPolicyPimOnlyModeRuleResponse({
    this.id,
    this.pimOnlyModeSettings,
    required this.ruleType,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'pimOnlyModeSettings': ?pimOnlyModeSettings == null ? null : pimOnlyModeSettings!.toMap(),
      'ruleType': ruleType,
      'target': ?target == null ? null : target!.toMap(),
    };
  }

  factory RoleManagementPolicyPimOnlyModeRuleResponse.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyPimOnlyModeRuleResponse(
      id: map['id'] == null ? null : map['id'] as String,
      pimOnlyModeSettings: map['pimOnlyModeSettings'] == null ? null : PIMOnlyModeSettingsResponse.fromMap((map['pimOnlyModeSettings'] as Map).cast<String, dynamic>()),
      ruleType: map['ruleType'] as String,
      target: map['target'] == null ? null : RoleManagementPolicyRuleTargetResponse.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

