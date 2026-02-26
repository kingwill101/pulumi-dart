// ignore_for_file: unused_element, unnecessary_cast

class DataSetPhysicalTableMapRelationalTableInputColumn {
  /// Name of this column in the underlying data source.
  final String name;

  /// Data type of the column.
  final String type;

  DataSetPhysicalTableMapRelationalTableInputColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['type'] = type;
    return map;
  }

  factory DataSetPhysicalTableMapRelationalTableInputColumn.fromMap(
      Map<String, dynamic> map) {
    return DataSetPhysicalTableMapRelationalTableInputColumn(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
