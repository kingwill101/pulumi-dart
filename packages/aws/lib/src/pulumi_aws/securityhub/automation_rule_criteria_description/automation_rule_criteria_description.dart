// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaDescription {
  final String comparison;
  final String value;

  AutomationRuleCriteriaDescription({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaDescription.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaDescription(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
