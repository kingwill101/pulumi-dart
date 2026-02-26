// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'table_constraints_foreign_keys_item.dart';
import 'table_constraints_primary_key.dart';

class TableConstraints {
  /// [Optional] The foreign keys of the tables.
  final List<TableConstraintsForeignKeysItem>? foreignKeys;

  /// [Optional] The primary key of the table.
  final TableConstraintsPrimaryKey? primaryKey;

  TableConstraints({
    this.foreignKeys,
    this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final foreignKeysValue = foreignKeys;
    if (foreignKeysValue != null) {
      map['foreignKeys'] = Input.encodeList<TableConstraintsForeignKeysItem,
          Map<String, dynamic>>(foreignKeysValue, (value) => value.toMap());
    }
    final primaryKeyValue = primaryKey;
    if (primaryKeyValue != null) {
      map['primaryKey'] = primaryKeyValue.toMap();
    }
    return map;
  }

  factory TableConstraints.fromMap(Map<String, dynamic> map) {
    return TableConstraints(
      foreignKeys: map['foreignKeys'] == null
          ? null
          : Input.decodeList<TableConstraintsForeignKeysItem>(
              map['foreignKeys'],
              (value) => TableConstraintsForeignKeysItem.fromMap(
                  (value as Map).cast<String, dynamic>())),
      primaryKey: map['primaryKey'] == null
          ? null
          : TableConstraintsPrimaryKey.fromMap(
              (map['primaryKey'] as Map).cast<String, dynamic>()),
    );
  }
}
