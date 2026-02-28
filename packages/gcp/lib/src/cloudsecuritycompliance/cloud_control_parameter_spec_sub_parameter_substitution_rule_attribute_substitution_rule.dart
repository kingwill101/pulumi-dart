// ignore_for_file: unused_element, unnecessary_cast

class CloudControlParameterSpecSubParameterSubstitutionRuleAttributeSubstitutionRule {
  /// Fully qualified proto attribute path (in dot notation).
  /// Example: rules[0].cel_expression.resource_types_values
  final String? attribute;

  /// Creates a new [CloudControlParameterSpecSubParameterSubstitutionRuleAttributeSubstitutionRule].
  /// [attribute] Fully qualified proto attribute path (in dot notation).
  CloudControlParameterSpecSubParameterSubstitutionRuleAttributeSubstitutionRule({
    this.attribute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributeValue = attribute;
    if (attributeValue != null) {
      map['attribute'] = attributeValue;
    }
    return map;
  }

  factory CloudControlParameterSpecSubParameterSubstitutionRuleAttributeSubstitutionRule.fromMap(
      Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterSubstitutionRuleAttributeSubstitutionRule(
      attribute: map['attribute'] == null ? null : map['attribute'] as String,
    );
  }
}
