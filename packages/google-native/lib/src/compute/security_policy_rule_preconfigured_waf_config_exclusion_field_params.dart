// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_rule_preconfigured_waf_config_exclusion_field_params_op.dart';

class SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams {
  /// The match operator for the field.
  final SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp? op;

  /// The value of the field.
  final String? val;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams].
  /// [op] The match operator for the field.
  /// [val] The value of the field.
  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams({
    this.op,
    this.val,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'op': ?op == null ? null : op!.value, 'val': ?val};
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams(
      op: map['op'] == null
          ? null
          : SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp.fromValue(
              map['op'] as String,
            ),
      val: map['val'] == null ? null : map['val'] as String,
    );
  }
}
