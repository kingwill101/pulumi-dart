// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaSourceUrl {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaSourceUrl].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaSourceUrl({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory AutomationRuleCriteriaSourceUrl.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaSourceUrl(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
