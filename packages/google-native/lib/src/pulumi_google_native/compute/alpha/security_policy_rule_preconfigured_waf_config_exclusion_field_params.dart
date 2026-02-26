// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_rule_preconfigured_waf_config_exclusion_field_params_op.dart';

class SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams {
  /// The match operator for the field.
  final SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp? op;

  /// The value of the field.
  final String? val;

  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams({
    this.op,
    this.val,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final opValue = op;
    if (opValue != null) {
      map['op'] = opValue.value;
    }
    final valValue = val;
    if (valValue != null) {
      map['val'] = valValue;
    }
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams(
      op: map['op'] == null
          ? null
          : SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp
              .fromValue(map['op'] as String),
      val: map['val'] == null ? null : map['val'] as String,
    );
  }
}
