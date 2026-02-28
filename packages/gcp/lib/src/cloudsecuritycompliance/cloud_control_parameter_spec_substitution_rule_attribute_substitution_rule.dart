// ignore_for_file: unused_element, unnecessary_cast


class CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRule {
  /// Fully qualified proto attribute path (in dot notation).
  /// Example: rules[0].cel_expression.resource_types_values
  final String? attribute;

  /// Creates a new [CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRule].
  /// [attribute] Fully qualified proto attribute path (in dot notation).
  CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRule({
    this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': ?attribute,
    };
  }

  factory CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRule.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRule(
      attribute: map['attribute'] == null ? null : map['attribute'] as String,
    );
  }
}

