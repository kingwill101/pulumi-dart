// ignore_for_file: unused_element, unnecessary_cast


/// Schema Version Properties
class SchemaVersionProperties {
  /// Value of schema version
  final String value;

  /// Creates a new [SchemaVersionProperties].
  /// [value] Value of schema version
  SchemaVersionProperties({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory SchemaVersionProperties.fromMap(Map<String, dynamic> map) {
    return SchemaVersionProperties(
      value: map['value'] as String,
    );
  }
}

