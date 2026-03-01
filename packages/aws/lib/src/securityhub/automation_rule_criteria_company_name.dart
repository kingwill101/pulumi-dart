// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaCompanyName {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaCompanyName].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaCompanyName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory AutomationRuleCriteriaCompanyName.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaCompanyName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
