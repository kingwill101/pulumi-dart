// ignore_for_file: unused_element, unnecessary_cast

class SchemaDefinition {
  /// A JSON string representation of the schema.
  final String value;

  SchemaDefinition({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory SchemaDefinition.fromMap(Map<String, dynamic> map) {
    return SchemaDefinition(
      value: map['value'] as String,
    );
  }
}
