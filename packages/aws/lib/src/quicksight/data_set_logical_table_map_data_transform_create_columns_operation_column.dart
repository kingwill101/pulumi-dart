// ignore_for_file: unused_element, unnecessary_cast

class DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn {
  /// A unique ID to identify a calculated column. During a dataset update, if the column ID of a calculated column matches that of an existing calculated column, Amazon QuickSight preserves the existing calculated column.
  final String columnId;

  /// Column name.
  final String columnName;

  /// An expression that defines the calculated column.
  final String expression;

  /// Creates a new [DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn].
  /// [columnId] A unique ID to identify a calculated column. During a dataset update, if the column ID of a calculated column matches that of an existing calculated column, Amazon QuickSight preserves the existing calculated column.
  /// [columnName] Column name.
  /// [expression] An expression that defines the calculated column.
  DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn({
    required this.columnId,
    required this.columnName,
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnId': columnId,
      'columnName': columnName,
      'expression': expression,
    };
  }

  factory DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn(
      columnId: map['columnId'] as String,
      columnName: map['columnName'] as String,
      expression: map['expression'] as String,
    );
  }
}
