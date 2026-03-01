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
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory AutomationRuleCriteriaComplianceAssociatedStandardsId.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutomationRuleCriteriaComplianceAssociatedStandardsId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
