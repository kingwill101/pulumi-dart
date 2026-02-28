// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetLogicalTableMapDataTransformCreateColumnsOperationColumn {
  final String columnId;
  final String columnName;
  final String expression;

  /// Creates a new [GetDataSetLogicalTableMapDataTransformCreateColumnsOperationColumn].
  /// [columnId] Required.
  /// [columnName] Required.
  /// [expression] Required.
  GetDataSetLogicalTableMapDataTransformCreateColumnsOperationColumn({
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

  factory GetDataSetLogicalTableMapDataTransformCreateColumnsOperationColumn.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransformCreateColumnsOperationColumn(
      columnId: map['columnId'] as String,
      columnName: map['columnName'] as String,
      expression: map['expression'] as String,
    );
  }
}
