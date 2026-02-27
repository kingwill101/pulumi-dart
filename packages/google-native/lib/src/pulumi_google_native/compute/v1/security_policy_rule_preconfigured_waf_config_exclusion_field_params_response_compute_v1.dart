// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1 {
  /// The match operator for the field.
  final String op;

  /// The value of the field.
  final String val;

  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1({
    required this.op,
    required this.val,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['op'] = op;
    map['val'] = val;
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1(
      op: map['op'] as String,
      val: map['val'] as String,
    );
  }
}
