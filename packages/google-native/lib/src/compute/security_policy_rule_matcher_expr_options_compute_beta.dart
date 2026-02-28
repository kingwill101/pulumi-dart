// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_rule_matcher_expr_options_recaptcha_options_compute_beta.dart';

class SecurityPolicyRuleMatcherExprOptionsComputeBeta {
  /// reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field will have no effect.
  final SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsComputeBeta?
      recaptchaOptions;

  /// Creates a new [SecurityPolicyRuleMatcherExprOptionsComputeBeta].
  /// [recaptchaOptions] reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field will have no effect.
  SecurityPolicyRuleMatcherExprOptionsComputeBeta({
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

  factory SecurityPolicyRuleMatcherExprOptionsComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherExprOptionsComputeBeta(
      recaptchaOptions: map['recaptchaOptions'] == null
          ? null
          : SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsComputeBeta
              .fromMap(
                  (map['recaptchaOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
