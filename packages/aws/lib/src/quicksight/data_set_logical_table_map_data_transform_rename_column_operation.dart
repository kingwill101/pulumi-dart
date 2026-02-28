// ignore_for_file: unused_element, unnecessary_cast

class DataSetLogicalTableMapDataTransformRenameColumnOperation {
  /// Column to be renamed.
  final String columnName;

  /// New name for the column.
  final String newColumnName;

  /// Creates a new [DataSetLogicalTableMapDataTransformRenameColumnOperation].
  /// [columnName] Column to be renamed.
  /// [newColumnName] New name for the column.
  DataSetLogicalTableMapDataTransformRenameColumnOperation({
    required this.columnName,
    required this.newColumnName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnName'] = columnName;
    map['newColumnName'] = newColumnName;
    return map;
  }

  factory DataSetLogicalTableMapDataTransformRenameColumnOperation.fromMap(
      Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransformRenameColumnOperation(
      columnName: map['columnName'] as String,
      newColumnName: map['newColumnName'] as String,
    );
  }
}
