// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleRedirectOptionsResponse2 {
  /// Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  final String target;

  /// Type of the redirect action.
  final String type;

  SecurityPolicyRuleRedirectOptionsResponse2({
    required this.target,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['target'] = target;
    map['type'] = type;
    return map;
  }

  factory SecurityPolicyRuleRedirectOptionsResponse2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleRedirectOptionsResponse2(
      target: map['target'] as String,
      type: map['type'] as String,
    );
  }
}
