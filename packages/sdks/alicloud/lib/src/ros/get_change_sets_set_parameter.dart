// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetChangeSetsSetParameter {
  /// The parameters.
  final pulumi.Input<String> parameterKey;
  /// The parameters.
  final pulumi.Input<String> parameterValue;

  /// Creates a new [GetChangeSetsSetParameter].
  /// [parameterKey] The parameters.
  /// [parameterValue] The parameters.
  GetChangeSetsSetParameter({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory GetChangeSetsSetParameter.fromMap(Map<String, dynamic> map) {
    return GetChangeSetsSetParameter(
      parameterKey: pulumi.Input.fromValue(map['parameterKey'] as String),
      parameterValue: pulumi.Input.fromValue(map['parameterValue'] as String),
    );
  }
}

