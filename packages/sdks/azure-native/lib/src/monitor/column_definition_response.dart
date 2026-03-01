// ignore_for_file: unused_element, unnecessary_cast


/// Definition of custom data column.
class ColumnDefinitionResponse {
  /// The name of the column.
  final String? name;
  /// The type of the column data.
  final String? type;

  /// Creates a new [ColumnDefinitionResponse].
  /// [name] The name of the column.
  /// [type] The type of the column data.
  ColumnDefinitionResponse({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory ColumnDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ColumnDefinitionResponse(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

