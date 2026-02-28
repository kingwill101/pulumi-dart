// ignore_for_file: unused_element, unnecessary_cast

class DataSetPhysicalTableMapCustomSqlColumn {
  /// Name of this column in the underlying data source.
  final String name;

  /// Data type of the column.
  final String type;

  /// Creates a new [DataSetPhysicalTableMapCustomSqlColumn].
  /// [name] Name of this column in the underlying data source.
  /// [type] Data type of the column.
  DataSetPhysicalTableMapCustomSqlColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['type'] = type;
    return map;
  }

  factory DataSetPhysicalTableMapCustomSqlColumn.fromMap(
      Map<String, dynamic> map) {
    return DataSetPhysicalTableMapCustomSqlColumn(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
