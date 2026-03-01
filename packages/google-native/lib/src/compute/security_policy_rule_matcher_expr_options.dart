// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_rule_matcher_expr_options_recaptcha_options.dart';

class SecurityPolicyRuleMatcherExprOptions {
  /// reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field will have no effect.
  final SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions? recaptchaOptions;

  /// Creates a new [SecurityPolicyRuleMatcherExprOptions].
  /// [recaptchaOptions] reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field will have no effect.
  SecurityPolicyRuleMatcherExprOptions({this.recaptchaOptions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recaptchaOptions': ?recaptchaOptions == null
          ? null
          : recaptchaOptions!.toMap(),
    };
  }

  factory SecurityPolicyRuleMatcherExprOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRuleMatcherExprOptions(
      recaptchaOptions: map['recaptchaOptions'] == null
          ? null
          : SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions.fromMap(
              (map['recaptchaOptions'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
