// ignore_for_file: unused_element, unnecessary_cast

class GetRegionSecurityPolicyRuleNetworkMatchUserDefinedField {
  /// The name of the Region Security Policy.
  final String name;

  /// Matching values of the field. Each element can be a 32-bit unsigned decimal or hexadecimal (starting with "0x") number (e.g. "64") or range (e.g. "0x400-0x7ff").
  final List<String> values;

  /// Creates a new [GetRegionSecurityPolicyRuleNetworkMatchUserDefinedField].
  /// [name] The name of the Region Security Policy.
  /// [values] Matching values of the field. Each element can be a 32-bit unsigned decimal or hexadecimal (starting with "0x") number (e.g. "64") or range (e.g. "0x400-0x7ff").
  GetRegionSecurityPolicyRuleNetworkMatchUserDefinedField({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetRegionSecurityPolicyRuleNetworkMatchUserDefinedField.fromMap(
      Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRuleNetworkMatchUserDefinedField(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
