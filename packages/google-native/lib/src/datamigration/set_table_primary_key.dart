// ignore_for_file: unused_element, unnecessary_cast


/// Options to configure rule type SetTablePrimaryKey. The rule is used to specify the columns and name to configure/alter the primary key of a table. The rule filter field can refer to one entity. The rule scope can be one of: Table.
class SetTablePrimaryKey {
  /// Optional. Name for the primary key
  final String? primaryKey;
  /// List of column names for the primary key
  final List<String> primaryKeyColumns;

  /// Creates a new [SetTablePrimaryKey].
  /// [primaryKey] Optional. Name for the primary key
  /// [primaryKeyColumns] List of column names for the primary key
  SetTablePrimaryKey({
    this.primaryKey,
    required this.primaryKeyColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryKey': ?primaryKey,
      'primaryKeyColumns': primaryKeyColumns,
    };
  }

  factory SetTablePrimaryKey.fromMap(Map<String, dynamic> map) {
    return SetTablePrimaryKey(
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as String,
      primaryKeyColumns: (map['primaryKeyColumns'] as List).cast<String>(),
    );
  }
}

