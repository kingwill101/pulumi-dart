// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Parameter
class ParameterRedshiftClusterParameterGroupResponse {
  /// The name of the parameter.
  final pulumi.Input<String?>? parameterName;
  /// The value of the parameter. If `ParameterName` is `wlm_json_configuration`, then the maximum size of `ParameterValue` is 8000 characters.
  final pulumi.Input<String?>? parameterValue;

  /// Creates a new [ParameterRedshiftClusterParameterGroupResponse].
  /// [parameterName] The name of the parameter.
  /// [parameterValue] The value of the parameter. If `ParameterName` is `wlm_json_configuration`, then the maximum size of `ParameterValue` is 8000 characters.
  const ParameterRedshiftClusterParameterGroupResponse({
    this.parameterName,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterName': ?parameterName,
      'parameterValue': ?parameterValue,
    };
  }

  factory ParameterRedshiftClusterParameterGroupResponse.fromMap(Map<String, dynamic> map) {
    return ParameterRedshiftClusterParameterGroupResponse(
      parameterName: (() { final guardedValue = map['parameterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterValue: (() { final guardedValue = map['parameterValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
