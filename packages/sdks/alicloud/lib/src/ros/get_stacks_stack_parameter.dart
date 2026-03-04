// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStacksStackParameter {
  /// The key of parameters.
  final pulumi.Input<String> parameterKey;

  /// The value of parameters.
  final pulumi.Input<String> parameterValue;

  /// Creates a new [GetStacksStackParameter].
  /// [parameterKey] The key of parameters.
  /// [parameterValue] The value of parameters.
  GetStacksStackParameter({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory GetStacksStackParameter.fromMap(Map<String, dynamic> map) {
    return GetStacksStackParameter(
      parameterKey: pulumi.Input.fromValue(map['parameterKey'] as String),
      parameterValue: pulumi.Input.fromValue(map['parameterValue'] as String),
    );
  }
}
