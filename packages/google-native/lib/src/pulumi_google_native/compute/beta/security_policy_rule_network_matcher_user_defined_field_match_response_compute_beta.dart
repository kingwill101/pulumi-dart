// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponseComputeBeta {
  /// Name of the user-defined field, as given in the definition.
  final String name;

  /// Matching values of the field. Each element can be a 32-bit unsigned decimal or hexadecimal (starting with "0x") number (e.g. "64") or range (e.g. "0x400-0x7ff").
  final List<String> values;

  SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponseComputeBeta({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponseComputeBeta(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
