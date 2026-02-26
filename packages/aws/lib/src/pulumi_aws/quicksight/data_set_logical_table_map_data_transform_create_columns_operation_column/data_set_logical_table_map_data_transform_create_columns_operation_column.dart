// ignore_for_file: unused_element, unnecessary_cast

class DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn {
  /// A unique ID to identify a calculated column. During a dataset update, if the column ID of a calculated column matches that of an existing calculated column, Amazon QuickSight preserves the existing calculated column.
  final String columnId;

  /// Column name.
  final String columnName;

  /// An expression that defines the calculated column.
  final String expression;

  DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn({
    required this.columnId,
    required this.columnName,
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnId'] = columnId;
    map['columnName'] = columnName;
    map['expression'] = expression;
    return map;
  }

  factory DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn.fromMap(
      Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn(
      columnId: map['columnId'] as String,
      columnName: map['columnName'] as String,
      expression: map['expression'] as String,
    );
  }
}
