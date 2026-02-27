// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta {
  /// The match operator for the field.
  final String op;

  /// The value of the field.
  final String val;

  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta({
    required this.op,
    required this.val,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['op'] = op;
    map['val'] = val;
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta(
      op: map['op'] as String,
      val: map['val'] as String,
    );
  }
}
