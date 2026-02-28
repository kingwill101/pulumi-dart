// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse {
  /// The match operator for the field.
  final String op;

  /// The value of the field.
  final String val;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse].
  /// [op] The match operator for the field.
  /// [val] The value of the field.
  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse({
    required this.op,
    required this.val,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['op'] = op;
    map['val'] = val;
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse(
      op: map['op'] as String,
      val: map['val'] as String,
    );
  }
}
