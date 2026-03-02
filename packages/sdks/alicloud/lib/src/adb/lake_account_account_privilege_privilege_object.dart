// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LakeAccountAccountPrivilegePrivilegeObject {
  /// The name of column.
  final pulumi.Input<String>? column;
  /// The name of database.
  final pulumi.Input<String>? database;
  /// The name of table.
  final pulumi.Input<String>? table;

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
      column: map['column'] == null ? null : (map['column']! as String).input(),
      database: map['database'] == null ? null : (map['database']! as String).input(),
      table: map['table'] == null ? null : (map['table']! as String).input(),
    );
  }
}

