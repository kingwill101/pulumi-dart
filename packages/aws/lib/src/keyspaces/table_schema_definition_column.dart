// ignore_for_file: unused_element, unnecessary_cast

class TableSchemaDefinitionColumn {
  /// The name of the column.
  final String name;

  /// The data type of the column. See the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types) for a list of available data types.
  final String type;

  /// Creates a new [TableSchemaDefinitionColumn].
  /// [name] The name of the column.
  /// [type] The data type of the column. See the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types) for a list of available data types.
  TableSchemaDefinitionColumn({required this.name, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'type': type};
  }

  factory TableSchemaDefinitionColumn.fromMap(Map<String, dynamic> map) {
    return TableSchemaDefinitionColumn(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
