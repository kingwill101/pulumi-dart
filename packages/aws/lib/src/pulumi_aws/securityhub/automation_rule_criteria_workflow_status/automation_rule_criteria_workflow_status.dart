// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaWorkflowStatus {
  final String comparison;
  final String value;

  AutomationRuleCriteriaWorkflowStatus({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaWorkflowStatus.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleCriteriaWorkflowStatus(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
