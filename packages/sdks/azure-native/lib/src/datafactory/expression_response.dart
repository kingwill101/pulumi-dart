// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Data Factory expression definition.
class ExpressionResponse {
  /// Expression type.
  final pulumi.Input<String> type;

  /// Expression value.
  final pulumi.Input<String> value;

  /// Creates a new [ExpressionResponse].
  /// [type] Expression type.
  /// [value] Expression value.
  ExpressionResponse({required this.type, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type, 'value': value};
  }

  factory ExpressionResponse.fromMap(Map<String, dynamic> map) {
    return ExpressionResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
