// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pimonly_mode_settings.dart';
import 'role_management_policy_rule_target.dart';

/// The role management policy PIM only mode rule.
class RoleManagementPolicyPimOnlyModeRule {
  /// The id of the rule.
  final pulumi.Input<String>? id;
  /// The PIM Only Mode settings
  final pulumi.Input<PIMOnlyModeSettings>? pimOnlyModeSettings;
  /// The type of rule
  /// Expected value is 'RoleManagementPolicyPimOnlyModeRule'.
  final pulumi.Input<String> ruleType;
  /// The target of the current rule.
  final pulumi.Input<RoleManagementPolicyRuleTarget>? target;

  /// Creates a new [RoleManagementPolicyPimOnlyModeRule].
  /// [id] The id of the rule.
  /// [pimOnlyModeSettings] The PIM Only Mode settings
  /// [ruleType] The type of rule
  /// [target] The target of the current rule.
  RoleManagementPolicyPimOnlyModeRule({
    this.id,
    this.pimOnlyModeSettings,
    required this.ruleType,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'pimOnlyModeSettings': ?pulumi.Input.mapOptionalInputValue<PIMOnlyModeSettings, Map<String, dynamic>>(pimOnlyModeSettings, (value) => value.toMap()),
      'ruleType': ruleType,
      'target': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyRuleTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory RoleManagementPolicyPimOnlyModeRule.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyPimOnlyModeRule(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      pimOnlyModeSettings: map['pimOnlyModeSettings'] == null ? null : (PIMOnlyModeSettings.fromMap((map['pimOnlyModeSettings']! as Map).cast<String, dynamic>())).input(),
      ruleType: (map['ruleType'] as String).input(),
      target: map['target'] == null ? null : (RoleManagementPolicyRuleTarget.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

