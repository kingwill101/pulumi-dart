// ignore_for_file: unused_element, unnecessary_cast


class AutomationRuleCriteriaTitle {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaTitle].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaTitle({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory AutomationRuleCriteriaTitle.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaTitle(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

