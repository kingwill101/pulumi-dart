// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaResourceId {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaResourceId].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaResourceId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaResourceId.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaResourceId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
