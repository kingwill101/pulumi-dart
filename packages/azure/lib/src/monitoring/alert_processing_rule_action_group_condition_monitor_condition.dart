// ignore_for_file: unused_element, unnecessary_cast


class AlertProcessingRuleActionGroupConditionMonitorCondition {
  /// The operator for a given condition. Possible values are `Equals` and `NotEquals`.
  final String operator;
  /// Specifies a list of values to match for a given condition. Possible values are `Fired` and `Resolved`.
  final List<String> values;

  /// Creates a new [AlertProcessingRuleActionGroupConditionMonitorCondition].
  /// [operator] The operator for a given condition. Possible values are `Equals` and `NotEquals`.
  /// [values] Specifies a list of values to match for a given condition. Possible values are `Fired` and `Resolved`.
  AlertProcessingRuleActionGroupConditionMonitorCondition({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory AlertProcessingRuleActionGroupConditionMonitorCondition.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleActionGroupConditionMonitorCondition(
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

