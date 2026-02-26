// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_rule_matcher_expr_options_recaptcha_options2.dart';

class SecurityPolicyRuleMatcherExprOptions2 {
  /// reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field will have no effect.
  final SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions2? recaptchaOptions;

  SecurityPolicyRuleMatcherExprOptions2({
    this.recaptchaOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final recaptchaOptionsValue = recaptchaOptions;
    if (recaptchaOptionsValue != null) {
      map['recaptchaOptions'] = recaptchaOptionsValue.toMap();
    }
    return map;
  }

  factory SecurityPolicyRuleMatcherExprOptions2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherExprOptions2(
      recaptchaOptions: map['recaptchaOptions'] == null
          ? null
          : SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions2.fromMap(
              (map['recaptchaOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
