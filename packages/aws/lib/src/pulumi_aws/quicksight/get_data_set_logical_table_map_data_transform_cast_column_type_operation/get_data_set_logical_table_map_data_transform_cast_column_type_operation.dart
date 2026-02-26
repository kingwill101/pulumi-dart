// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation {
  final String columnName;
  final String format;
  final String newColumnType;

  GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation({
    required this.columnName,
    required this.format,
    required this.newColumnType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnName'] = columnName;
    map['format'] = format;
    map['newColumnType'] = newColumnType;
    return map;
  }

  factory GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation(
      columnName: map['columnName'] as String,
      format: map['format'] as String,
      newColumnType: map['newColumnType'] as String,
    );
  }
}
