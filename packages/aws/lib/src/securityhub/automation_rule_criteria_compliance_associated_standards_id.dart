// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaComplianceAssociatedStandardsId {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaComplianceAssociatedStandardsId].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaComplianceAssociatedStandardsId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaComplianceAssociatedStandardsId.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleCriteriaComplianceAssociatedStandardsId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
