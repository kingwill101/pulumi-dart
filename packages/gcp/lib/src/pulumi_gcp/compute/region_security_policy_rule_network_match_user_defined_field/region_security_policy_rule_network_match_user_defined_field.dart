// ignore_for_file: unused_element, unnecessary_cast

class RegionSecurityPolicyRuleNetworkMatchUserDefinedField {
  /// Name of the user-defined field, as given in the definition.
  final String? name;

  /// Matching values of the field. Each element can be a 32-bit unsigned decimal or hexadecimal (starting with "0x") number (e.g. "64") or range (e.g. "0x400-0x7ff").
  final List<String>? values;

  RegionSecurityPolicyRuleNetworkMatchUserDefinedField({
    this.name,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory RegionSecurityPolicyRuleNetworkMatchUserDefinedField.fromMap(
      Map<String, dynamic> map) {
    return RegionSecurityPolicyRuleNetworkMatchUserDefinedField(
      name: map['name'] == null ? null : map['name'] as String,
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
