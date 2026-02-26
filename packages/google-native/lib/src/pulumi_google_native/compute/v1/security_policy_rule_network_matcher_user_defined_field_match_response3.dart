// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponse3 {
  /// Name of the user-defined field, as given in the definition.
  final String name;

  /// Matching values of the field. Each element can be a 32-bit unsigned decimal or hexadecimal (starting with "0x") number (e.g. "64") or range (e.g. "0x400-0x7ff").
  final List<String> values;

  SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponse3({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponse3.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponse3(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
