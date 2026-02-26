// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions2 {
  /// A list of site keys to be used during the validation of reCAPTCHA action-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  final List<String>? actionTokenSiteKeys;

  /// A list of site keys to be used during the validation of reCAPTCHA session-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  final List<String>? sessionTokenSiteKeys;

  SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions2({
    this.actionTokenSiteKeys,
    this.sessionTokenSiteKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionTokenSiteKeysValue = actionTokenSiteKeys;
    if (actionTokenSiteKeysValue != null) {
      map['actionTokenSiteKeys'] = actionTokenSiteKeysValue;
    }
    final sessionTokenSiteKeysValue = sessionTokenSiteKeys;
    if (sessionTokenSiteKeysValue != null) {
      map['sessionTokenSiteKeys'] = sessionTokenSiteKeysValue;
    }
    return map;
  }

  factory SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions2(
      actionTokenSiteKeys: map['actionTokenSiteKeys'] == null
          ? null
          : (map['actionTokenSiteKeys'] as List).cast<String>(),
      sessionTokenSiteKeys: map['sessionTokenSiteKeys'] == null
          ? null
          : (map['sessionTokenSiteKeys'] as List).cast<String>(),
    );
  }
}
