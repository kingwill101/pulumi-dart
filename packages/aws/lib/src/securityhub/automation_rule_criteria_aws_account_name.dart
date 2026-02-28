// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaAwsAccountName {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaAwsAccountName].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaAwsAccountName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaAwsAccountName.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleCriteriaAwsAccountName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
