// ignore_for_file: unused_element, unnecessary_cast


class GetCompliancePacksPackConfigRuleConfigRuleParameter {
  /// The Parameter Name.
  final String parameterName;
  /// The Parameter Value.
  final String parameterValue;
  /// Required.
  final bool required;

  /// Creates a new [GetCompliancePacksPackConfigRuleConfigRuleParameter].
  /// [parameterName] The Parameter Name.
  /// [parameterValue] The Parameter Value.
  /// [required] Required.
  GetCompliancePacksPackConfigRuleConfigRuleParameter({
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

  factory GetCompliancePacksPackConfigRuleConfigRuleParameter.fromMap(Map<String, dynamic> map) {
    return GetCompliancePacksPackConfigRuleConfigRuleParameter(
      parameterName: map['parameterName'] as String,
      parameterValue: map['parameterValue'] as String,
      required: map['required'] as bool,
    );
  }
}

