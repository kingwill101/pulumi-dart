// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponseComputeV1 {
  /// Name of the user-defined field, as given in the definition.
  final String name;

  /// Matching values of the field. Each element can be a 32-bit unsigned decimal or hexadecimal (starting with "0x") number (e.g. "64") or range (e.g. "0x400-0x7ff").
  final List<String> values;

  /// Creates a new [SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponseComputeV1].
  /// [name] Name of the user-defined field, as given in the definition.
  /// [values] Matching values of the field. Each element can be a 32-bit unsigned decimal or hexadecimal (starting with "0x") number (e.g. "64") or range (e.g. "0x400-0x7ff").
  SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponseComputeV1({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponseComputeV1(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
