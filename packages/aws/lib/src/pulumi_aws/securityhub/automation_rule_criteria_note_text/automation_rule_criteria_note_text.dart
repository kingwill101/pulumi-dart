// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaNoteText {
  final String comparison;
  final String value;

  AutomationRuleCriteriaNoteText({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaNoteText.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaNoteText(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
