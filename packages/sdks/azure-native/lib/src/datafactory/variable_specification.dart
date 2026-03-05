// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of a single variable for a Pipeline.
class VariableSpecification {
  /// Default value of variable.
  final pulumi.Input<dynamic>? defaultValue;
  /// Variable type.
  final pulumi.Input<String> type;

  /// Creates a new [VariableSpecification].
  /// [defaultValue] Default value of variable.
  /// [type] Variable type.
  VariableSpecification({
    this.defaultValue,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'type': type,
    };
  }

  factory VariableSpecification.fromMap(Map<String, dynamic> map) {
    return VariableSpecification(
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

