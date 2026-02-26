// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleRateLimitOptionsExceedRedirectOptions {
  /// Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  final String? target;

  /// Type of the redirect action.
  final String? type;

  SecurityPolicyRuleRateLimitOptionsExceedRedirectOptions({
    this.target,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final targetValue = target;
    if (targetValue != null) {
      map['target'] = targetValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory SecurityPolicyRuleRateLimitOptionsExceedRedirectOptions.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleRateLimitOptionsExceedRedirectOptions(
      target: map['target'] == null ? null : map['target'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
