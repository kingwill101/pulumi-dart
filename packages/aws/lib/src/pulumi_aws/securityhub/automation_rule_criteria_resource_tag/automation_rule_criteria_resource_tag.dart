// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaResourceTag {
  final String comparison;

  /// The key of the map filter.
  final String key;
  final String value;

  AutomationRuleCriteriaResourceTag({
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

  factory AutomationRuleCriteriaResourceTag.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaResourceTag(
      comparison: map['comparison'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
