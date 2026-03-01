// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaResourceType {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaResourceType].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaResourceType({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory AutomationRuleCriteriaResourceType.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaResourceType(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
