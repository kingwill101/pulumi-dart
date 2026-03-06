// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChangeSetParameter {
  /// The parameter key.
  final pulumi.Input<String> parameterKey;
  /// The parameter value.
  final pulumi.Input<String> parameterValue;

  /// Creates a new [ChangeSetParameter].
  /// [parameterKey] The parameter key.
  /// [parameterValue] The parameter value.
  const ChangeSetParameter({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory ChangeSetParameter.fromMap(Map<String, dynamic> map) {
    return ChangeSetParameter(
      parameterKey: pulumi.Input.fromValue(map['parameterKey'] as String),
      parameterValue: pulumi.Input.fromValue(map['parameterValue'] as String),
    );
  }
}

