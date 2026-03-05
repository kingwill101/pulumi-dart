// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AggregateCompliancePackConfigRuleConfigRuleParameter {
  /// The Parameter Name.
  final pulumi.Input<String>? parameterName;
  /// The Parameter Value.
  final pulumi.Input<String>? parameterValue;

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
      parameterName: (() { final guardedValue = map['parameterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterValue: (() { final guardedValue = map['parameterValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

