// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetLogicalTableMapDataTransformCreateColumnsOperationColumn {
  final pulumi.Input<String> columnId;
  final pulumi.Input<String> columnName;
  final pulumi.Input<String> expression;

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
    return <String, dynamic>{
      'columnId': columnId,
      'columnName': columnName,
      'expression': expression,
    };
  }

  factory GetDataSetLogicalTableMapDataTransformCreateColumnsOperationColumn.fromMap(Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransformCreateColumnsOperationColumn(
      columnId: (map['columnId'] as String).input(),
      columnName: (map['columnName'] as String).input(),
      expression: (map['expression'] as String).input(),
    );
  }
}

