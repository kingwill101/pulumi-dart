// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaVerificationState {
  final String comparison;
  final String value;

  AutomationRuleCriteriaVerificationState({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaVerificationState.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleCriteriaVerificationState(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
