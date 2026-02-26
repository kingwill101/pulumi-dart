// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaNoteUpdatedBy {
  final String comparison;
  final String value;

  AutomationRuleCriteriaNoteUpdatedBy({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaNoteUpdatedBy.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleCriteriaNoteUpdatedBy(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
