// ignore_for_file: unused_element, unnecessary_cast

import '../security_policy_rule_match_expr_options_recaptcha_options/security_policy_rule_match_expr_options_recaptcha_options.dart';

class SecurityPolicyRuleMatchExprOptions {
  /// reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field has no effect.
  /// Structure is documented below.
  final SecurityPolicyRuleMatchExprOptionsRecaptchaOptions recaptchaOptions;

  SecurityPolicyRuleMatchExprOptions({
    required this.recaptchaOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recaptchaOptions'] = recaptchaOptions.toMap();
    return map;
  }

  factory SecurityPolicyRuleMatchExprOptions.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatchExprOptions(
      recaptchaOptions:
          SecurityPolicyRuleMatchExprOptionsRecaptchaOptions.fromMap(
              (map['recaptchaOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
