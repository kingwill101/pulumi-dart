// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_management_policy_rule_target_response.dart';

/// The role management policy enablement rule.
class RoleManagementPolicyEnablementRuleResponse {
  /// The list of enabled rules.
  final pulumi.Input<List<String>>? enabledRules;
  /// The id of the rule.
  final pulumi.Input<String>? id;
  /// The type of rule
  /// Expected value is 'RoleManagementPolicyEnablementRule'.
  final pulumi.Input<String> ruleType;
  /// The target of the current rule.
  final pulumi.Input<RoleManagementPolicyRuleTargetResponse>? target;

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
      'target': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyRuleTargetResponse, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory RoleManagementPolicyEnablementRuleResponse.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyEnablementRuleResponse(
      enabledRules: map['enabledRules'] == null ? null : ((map['enabledRules']! as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      ruleType: (map['ruleType'] as String).input(),
      target: map['target'] == null ? null : (RoleManagementPolicyRuleTargetResponse.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

