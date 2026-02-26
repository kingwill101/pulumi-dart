// ignore_for_file: unused_element, unnecessary_cast

class CloudControlParameterSpecSubParameterSubstitutionRulePlaceholderSubstitutionRule {
  /// Fully qualified proto attribute path (e.g., dot notation)
  final String? attribute;

  CloudControlParameterSpecSubParameterSubstitutionRulePlaceholderSubstitutionRule({
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

  factory CloudControlParameterSpecSubParameterSubstitutionRulePlaceholderSubstitutionRule.fromMap(
      Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterSubstitutionRulePlaceholderSubstitutionRule(
      attribute: map['attribute'] == null ? null : map['attribute'] as String,
    );
  }
}
