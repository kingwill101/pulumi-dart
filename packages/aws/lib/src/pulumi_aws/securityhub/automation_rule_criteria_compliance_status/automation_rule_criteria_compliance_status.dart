// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaComplianceStatus {
  final String comparison;
  final String value;

  AutomationRuleCriteriaComplianceStatus({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaComplianceStatus.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleCriteriaComplianceStatus(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
