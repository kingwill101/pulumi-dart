// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaSeverityLabel {
  final String comparison;
  final String value;

  AutomationRuleCriteriaSeverityLabel({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaSeverityLabel.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleCriteriaSeverityLabel(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
