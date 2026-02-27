// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleRedirectOptionsResponseComputeV1 {
  /// Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  final String target;

  /// Type of the redirect action.
  final String type;

  SecurityPolicyRuleRedirectOptionsResponseComputeV1({
    required this.target,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['target'] = target;
    map['type'] = type;
    return map;
  }

  factory SecurityPolicyRuleRedirectOptionsResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleRedirectOptionsResponseComputeV1(
      target: map['target'] as String,
      type: map['type'] as String,
    );
  }
}
