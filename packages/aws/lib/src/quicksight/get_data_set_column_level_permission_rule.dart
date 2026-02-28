// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetColumnLevelPermissionRule {
  final List<String> columnNames;
  final List<String> principals;

  /// Creates a new [GetDataSetColumnLevelPermissionRule].
  /// [columnNames] Required.
  /// [principals] Required.
  GetDataSetColumnLevelPermissionRule({
    required this.columnNames,
    required this.principals,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnNames'] = columnNames;
    map['principals'] = principals;
    return map;
  }

  factory GetDataSetColumnLevelPermissionRule.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetColumnLevelPermissionRule(
      columnNames: (map['columnNames'] as List).cast<String>(),
      principals: (map['principals'] as List).cast<String>(),
    );
  }
}
