// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaType {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaType].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaType({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaType.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaType(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
