// ignore_for_file: unused_element, unnecessary_cast


class AutomationRuleCriteriaRecordState {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaRecordState].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaRecordState({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory AutomationRuleCriteriaRecordState.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaRecordState(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

