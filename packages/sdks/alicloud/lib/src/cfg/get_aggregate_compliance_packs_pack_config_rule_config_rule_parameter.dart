// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAggregateCompliancePacksPackConfigRuleConfigRuleParameter {
  /// The Parameter Name.
  final pulumi.Input<String> parameterName;
  /// The Parameter Value.
  final pulumi.Input<String> parameterValue;
  /// Required.
  final pulumi.Input<bool> required;

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
      parameterName: pulumi.Input.fromValue(map['parameterName'] as String),
      parameterValue: pulumi.Input.fromValue(map['parameterValue'] as String),
      required: pulumi.Input.fromValue(map['required'] as bool),
    );
  }
}

