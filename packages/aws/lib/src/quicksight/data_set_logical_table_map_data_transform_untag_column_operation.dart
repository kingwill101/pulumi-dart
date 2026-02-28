// ignore_for_file: unused_element, unnecessary_cast


class DataSetLogicalTableMapDataTransformUntagColumnOperation {
  /// Column name.
  final String columnName;
  /// The column tags to remove from this column.
  final List<String> tagNames;

  /// Creates a new [DataSetLogicalTableMapDataTransformUntagColumnOperation].
  /// [columnName] Column name.
  /// [tagNames] The column tags to remove from this column.
  DataSetLogicalTableMapDataTransformUntagColumnOperation({
    required this.columnName,
    required this.tagNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'tagNames': tagNames,
    };
  }

  factory DataSetLogicalTableMapDataTransformUntagColumnOperation.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransformUntagColumnOperation(
      columnName: map['columnName'] as String,
      tagNames: (map['tagNames'] as List).cast<String>(),
    );
  }
}

