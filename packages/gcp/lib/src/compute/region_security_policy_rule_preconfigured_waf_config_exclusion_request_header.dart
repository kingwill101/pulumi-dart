// ignore_for_file: unused_element, unnecessary_cast

class RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader {
  /// You can specify an exact match or a partial match by using a field operator and a field value.
  /// Available options:
  /// EQUALS: The operator matches if the field value equals the specified value.
  /// STARTS_WITH: The operator matches if the field value starts with the specified value.
  /// ENDS_WITH: The operator matches if the field value ends with the specified value.
  /// CONTAINS: The operator matches if the field value contains the specified value.
  /// EQUALS_ANY: The operator matches if the field value is any value.
  /// Possible values are: `CONTAINS`, `ENDS_WITH`, `EQUALS`, `EQUALS_ANY`, `STARTS_WITH`.
  final String operator;

  /// A request field matching the specified value will be excluded from inspection during preconfigured WAF evaluation.
  /// The field value must be given if the field operator is not EQUALS_ANY, and cannot be given if the field operator is EQUALS_ANY.
  final String? value;

  /// Creates a new [RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader].
  /// [operator] You can specify an exact match or a partial match by using a field operator and a field value.
  /// [value] A request field matching the specified value will be excluded from inspection during preconfigured WAF evaluation.
  RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader({
    required this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['operator'] = operator;
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader.fromMap(
      Map<String, dynamic> map) {
    return RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader(
      operator: map['operator'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
