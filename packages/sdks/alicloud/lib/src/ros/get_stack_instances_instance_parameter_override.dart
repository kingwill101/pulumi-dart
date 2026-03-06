// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStackInstancesInstanceParameterOverride {
  /// The key of override parameter.
  final pulumi.Input<String> parameterKey;
  /// The value of override parameter.
  final pulumi.Input<String> parameterValue;

  /// Creates a new [GetStackInstancesInstanceParameterOverride].
  /// [parameterKey] The key of override parameter.
  /// [parameterValue] The value of override parameter.
  const GetStackInstancesInstanceParameterOverride({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory GetStackInstancesInstanceParameterOverride.fromMap(Map<String, dynamic> map) {
    return GetStackInstancesInstanceParameterOverride(
      parameterKey: pulumi.Input.fromValue(map['parameterKey'] as String),
      parameterValue: pulumi.Input.fromValue(map['parameterValue'] as String),
    );
  }
}

