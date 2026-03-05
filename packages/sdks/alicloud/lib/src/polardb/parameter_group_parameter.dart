// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ParameterGroupParameter {
  /// The name of the parameter.
  final pulumi.Input<String>? paramName;
  /// The value of the parameter.
  final pulumi.Input<String>? paramValue;

  /// Creates a new [ParameterGroupParameter].
  /// [paramName] The name of the parameter.
  /// [paramValue] The value of the parameter.
  ParameterGroupParameter({
    this.paramName,
    this.paramValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paramName': ?paramName,
      'paramValue': ?paramValue,
    };
  }

  factory ParameterGroupParameter.fromMap(Map<String, dynamic> map) {
    return ParameterGroupParameter(
      paramName: (() { final guardedValue = map['paramName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paramValue: (() { final guardedValue = map['paramValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

