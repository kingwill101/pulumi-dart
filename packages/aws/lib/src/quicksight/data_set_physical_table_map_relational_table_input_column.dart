// ignore_for_file: unused_element, unnecessary_cast

class DataSetPhysicalTableMapRelationalTableInputColumn {
  /// Name of this column in the underlying data source.
  final String name;

  /// Data type of the column.
  final String type;

  /// Creates a new [DataSetPhysicalTableMapRelationalTableInputColumn].
  /// [name] Name of this column in the underlying data source.
  /// [type] Data type of the column.
  DataSetPhysicalTableMapRelationalTableInputColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'type': type};
  }

  factory DataSetPhysicalTableMapRelationalTableInputColumn.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataSetPhysicalTableMapRelationalTableInputColumn(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
