// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigTypeConverterEntry {
  /// Specifies the key with the value that will be converted to a different type.
  final String key;

  /// Specifies the type to convert the field value to. Allowed values are: `integer`, `double`, `string` and `boolean`.
  final String type;

  /// Creates a new [LogTransformerTransformerConfigTypeConverterEntry].
  /// [key] Specifies the key with the value that will be converted to a different type.
  /// [type] Specifies the type to convert the field value to. Allowed values are: `integer`, `double`, `string` and `boolean`.
  LogTransformerTransformerConfigTypeConverterEntry({
    required this.key,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['type'] = type;
    return map;
  }

  factory LogTransformerTransformerConfigTypeConverterEntry.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigTypeConverterEntry(
      key: map['key'] as String,
      type: map['type'] as String,
    );
  }
}
