// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_rule_matcher_expr_options_recaptcha_options_response2.dart';

class SecurityPolicyRuleMatcherExprOptionsResponse2 {
  /// reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field will have no effect.
  final SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponse2
      recaptchaOptions;

  SecurityPolicyRuleMatcherExprOptionsResponse2({
    required this.recaptchaOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recaptchaOptions'] = recaptchaOptions.toMap();
    return map;
  }

  factory SecurityPolicyRuleMatcherExprOptionsResponse2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherExprOptionsResponse2(
      recaptchaOptions:
          SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponse2.fromMap(
              (map['recaptchaOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
