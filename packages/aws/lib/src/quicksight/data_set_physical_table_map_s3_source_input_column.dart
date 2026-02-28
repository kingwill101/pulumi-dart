// ignore_for_file: unused_element, unnecessary_cast


class DataSetPhysicalTableMapS3SourceInputColumn {
  /// Name of this column in the underlying data source.
  final String name;
  /// Data type of the column.
  final String type;

  /// Creates a new [DataSetPhysicalTableMapS3SourceInputColumn].
  /// [name] Name of this column in the underlying data source.
  /// [type] Data type of the column.
  DataSetPhysicalTableMapS3SourceInputColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory DataSetPhysicalTableMapS3SourceInputColumn.fromMap(Map<String, dynamic> map) {
    return DataSetPhysicalTableMapS3SourceInputColumn(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

