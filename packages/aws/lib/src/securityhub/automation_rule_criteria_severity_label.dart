// ignore_for_file: unused_element, unnecessary_cast


class AutomationRuleCriteriaSeverityLabel {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaSeverityLabel].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaSeverityLabel({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory AutomationRuleCriteriaSeverityLabel.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaSeverityLabel(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

