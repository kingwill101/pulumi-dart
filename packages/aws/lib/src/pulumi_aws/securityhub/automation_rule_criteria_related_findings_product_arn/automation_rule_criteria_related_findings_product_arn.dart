// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaRelatedFindingsProductArn {
  final String comparison;
  final String value;

  AutomationRuleCriteriaRelatedFindingsProductArn({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaRelatedFindingsProductArn.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleCriteriaRelatedFindingsProductArn(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
