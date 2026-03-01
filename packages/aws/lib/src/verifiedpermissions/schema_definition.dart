// ignore_for_file: unused_element, unnecessary_cast

class SchemaDefinition {
  /// A JSON string representation of the schema.
  final String value;

  /// Creates a new [SchemaDefinition].
  /// [value] A JSON string representation of the schema.
  SchemaDefinition({required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory SchemaDefinition.fromMap(Map<String, dynamic> map) {
    return SchemaDefinition(value: map['value'] as String);
  }
}
