// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of a single variable for a Pipeline.
class VariableSpecificationResponse {
  /// Default value of variable.
  final pulumi.Input<dynamic>? defaultValue;
  /// Variable type.
  final pulumi.Input<String> type;

  /// Creates a new [VariableSpecificationResponse].
  /// [defaultValue] Default value of variable.
  /// [type] Variable type.
  VariableSpecificationResponse({
    this.defaultValue,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'type': type,
    };
  }

  factory VariableSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return VariableSpecificationResponse(
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

