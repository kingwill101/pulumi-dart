// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaAwsAccountId {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaAwsAccountId].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaAwsAccountId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaAwsAccountId.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaAwsAccountId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
