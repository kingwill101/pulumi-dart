// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaResourceApplicationArn {
  final String comparison;
  final String value;

  AutomationRuleCriteriaResourceApplicationArn({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaResourceApplicationArn.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleCriteriaResourceApplicationArn(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
