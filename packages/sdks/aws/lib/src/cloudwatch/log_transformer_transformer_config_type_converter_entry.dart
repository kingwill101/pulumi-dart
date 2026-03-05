// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogTransformerTransformerConfigTypeConverterEntry {
  /// Specifies the key with the value that will be converted to a different type.
  final pulumi.Input<String> key;
  /// Specifies the type to convert the field value to. Allowed values are: `integer`, `double`, `string` and `boolean`.
  final pulumi.Input<String> type;

  /// Creates a new [LogTransformerTransformerConfigTypeConverterEntry].
  /// [key] Specifies the key with the value that will be converted to a different type.
  /// [type] Specifies the type to convert the field value to. Allowed values are: `integer`, `double`, `string` and `boolean`.
  LogTransformerTransformerConfigTypeConverterEntry({
    required this.key,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'type': type,
    };
  }

  factory LogTransformerTransformerConfigTypeConverterEntry.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigTypeConverterEntry(
      key: pulumi.Input.fromValue(map['key'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

