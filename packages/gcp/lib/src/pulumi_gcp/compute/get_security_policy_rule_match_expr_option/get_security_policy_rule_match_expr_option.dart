// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_security_policy_rule_match_expr_option_recaptcha_option/get_security_policy_rule_match_expr_option_recaptcha_option.dart';

class GetSecurityPolicyRuleMatchExprOption {
  /// reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field has no effect.
  final List<GetSecurityPolicyRuleMatchExprOptionRecaptchaOption>
      recaptchaOptions;

  GetSecurityPolicyRuleMatchExprOption({
    required this.recaptchaOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recaptchaOptions'] = Input.encodeList<
        GetSecurityPolicyRuleMatchExprOptionRecaptchaOption,
        Map<String, dynamic>>(recaptchaOptions, (value) => value.toMap());
    return map;
  }

  factory GetSecurityPolicyRuleMatchExprOption.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityPolicyRuleMatchExprOption(
      recaptchaOptions:
          Input.decodeList<GetSecurityPolicyRuleMatchExprOptionRecaptchaOption>(
              map['recaptchaOptions'],
              (value) =>
                  GetSecurityPolicyRuleMatchExprOptionRecaptchaOption.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
