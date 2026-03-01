// ignore_for_file: unused_element, unnecessary_cast


class AggregateCompliancePackConfigRuleConfigRuleParameter {
  /// The Parameter Name.
  final String? parameterName;
  /// The Parameter Value.
  final String? parameterValue;

  /// Creates a new [AggregateCompliancePackConfigRuleConfigRuleParameter].
  /// [parameterName] The Parameter Name.
  /// [parameterValue] The Parameter Value.
  AggregateCompliancePackConfigRuleConfigRuleParameter({
    this.parameterName,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterName': ?parameterName,
      'parameterValue': ?parameterValue,
    };
  }

  factory AggregateCompliancePackConfigRuleConfigRuleParameter.fromMap(Map<String, dynamic> map) {
    return AggregateCompliancePackConfigRuleConfigRuleParameter(
      parameterName: map['parameterName'] == null ? null : map['parameterName'] as String,
      parameterValue: map['parameterValue'] == null ? null : map['parameterValue'] as String,
    );
  }
}

