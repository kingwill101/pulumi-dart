// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaComplianceSecurityControlId {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaComplianceSecurityControlId].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaComplianceSecurityControlId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaComplianceSecurityControlId.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleCriteriaComplianceSecurityControlId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
