// ignore_for_file: unused_element, unnecessary_cast

class DataSetColumnLevelPermissionRule {
  /// An array of column names.
  final List<String>? columnNames;

  /// An array of ARNs for Amazon QuickSight users or groups.
  final List<String>? principals;

  /// Creates a new [DataSetColumnLevelPermissionRule].
  /// [columnNames] An array of column names.
  /// [principals] An array of ARNs for Amazon QuickSight users or groups.
  DataSetColumnLevelPermissionRule({
    this.columnNames,
    this.principals,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnNamesValue = columnNames;
    if (columnNamesValue != null) {
      map['columnNames'] = columnNamesValue;
    }
    final principalsValue = principals;
    if (principalsValue != null) {
      map['principals'] = principalsValue;
    }
    return map;
  }

  factory DataSetColumnLevelPermissionRule.fromMap(Map<String, dynamic> map) {
    return DataSetColumnLevelPermissionRule(
      columnNames: map['columnNames'] == null
          ? null
          : (map['columnNames'] as List).cast<String>(),
      principals: map['principals'] == null
          ? null
          : (map['principals'] as List).cast<String>(),
    );
  }
}
