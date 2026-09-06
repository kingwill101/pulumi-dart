// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_management_policy_rule_target_response.dart';

/// The role management policy authentication context rule.
class RoleManagementPolicyAuthenticationContextRuleResponse {
  /// The claim value.
  final pulumi.Input<String?>? claimValue;
  /// The id of the rule.
  final pulumi.Input<String?>? id;
  /// The value indicating if rule is enabled.
  final pulumi.Input<bool?>? isEnabled;
  /// The type of rule
  /// Expected value is 'RoleManagementPolicyAuthenticationContextRule'.
  final pulumi.Input<String> ruleType;
  /// The target of the current rule.
  final pulumi.Input<RoleManagementPolicyRuleTargetResponse?>? target;

  /// Creates a new [RoleManagementPolicyAuthenticationContextRuleResponse].
  /// [claimValue] The claim value.
  /// [id] The id of the rule.
  /// [isEnabled] The value indicating if rule is enabled.
  /// [ruleType] The type of rule
  /// [target] The target of the current rule.
  const RoleManagementPolicyAuthenticationContextRuleResponse({
    this.claimValue,
    this.id,
    this.isEnabled,
    required this.ruleType,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimValue': ?claimValue,
      'id': ?id,
      'isEnabled': ?isEnabled,
      'ruleType': ruleType,
      'target': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyRuleTargetResponse, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory RoleManagementPolicyAuthenticationContextRuleResponse.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyAuthenticationContextRuleResponse(
      claimValue: (() { final guardedValue = map['claimValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleManagementPolicyRuleTargetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
