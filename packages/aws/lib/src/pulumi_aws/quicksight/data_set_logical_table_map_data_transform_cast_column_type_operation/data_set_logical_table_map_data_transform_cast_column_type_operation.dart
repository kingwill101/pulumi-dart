// ignore_for_file: unused_element, unnecessary_cast

class DataSetLogicalTableMapDataTransformCastColumnTypeOperation {
  /// Column name.
  final String columnName;

  /// When casting a column from string to datetime type, you can supply a string in a format supported by Amazon QuickSight to denote the source data format.
  final String? format;

  /// New column data type. Valid values are `STRING`, `INTEGER`, `DECIMAL`, `DATETIME`.
  final String newColumnType;

  DataSetLogicalTableMapDataTransformCastColumnTypeOperation({
    required this.columnName,
    this.format,
    required this.newColumnType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnName'] = columnName;
    final formatValue = format;
    if (formatValue != null) {
      map['format'] = formatValue;
    }
    map['newColumnType'] = newColumnType;
    return map;
  }

  factory DataSetLogicalTableMapDataTransformCastColumnTypeOperation.fromMap(
      Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransformCastColumnTypeOperation(
      columnName: map['columnName'] as String,
      format: map['format'] == null ? null : map['format'] as String,
      newColumnType: map['newColumnType'] as String,
    );
  }
}
