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
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory AutomationRuleCriteriaAwsAccountId.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaAwsAccountId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

