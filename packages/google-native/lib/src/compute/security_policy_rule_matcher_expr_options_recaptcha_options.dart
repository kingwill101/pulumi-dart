// ignore_for_file: unused_element, unnecessary_cast


class SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions {
  /// A list of site keys to be used during the validation of reCAPTCHA action-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  final List<String>? actionTokenSiteKeys;
  /// A list of site keys to be used during the validation of reCAPTCHA session-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  final List<String>? sessionTokenSiteKeys;

  /// Creates a new [SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions].
  /// [actionTokenSiteKeys] A list of site keys to be used during the validation of reCAPTCHA action-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  /// [sessionTokenSiteKeys] A list of site keys to be used during the validation of reCAPTCHA session-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions({
    this.actionTokenSiteKeys,
    this.sessionTokenSiteKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionTokenSiteKeys': ?actionTokenSiteKeys,
      'sessionTokenSiteKeys': ?sessionTokenSiteKeys,
    };
  }

  factory SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions(
      actionTokenSiteKeys: map['actionTokenSiteKeys'] == null ? null : (map['actionTokenSiteKeys'] as List).cast<String>(),
      sessionTokenSiteKeys: map['sessionTokenSiteKeys'] == null ? null : (map['sessionTokenSiteKeys'] as List).cast<String>(),
    );
  }
}

