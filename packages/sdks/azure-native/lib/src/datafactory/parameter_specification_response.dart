// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of a single parameter for an entity.
class ParameterSpecificationResponse {
  /// Default value of parameter.
  final pulumi.Input<dynamic>? defaultValue;
  /// Parameter type.
  final pulumi.Input<String> type;

  /// Creates a new [ParameterSpecificationResponse].
  /// [defaultValue] Default value of parameter.
  /// [type] Parameter type.
  const ParameterSpecificationResponse({
    this.defaultValue,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'type': type,
    };
  }

  factory ParameterSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return ParameterSpecificationResponse(
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

