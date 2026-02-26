// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse2 {
  /// The match operator for the field.
  final String op;

  /// The value of the field.
  final String val;

  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse2({
    required this.op,
    required this.val,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['op'] = op;
    map['val'] = val;
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse2(
      op: map['op'] as String,
      val: map['val'] as String,
    );
  }
}
