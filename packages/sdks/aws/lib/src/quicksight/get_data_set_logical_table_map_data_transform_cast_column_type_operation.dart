// ignore_for_file: unused_element, unnecessary_cast


class GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation {
  final String columnName;
  final String format;
  final String newColumnType;

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
      columnName: map['columnName'] as String,
      format: map['format'] as String,
      newColumnType: map['newColumnType'] as String,
    );
  }
}

