// ignore_for_file: unused_element, unnecessary_cast


/// Schema of a CDC table in terms of column names and their corresponding data types.
class MapperTableSchemaResponse {
  /// Data type of the column.
  final String? dataType;
  /// Name of the column.
  final String? name;

  /// Creates a new [MapperTableSchemaResponse].
  /// [dataType] Data type of the column.
  /// [name] Name of the column.
  MapperTableSchemaResponse({
    this.dataType,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?dataType,
      'name': ?name,
    };
  }

  factory MapperTableSchemaResponse.fromMap(Map<String, dynamic> map) {
    return MapperTableSchemaResponse(
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

