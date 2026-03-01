// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaComplianceStatus {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaComplianceStatus].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaComplianceStatus({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory AutomationRuleCriteriaComplianceStatus.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutomationRuleCriteriaComplianceStatus(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
