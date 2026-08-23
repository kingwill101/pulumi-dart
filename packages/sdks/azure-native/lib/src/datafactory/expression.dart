// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Data Factory expression definition.
class Expression {
  /// Expression type.
  final pulumi.Input<String> type;
  /// Expression value.
  final pulumi.Input<String> value;

  /// Creates a new [Expression].
  /// [type] Expression type.
  /// [value] Expression value.
  const Expression({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory Expression.fromMap(Map<String, dynamic> map) {
    return Expression(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
