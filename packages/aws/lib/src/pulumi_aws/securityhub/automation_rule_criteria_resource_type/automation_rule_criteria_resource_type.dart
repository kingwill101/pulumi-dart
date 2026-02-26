// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaResourceType {
  final String comparison;
  final String value;

  AutomationRuleCriteriaResourceType({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaResourceType.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaResourceType(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
