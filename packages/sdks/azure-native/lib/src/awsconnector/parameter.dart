// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Parameter
class Parameter {
  /// The key associated with the parameter. If you don't specify a key and value for a particular parameter, AWS CloudFormation uses the default value that is specified in your template.
  final pulumi.Input<String>? parameterKey;

  /// The name of the parameter.
  final pulumi.Input<String>? parameterName;

  /// The value of the parameter. If `ParameterName` is `wlm_json_configuration`, then the maximum size of `ParameterValue` is 8000 characters.
  final pulumi.Input<String>? parameterValue;

  /// Creates a new [Parameter].
  /// [parameterKey] The key associated with the parameter. If you don't specify a key and value for a particular parameter, AWS CloudFormation uses the default value that is specified in your template.
  /// [parameterName] The name of the parameter.
  /// [parameterValue] The value of the parameter. If `ParameterName` is `wlm_json_configuration`, then the maximum size of `ParameterValue` is 8000 characters.
  Parameter({this.parameterKey, this.parameterName, this.parameterValue});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': ?parameterKey,
      'parameterName': ?parameterName,
      'parameterValue': ?parameterValue,
    };
  }

  factory Parameter.fromMap(Map<String, dynamic> map) {
    return Parameter(
      parameterKey: (() {
        final guardedValue = map['parameterKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameterName: (() {
        final guardedValue = map['parameterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameterValue: (() {
        final guardedValue = map['parameterValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
