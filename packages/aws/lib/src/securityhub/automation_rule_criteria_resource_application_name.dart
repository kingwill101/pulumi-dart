// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaResourceApplicationName {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaResourceApplicationName].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaResourceApplicationName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaResourceApplicationName.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleCriteriaResourceApplicationName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
