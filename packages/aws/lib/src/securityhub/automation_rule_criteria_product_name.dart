// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaProductName {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaProductName].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaProductName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaProductName.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaProductName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
