// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetLogicalTableMapDataTransformRenameColumnOperation {
  final String columnName;
  final String newColumnName;

  GetDataSetLogicalTableMapDataTransformRenameColumnOperation({
    required this.columnName,
    required this.newColumnName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnName'] = columnName;
    map['newColumnName'] = newColumnName;
    return map;
  }

  factory GetDataSetLogicalTableMapDataTransformRenameColumnOperation.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransformRenameColumnOperation(
      columnName: map['columnName'] as String,
      newColumnName: map['newColumnName'] as String,
    );
  }
}
