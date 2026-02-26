// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3 {
  /// The match operator for the field.
  final String op;

  /// The value of the field.
  final String val;

  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3({
    required this.op,
    required this.val,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['op'] = op;
    map['val'] = val;
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3(
      op: map['op'] as String,
      val: map['val'] as String,
    );
  }
}
