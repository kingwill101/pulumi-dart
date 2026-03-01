// ignore_for_file: unused_element, unnecessary_cast


class LakeAccountAccountPrivilegePrivilegeObject {
  /// The name of column.
  final String? column;
  /// The name of database.
  final String? database;
  /// The name of table.
  final String? table;

  /// Creates a new [LakeAccountAccountPrivilegePrivilegeObject].
  /// [column] The name of column.
  /// [database] The name of database.
  /// [table] The name of table.
  LakeAccountAccountPrivilegePrivilegeObject({
    this.column,
    this.database,
    this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': ?column,
      'database': ?database,
      'table': ?table,
    };
  }

  factory LakeAccountAccountPrivilegePrivilegeObject.fromMap(Map<String, dynamic> map) {
    return LakeAccountAccountPrivilegePrivilegeObject(
      column: map['column'] == null ? null : map['column'] as String,
      database: map['database'] == null ? null : map['database'] as String,
      table: map['table'] == null ? null : map['table'] as String,
    );
  }
}

