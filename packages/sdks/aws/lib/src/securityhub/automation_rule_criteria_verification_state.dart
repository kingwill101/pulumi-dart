// ignore_for_file: unused_element, unnecessary_cast


class AutomationRuleCriteriaVerificationState {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaVerificationState].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaVerificationState({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory AutomationRuleCriteriaVerificationState.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaVerificationState(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

