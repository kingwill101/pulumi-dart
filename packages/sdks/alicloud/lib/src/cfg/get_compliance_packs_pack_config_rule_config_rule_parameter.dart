// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCompliancePacksPackConfigRuleConfigRuleParameter {
  /// The Parameter Name.
  final pulumi.Input<String> parameterName;
  /// The Parameter Value.
  final pulumi.Input<String> parameterValue;
  /// Required.
  final pulumi.Input<bool> required;

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
      parameterName: pulumi.Input.fromValue(map['parameterName'] as String),
      parameterValue: pulumi.Input.fromValue(map['parameterValue'] as String),
      required: pulumi.Input.fromValue(map['required'] as bool),
    );
  }
}

