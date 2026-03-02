// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetLogicalTableMapDataTransformRenameColumnOperation {
  final pulumi.Input<String> columnName;
  final pulumi.Input<String> newColumnName;

  /// Creates a new [GetDataSetLogicalTableMapDataTransformRenameColumnOperation].
  /// [columnName] Required.
  /// [newColumnName] Required.
  GetDataSetLogicalTableMapDataTransformRenameColumnOperation({
    required this.columnName,
    required this.newColumnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'newColumnName': newColumnName,
    };
  }

  factory GetDataSetLogicalTableMapDataTransformRenameColumnOperation.fromMap(Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransformRenameColumnOperation(
      columnName: (map['columnName'] as String).input(),
      newColumnName: (map['newColumnName'] as String).input(),
    );
  }
}

