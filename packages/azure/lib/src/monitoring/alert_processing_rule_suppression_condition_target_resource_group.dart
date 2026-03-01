// ignore_for_file: unused_element, unnecessary_cast


class AlertProcessingRuleSuppressionConditionTargetResourceGroup {
  /// The operator for a given condition. Possible values are `Equals`, `NotEquals`, `Contains`, and `DoesNotContain`.
  final String operator;
  /// A list of values to match for a given condition. The values should be valid resource group IDs.
  final List<String> values;

  /// Creates a new [AlertProcessingRuleSuppressionConditionTargetResourceGroup].
  /// [operator] The operator for a given condition. Possible values are `Equals`, `NotEquals`, `Contains`, and `DoesNotContain`.
  /// [values] A list of values to match for a given condition. The values should be valid resource group IDs.
  AlertProcessingRuleSuppressionConditionTargetResourceGroup({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory AlertProcessingRuleSuppressionConditionTargetResourceGroup.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleSuppressionConditionTargetResourceGroup(
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

