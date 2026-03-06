// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CompliancePackConfigRuleConfigRuleParameter {
  /// The parameter name.
  final pulumi.Input<String>? parameterName;
  /// The parameter value.
  final pulumi.Input<String>? parameterValue;

  /// Creates a new [CompliancePackConfigRuleConfigRuleParameter].
  /// [parameterName] The parameter name.
  /// [parameterValue] The parameter value.
  const CompliancePackConfigRuleConfigRuleParameter({
    this.parameterName,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterName': ?parameterName,
      'parameterValue': ?parameterValue,
    };
  }

  factory CompliancePackConfigRuleConfigRuleParameter.fromMap(Map<String, dynamic> map) {
    return CompliancePackConfigRuleConfigRuleParameter(
      parameterName: (() { final guardedValue = map['parameterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterValue: (() { final guardedValue = map['parameterValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

