// ignore_for_file: unused_element, unnecessary_cast

/// Options to configure rule type SetTablePrimaryKey. The rule is used to specify the columns and name to configure/alter the primary key of a table. The rule filter field can refer to one entity. The rule scope can be one of: Table.
class SetTablePrimaryKeyResponse {
  /// Optional. Name for the primary key
  final String primaryKey;

  /// List of column names for the primary key
  final List<String> primaryKeyColumns;

  /// Creates a new [SetTablePrimaryKeyResponse].
  /// [primaryKey] Optional. Name for the primary key
  /// [primaryKeyColumns] List of column names for the primary key
  SetTablePrimaryKeyResponse({
    required this.primaryKey,
    required this.primaryKeyColumns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['primaryKey'] = primaryKey;
    map['primaryKeyColumns'] = primaryKeyColumns;
    return map;
  }

  factory SetTablePrimaryKeyResponse.fromMap(Map<String, dynamic> map) {
    return SetTablePrimaryKeyResponse(
      primaryKey: map['primaryKey'] as String,
      primaryKeyColumns: (map['primaryKeyColumns'] as List).cast<String>(),
    );
  }
}
