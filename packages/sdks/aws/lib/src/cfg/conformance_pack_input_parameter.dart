// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConformancePackInputParameter {
  /// The input key.
  final pulumi.Input<String> parameterName;
  /// The input value.
  final pulumi.Input<String> parameterValue;

  /// Creates a new [ConformancePackInputParameter].
  /// [parameterName] The input key.
  /// [parameterValue] The input value.
  const ConformancePackInputParameter({
    required this.parameterName,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterName': parameterName,
      'parameterValue': parameterValue,
    };
  }

  factory ConformancePackInputParameter.fromMap(Map<String, dynamic> map) {
    return ConformancePackInputParameter(
      parameterName: pulumi.Input.fromValue(map['parameterName'] as String),
      parameterValue: pulumi.Input.fromValue(map['parameterValue'] as String),
    );
  }
}

