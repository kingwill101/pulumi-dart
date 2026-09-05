// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetLogicalTableMapDataTransformCastColumnTypeOperation {
  /// Column name.
  final pulumi.Input<String> columnName;
  /// When casting a column from string to datetime type, you can supply a string in a format supported by Amazon QuickSight to denote the source data format.
  final pulumi.Input<String?>? format;
  /// New column data type. Valid values are `STRING`, `INTEGER`, `DECIMAL`, `DATETIME`.
  final pulumi.Input<String> newColumnType;

  /// Creates a new [DataSetLogicalTableMapDataTransformCastColumnTypeOperation].
  /// [columnName] Column name.
  /// [format] When casting a column from string to datetime type, you can supply a string in a format supported by Amazon QuickSight to denote the source data format.
  /// [newColumnType] New column data type. Valid values are `STRING`, `INTEGER`, `DECIMAL`, `DATETIME`.
  const DataSetLogicalTableMapDataTransformCastColumnTypeOperation({
    required this.columnName,
    this.format,
    required this.newColumnType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'format': ?format,
      'newColumnType': newColumnType,
    };
  }

  factory DataSetLogicalTableMapDataTransformCastColumnTypeOperation.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransformCastColumnTypeOperation(
      columnName: pulumi.Input.fromValue(map['columnName'] as String),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      newColumnType: pulumi.Input.fromValue(map['newColumnType'] as String),
    );
  }
}
