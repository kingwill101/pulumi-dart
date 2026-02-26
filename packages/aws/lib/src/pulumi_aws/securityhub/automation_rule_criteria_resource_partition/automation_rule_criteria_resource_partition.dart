// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaResourcePartition {
  final String comparison;
  final String value;

  AutomationRuleCriteriaResourcePartition({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaResourcePartition.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleCriteriaResourcePartition(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
