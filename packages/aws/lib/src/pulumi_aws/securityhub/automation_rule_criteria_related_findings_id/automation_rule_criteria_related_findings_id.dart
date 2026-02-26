// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaRelatedFindingsId {
  final String comparison;
  final String value;

  AutomationRuleCriteriaRelatedFindingsId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaRelatedFindingsId.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleCriteriaRelatedFindingsId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
