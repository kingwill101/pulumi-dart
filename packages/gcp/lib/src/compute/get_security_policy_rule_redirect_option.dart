// ignore_for_file: unused_element, unnecessary_cast

class GetSecurityPolicyRuleRedirectOption {
  /// Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  final String target;

  /// Type of the redirect action. Available options: EXTERNAL_302: Must specify the corresponding target field in config. GOOGLE_RECAPTCHA: Cannot specify target field in config.
  final String type;

  /// Creates a new [GetSecurityPolicyRuleRedirectOption].
  /// [target] Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  /// [type] Type of the redirect action. Available options: EXTERNAL_302: Must specify the corresponding target field in config. GOOGLE_RECAPTCHA: Cannot specify target field in config.
  GetSecurityPolicyRuleRedirectOption({
    required this.target,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'target': target, 'type': type};
  }

  factory GetSecurityPolicyRuleRedirectOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSecurityPolicyRuleRedirectOption(
      target: map['target'] as String,
      type: map['type'] as String,
    );
  }
}
