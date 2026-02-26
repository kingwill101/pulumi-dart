// ignore_for_file: unused_element, unnecessary_cast

class TableSchemaDefinitionStaticColumn {
  /// The name of the static column.
  final String name;

  TableSchemaDefinitionStaticColumn({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory TableSchemaDefinitionStaticColumn.fromMap(Map<String, dynamic> map) {
    return TableSchemaDefinitionStaticColumn(
      name: map['name'] as String,
    );
  }
}
