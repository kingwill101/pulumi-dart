// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn {
  /// Unique ID to identify a calculated column. During a dataset update, if the column ID of a calculated column matches that of an existing calculated column, Amazon QuickSight preserves the existing calculated column.
  final pulumi.Input<String> columnId;
  final pulumi.Input<String> columnName;
  /// Expression that defines the calculated column.
  final pulumi.Input<String> expression;

  /// Creates a new [DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn].
  /// [columnId] Unique ID to identify a calculated column. During a dataset update, if the column ID of a calculated column matches that of an existing calculated column, Amazon QuickSight preserves the existing calculated column.
  /// [columnName] Required.
  /// [expression] Expression that defines the calculated column.
  const DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn({
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

  factory DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn(
      columnId: pulumi.Input.fromValue(map['columnId'] as String),
      columnName: pulumi.Input.fromValue(map['columnName'] as String),
      expression: pulumi.Input.fromValue(map['expression'] as String),
    );
  }
}
