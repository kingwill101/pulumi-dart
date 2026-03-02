// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn {
  /// A unique ID to identify a calculated column. During a dataset update, if the column ID of a calculated column matches that of an existing calculated column, Amazon QuickSight preserves the existing calculated column.
  final pulumi.Input<String> columnId;
  /// Column name.
  final pulumi.Input<String> columnName;
  /// An expression that defines the calculated column.
  final pulumi.Input<String> expression;

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

  factory DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn(
      columnId: (map['columnId'] as String).input(),
      columnName: (map['columnName'] as String).input(),
      expression: (map['expression'] as String).input(),
    );
  }
}

