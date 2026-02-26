// ignore_for_file: unused_element, unnecessary_cast

class DataSetLogicalTableMapDataTransformUntagColumnOperation {
  /// Column name.
  final String columnName;

  /// The column tags to remove from this column.
  final List<String> tagNames;

  DataSetLogicalTableMapDataTransformUntagColumnOperation({
    required this.columnName,
    required this.tagNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnName'] = columnName;
    map['tagNames'] = tagNames;
    return map;
  }

  factory DataSetLogicalTableMapDataTransformUntagColumnOperation.fromMap(
      Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransformUntagColumnOperation(
      columnName: map['columnName'] as String,
      tagNames: (map['tagNames'] as List).cast<String>(),
    );
  }
}
