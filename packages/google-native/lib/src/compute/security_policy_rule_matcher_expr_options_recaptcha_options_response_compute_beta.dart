// ignore_for_file: unused_element, unnecessary_cast


class SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponseComputeBeta {
  /// A list of site keys to be used during the validation of reCAPTCHA action-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  final List<String> actionTokenSiteKeys;
  /// A list of site keys to be used during the validation of reCAPTCHA session-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  final List<String> sessionTokenSiteKeys;

  /// Creates a new [SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponseComputeBeta].
  /// [actionTokenSiteKeys] A list of site keys to be used during the validation of reCAPTCHA action-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  /// [sessionTokenSiteKeys] A list of site keys to be used during the validation of reCAPTCHA session-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponseComputeBeta({
    required this.actionTokenSiteKeys,
    required this.sessionTokenSiteKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionTokenSiteKeys': actionTokenSiteKeys,
      'sessionTokenSiteKeys': sessionTokenSiteKeys,
    };
  }

  factory SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponseComputeBeta(
      actionTokenSiteKeys: (map['actionTokenSiteKeys'] as List).cast<String>(),
      sessionTokenSiteKeys: (map['sessionTokenSiteKeys'] as List).cast<String>(),
    );
  }
}

