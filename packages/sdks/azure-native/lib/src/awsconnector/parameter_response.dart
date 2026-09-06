// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Parameter
class ParameterResponse {
  /// The key associated with the parameter. If you don't specify a key and value for a particular parameter, AWS CloudFormation uses the default value that is specified in your template.
  final pulumi.Input<String?>? parameterKey;
  /// The input value associated with the parameter.
  final pulumi.Input<String?>? parameterValue;

  /// Creates a new [ParameterResponse].
  /// [parameterKey] The key associated with the parameter. If you don't specify a key and value for a particular parameter, AWS CloudFormation uses the default value that is specified in your template.
  /// [parameterValue] The input value associated with the parameter.
  const ParameterResponse({
    this.parameterKey,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': ?parameterKey,
      'parameterValue': ?parameterValue,
    };
  }

  factory ParameterResponse.fromMap(Map<String, dynamic> map) {
    return ParameterResponse(
      parameterKey: (() { final guardedValue = map['parameterKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterValue: (() { final guardedValue = map['parameterValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
