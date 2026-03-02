// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Notebook parameter.
class NotebookParameterResponse {
  /// Notebook parameter type.
  final pulumi.Input<String>? type;
  /// Notebook parameter value. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? value;

  /// Creates a new [NotebookParameterResponse].
  /// [type] Notebook parameter type.
  /// [value] Notebook parameter value. Type: string (or Expression with resultType string).
  NotebookParameterResponse({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory NotebookParameterResponse.fromMap(Map<String, dynamic> map) {
    return NotebookParameterResponse(
      type: map['type'] == null ? null : (map['type']! as String).input(),
      value: map['value'] == null ? null : (map['value']!).input(),
    );
  }
}

