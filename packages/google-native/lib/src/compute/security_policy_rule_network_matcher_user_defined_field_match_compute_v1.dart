// ignore_for_file: unused_element, unnecessary_cast


class SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchComputeV1 {
  /// Name of the user-defined field, as given in the definition.
  final String? name;
  /// Matching values of the field. Each element can be a 32-bit unsigned decimal or hexadecimal (starting with "0x") number (e.g. "64") or range (e.g. "0x400-0x7ff").
  final List<String>? values;

  /// Creates a new [SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchComputeV1].
  /// [name] Name of the user-defined field, as given in the definition.
  /// [values] Matching values of the field. Each element can be a 32-bit unsigned decimal or hexadecimal (starting with "0x") number (e.g. "64") or range (e.g. "0x400-0x7ff").
  SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchComputeV1({
    this.name,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'values': ?values,
    };
  }

  factory SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchComputeV1(
      name: map['name'] == null ? null : map['name'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

