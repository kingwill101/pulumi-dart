// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaCompanyName {
  final String comparison;
  final String value;

  AutomationRuleCriteriaCompanyName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaCompanyName.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaCompanyName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
