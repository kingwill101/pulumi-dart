// ignore_for_file: unused_element, unnecessary_cast


class CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRule {
  /// Fully qualified proto attribute path (e.g., dot notation)
  final String? attribute;

  /// Creates a new [CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRule].
  /// [attribute] Fully qualified proto attribute path (e.g., dot notation)
  CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRule({
    this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': ?attribute,
    };
  }

  factory CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRule.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRule(
      attribute: map['attribute'] == null ? null : map['attribute'] as String,
    );
  }
}

