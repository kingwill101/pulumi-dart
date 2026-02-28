// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_rule_matcher_expr_options_recaptcha_options_response.dart';

class SecurityPolicyRuleMatcherExprOptionsResponse {
  /// reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field will have no effect.
  final SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponse
      recaptchaOptions;

  /// Creates a new [SecurityPolicyRuleMatcherExprOptionsResponse].
  /// [recaptchaOptions] reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field will have no effect.
  SecurityPolicyRuleMatcherExprOptionsResponse({
    required this.recaptchaOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recaptchaOptions'] = recaptchaOptions.toMap();
    return map;
  }

  factory SecurityPolicyRuleMatcherExprOptionsResponse.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherExprOptionsResponse(
      recaptchaOptions:
          SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponse.fromMap(
              (map['recaptchaOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
