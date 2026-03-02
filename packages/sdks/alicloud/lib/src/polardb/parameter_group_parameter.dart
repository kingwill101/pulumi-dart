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
      paramName: map['paramName'] == null ? null : (map['paramName'] as String).input(),
      paramValue: map['paramValue'] == null ? null : (map['paramValue'] as String).input(),
    );
  }
}

