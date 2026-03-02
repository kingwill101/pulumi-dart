// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetLogicalTableMapDataTransformRenameColumnOperation {
  /// Column to be renamed.
  final pulumi.Input<String> columnName;
  /// New name for the column.
  final pulumi.Input<String> newColumnName;

  /// Creates a new [DataSetLogicalTableMapDataTransformRenameColumnOperation].
  /// [columnName] Column to be renamed.
  /// [newColumnName] New name for the column.
  DataSetLogicalTableMapDataTransformRenameColumnOperation({
    required this.columnName,
    required this.newColumnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'newColumnName': newColumnName,
    };
  }

  factory DataSetLogicalTableMapDataTransformRenameColumnOperation.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransformRenameColumnOperation(
      columnName: (map['columnName'] as String).input(),
      newColumnName: (map['newColumnName'] as String).input(),
    );
  }
}

