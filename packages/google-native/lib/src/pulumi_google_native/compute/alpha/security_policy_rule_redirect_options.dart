// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_rule_redirect_options_type.dart';

class SecurityPolicyRuleRedirectOptions {
  /// Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  final String? target;

  /// Type of the redirect action.
  final SecurityPolicyRuleRedirectOptionsType? type;

  SecurityPolicyRuleRedirectOptions({
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

  factory SecurityPolicyRuleRedirectOptions.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleRedirectOptions(
      target: map['target'] == null ? null : map['target'] as String,
      type: map['type'] == null
          ? null
          : SecurityPolicyRuleRedirectOptionsType.fromValue(
              map['type'] as String),
    );
  }
}
