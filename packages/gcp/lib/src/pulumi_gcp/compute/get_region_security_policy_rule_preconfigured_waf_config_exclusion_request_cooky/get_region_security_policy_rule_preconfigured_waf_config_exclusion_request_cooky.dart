// ignore_for_file: unused_element, unnecessary_cast

class GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky {
  /// You can specify an exact match or a partial match by using a field operator and a field value.
  /// Available options:
  /// EQUALS: The operator matches if the field value equals the specified value.
  /// STARTS_WITH: The operator matches if the field value starts with the specified value.
  /// ENDS_WITH: The operator matches if the field value ends with the specified value.
  /// CONTAINS: The operator matches if the field value contains the specified value.
  /// EQUALS_ANY: The operator matches if the field value is any value. Possible values: ["CONTAINS", "ENDS_WITH", "EQUALS", "EQUALS_ANY", "STARTS_WITH"]
  final String operator;

  /// A request field matching the specified value will be excluded from inspection during preconfigured WAF evaluation.
  /// The field value must be given if the field operator is not EQUALS_ANY, and cannot be given if the field operator is EQUALS_ANY.
  final String value;

  GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky({
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['operator'] = operator;
    map['value'] = value;
    return map;
  }

  factory GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky.fromMap(
      Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky(
      operator: map['operator'] as String,
      value: map['value'] as String,
    );
  }
}
