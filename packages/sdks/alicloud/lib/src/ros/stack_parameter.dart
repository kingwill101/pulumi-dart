// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StackParameter {
  /// The parameter key.
  final pulumi.Input<String>? parameterKey;

  /// The parameter value.
  final pulumi.Input<String> parameterValue;

  /// Creates a new [StackParameter].
  /// [parameterKey] The parameter key.
  /// [parameterValue] The parameter value.
  StackParameter({this.parameterKey, required this.parameterValue});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': ?parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory StackParameter.fromMap(Map<String, dynamic> map) {
    return StackParameter(
      parameterKey: (() {
        final guardedValue = map['parameterKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameterValue: pulumi.Input.fromValue(map['parameterValue'] as String),
    );
  }
}
