// ignore_for_file: unused_element, unnecessary_cast


/// Definition of custom data column.
class ColumnDefinition {
  /// The name of the column.
  final String? name;
  /// The type of the column data.
  final String? type;

  /// Creates a new [ColumnDefinition].
  /// [name] The name of the column.
  /// [type] The type of the column data.
  ColumnDefinition({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory ColumnDefinition.fromMap(Map<String, dynamic> map) {
    return ColumnDefinition(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

