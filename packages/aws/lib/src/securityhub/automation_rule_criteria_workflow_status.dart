// ignore_for_file: unused_element, unnecessary_cast


class AutomationRuleCriteriaWorkflowStatus {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaWorkflowStatus].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaWorkflowStatus({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory AutomationRuleCriteriaWorkflowStatus.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaWorkflowStatus(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

