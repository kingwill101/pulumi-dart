// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaUserDefinedField {
  final String comparison;

  /// The key of the map filter.
  final String key;
  final String value;

  /// Creates a new [AutomationRuleCriteriaUserDefinedField].
  /// [comparison] Required.
  /// [key] The key of the map filter.
  /// [value] Required.
  AutomationRuleCriteriaUserDefinedField({
    required this.comparison,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaUserDefinedField.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleCriteriaUserDefinedField(
      comparison: map['comparison'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
