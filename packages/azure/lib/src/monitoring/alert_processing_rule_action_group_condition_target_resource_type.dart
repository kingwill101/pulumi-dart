// ignore_for_file: unused_element, unnecessary_cast


class AlertProcessingRuleActionGroupConditionTargetResourceType {
  /// The operator for a given condition. Possible values are `Equals`, `NotEquals`, `Contains`, and `DoesNotContain`.
  final String operator;
  /// A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
  final List<String> values;

  /// Creates a new [AlertProcessingRuleActionGroupConditionTargetResourceType].
  /// [operator] The operator for a given condition. Possible values are `Equals`, `NotEquals`, `Contains`, and `DoesNotContain`.
  /// [values] A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
  AlertProcessingRuleActionGroupConditionTargetResourceType({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory AlertProcessingRuleActionGroupConditionTargetResourceType.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleActionGroupConditionTargetResourceType(
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

