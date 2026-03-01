// ignore_for_file: unused_element, unnecessary_cast


/// Delta table schema properties
class DeltaTableSchema {
  /// Delta table format supported.
  final String format;
  /// Delta table schema mapping.
  final String mapping;
  /// Delta table schema name.
  final String name;
  /// Delta table schema optional.
  final bool optional;

  /// Creates a new [DeltaTableSchema].
  /// [format] Delta table format supported.
  /// [mapping] Delta table schema mapping.
  /// [name] Delta table schema name.
  /// [optional] Delta table schema optional.
  DeltaTableSchema({
    required this.format,
    required this.mapping,
    required this.name,
    required this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': format,
      'mapping': mapping,
      'name': name,
      'optional': optional,
    };
  }

  factory DeltaTableSchema.fromMap(Map<String, dynamic> map) {
    return DeltaTableSchema(
      format: map['format'] as String,
      mapping: map['mapping'] as String,
      name: map['name'] as String,
      optional: map['optional'] as bool,
    );
  }
}

