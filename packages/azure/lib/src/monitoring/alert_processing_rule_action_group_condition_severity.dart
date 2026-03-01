// ignore_for_file: unused_element, unnecessary_cast


class AlertProcessingRuleActionGroupConditionSeverity {
  /// The operator for a given condition. Possible values are `Equals` and `NotEquals`.
  final String operator;
  /// Specifies list of values to match for a given condition. Possible values are `Sev0`, `Sev1`, `Sev2`, `Sev3`, and `Sev4`.
  final List<String> values;

  /// Creates a new [AlertProcessingRuleActionGroupConditionSeverity].
  /// [operator] The operator for a given condition. Possible values are `Equals` and `NotEquals`.
  /// [values] Specifies list of values to match for a given condition. Possible values are `Sev0`, `Sev1`, `Sev2`, `Sev3`, and `Sev4`.
  AlertProcessingRuleActionGroupConditionSeverity({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory AlertProcessingRuleActionGroupConditionSeverity.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleActionGroupConditionSeverity(
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

