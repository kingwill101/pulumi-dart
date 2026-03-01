// ignore_for_file: unused_element, unnecessary_cast


class AutomationRuleCriteriaResourceApplicationArn {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaResourceApplicationArn].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaResourceApplicationArn({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory AutomationRuleCriteriaResourceApplicationArn.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaResourceApplicationArn(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

