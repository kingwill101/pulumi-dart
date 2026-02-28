// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_table_constraints_foreign_key.dart';
import 'table_table_constraints_primary_key.dart';

class TableTableConstraints {
  /// Present only if the table has a foreign key.
  /// The foreign key is not enforced.
  /// Structure is documented below.
  final List<TableTableConstraintsForeignKey>? foreignKeys;

  /// Represents the primary key constraint
  /// on a table's columns. Present only if the table has a primary key.
  /// The primary key is not enforced.
  /// Structure is documented below.
  final TableTableConstraintsPrimaryKey? primaryKey;

  /// Creates a new [TableTableConstraints].
  /// [foreignKeys] Present only if the table has a foreign key.
  /// [primaryKey] Represents the primary key constraint
  TableTableConstraints({
    this.foreignKeys,
    this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final foreignKeysValue = foreignKeys;
    if (foreignKeysValue != null) {
      map['foreignKeys'] = pulumi.Input.encodeList<
          TableTableConstraintsForeignKey,
          Map<String, dynamic>>(foreignKeysValue, (value) => value.toMap());
    }
    final primaryKeyValue = primaryKey;
    if (primaryKeyValue != null) {
      map['primaryKey'] = primaryKeyValue.toMap();
    }
    return map;
  }

  factory TableTableConstraints.fromMap(Map<String, dynamic> map) {
    return TableTableConstraints(
      foreignKeys: map['foreignKeys'] == null
          ? null
          : pulumi.Input.decodeList<TableTableConstraintsForeignKey>(
              map['foreignKeys'],
              (value) => TableTableConstraintsForeignKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
      primaryKey: map['primaryKey'] == null
          ? null
          : TableTableConstraintsPrimaryKey.fromMap(
              (map['primaryKey'] as Map).cast<String, dynamic>()),
    );
  }
}
