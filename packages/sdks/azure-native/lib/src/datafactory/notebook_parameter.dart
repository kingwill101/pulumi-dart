// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Notebook parameter.
class NotebookParameter {
  /// Notebook parameter type.
  final pulumi.Input<String>? type;
  /// Notebook parameter value. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? value;

  /// Creates a new [NotebookParameter].
  /// [type] Notebook parameter type.
  /// [value] Notebook parameter value. Type: string (or Expression with resultType string).
  NotebookParameter({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory NotebookParameter.fromMap(Map<String, dynamic> map) {
    return NotebookParameter(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

