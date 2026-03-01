// ignore_for_file: unused_element, unnecessary_cast


class GetAggregateCompliancePacksPackConfigRuleConfigRuleParameter {
  /// The Parameter Name.
  final String parameterName;
  /// The Parameter Value.
  final String parameterValue;
  /// Required.
  final bool required;

  /// Creates a new [GetAggregateCompliancePacksPackConfigRuleConfigRuleParameter].
  /// [parameterName] The Parameter Name.
  /// [parameterValue] The Parameter Value.
  /// [required] Required.
  GetAggregateCompliancePacksPackConfigRuleConfigRuleParameter({
    required this.parameterName,
    required this.parameterValue,
    required this.required,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterName': parameterName,
      'parameterValue': parameterValue,
      'required': required,
    };
  }

  factory GetAggregateCompliancePacksPackConfigRuleConfigRuleParameter.fromMap(Map<String, dynamic> map) {
    return GetAggregateCompliancePacksPackConfigRuleConfigRuleParameter(
      parameterName: map['parameterName'] as String,
      parameterValue: map['parameterValue'] as String,
      required: map['required'] as bool,
    );
  }
}

