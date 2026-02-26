// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_rule_redirect_options_type2.dart';

class SecurityPolicyRuleRedirectOptions2 {
  /// Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  final String? target;

  /// Type of the redirect action.
  final SecurityPolicyRuleRedirectOptionsType2? type;

  SecurityPolicyRuleRedirectOptions2({
    this.target,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final targetValue = target;
    if (targetValue != null) {
      map['target'] = targetValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory SecurityPolicyRuleRedirectOptions2.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleRedirectOptions2(
      target: map['target'] == null ? null : map['target'] as String,
      type: map['type'] == null
          ? null
          : SecurityPolicyRuleRedirectOptionsType2.fromValue(
              map['type'] as String),
    );
  }
}
