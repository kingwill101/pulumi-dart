// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaTitle {
  final String comparison;
  final String value;

  AutomationRuleCriteriaTitle({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaTitle.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaTitle(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
