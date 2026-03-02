// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pimonly_mode_settings_response.dart';
import 'role_management_policy_rule_target_response.dart';

/// The role management policy PIM only mode rule.
class RoleManagementPolicyPimOnlyModeRuleResponse {
  /// The id of the rule.
  final pulumi.Input<String>? id;
  /// The PIM Only Mode settings
  final pulumi.Input<PIMOnlyModeSettingsResponse>? pimOnlyModeSettings;
  /// The type of rule
  /// Expected value is 'RoleManagementPolicyPimOnlyModeRule'.
  final pulumi.Input<String> ruleType;
  /// The target of the current rule.
  final pulumi.Input<RoleManagementPolicyRuleTargetResponse>? target;

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
      'pimOnlyModeSettings': ?pulumi.Input.mapOptionalInputValue<PIMOnlyModeSettingsResponse, Map<String, dynamic>>(pimOnlyModeSettings, (value) => value.toMap()),
      'ruleType': ruleType,
      'target': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyRuleTargetResponse, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory RoleManagementPolicyPimOnlyModeRuleResponse.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyPimOnlyModeRuleResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      pimOnlyModeSettings: map['pimOnlyModeSettings'] == null ? null : (PIMOnlyModeSettingsResponse.fromMap((map['pimOnlyModeSettings']! as Map).cast<String, dynamic>())).input(),
      ruleType: (map['ruleType'] as String).input(),
      target: map['target'] == null ? null : (RoleManagementPolicyRuleTargetResponse.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

