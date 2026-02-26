// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponse {
  /// A list of site keys to be used during the validation of reCAPTCHA action-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  final List<String> actionTokenSiteKeys;

  /// A list of site keys to be used during the validation of reCAPTCHA session-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  final List<String> sessionTokenSiteKeys;

  SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponse({
    required this.actionTokenSiteKeys,
    required this.sessionTokenSiteKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionTokenSiteKeys'] = actionTokenSiteKeys;
    map['sessionTokenSiteKeys'] = sessionTokenSiteKeys;
    return map;
  }

  factory SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponse.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponse(
      actionTokenSiteKeys: (map['actionTokenSiteKeys'] as List).cast<String>(),
      sessionTokenSiteKeys:
          (map['sessionTokenSiteKeys'] as List).cast<String>(),
    );
  }
}
