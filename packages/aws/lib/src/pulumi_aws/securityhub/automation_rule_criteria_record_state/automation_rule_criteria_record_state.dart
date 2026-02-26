// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaRecordState {
  final String comparison;
  final String value;

  AutomationRuleCriteriaRecordState({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaRecordState.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaRecordState(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
