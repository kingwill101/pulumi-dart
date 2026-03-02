// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation {
  final pulumi.Input<String> columnName;
  final pulumi.Input<String> format;
  final pulumi.Input<String> newColumnType;

  /// Creates a new [GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation].
  /// [columnName] Required.
  /// [format] Required.
  /// [newColumnType] Required.
  GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation({
    required this.columnName,
    required this.format,
    required this.newColumnType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'format': format,
      'newColumnType': newColumnType,
    };
  }

  factory GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation.fromMap(Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation(
      columnName: (map['columnName'] as String).input(),
      format: (map['format'] as String).input(),
      newColumnType: (map['newColumnType'] as String).input(),
    );
  }
}

