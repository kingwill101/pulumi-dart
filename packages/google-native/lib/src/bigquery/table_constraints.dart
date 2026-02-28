// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_constraints_foreign_keys_item.dart';
import 'table_constraints_primary_key.dart';

class TableConstraints {
  /// [Optional] The foreign keys of the tables.
  final List<TableConstraintsForeignKeysItem>? foreignKeys;
  /// [Optional] The primary key of the table.
  final TableConstraintsPrimaryKey? primaryKey;

  /// Creates a new [TableConstraints].
  /// [foreignKeys] [Optional] The foreign keys of the tables.
  /// [primaryKey] [Optional] The primary key of the table.
  TableConstraints({
    this.foreignKeys,
    this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'foreignKeys': ?foreignKeys == null ? null : pulumi.Input.encodeList<TableConstraintsForeignKeysItem, Map<String, dynamic>>(foreignKeys!, (value) => value.toMap()),
      'primaryKey': ?primaryKey == null ? null : primaryKey!.toMap(),
    };
  }

  factory TableConstraints.fromMap(Map<String, dynamic> map) {
    return TableConstraints(
      foreignKeys: map['foreignKeys'] == null ? null : pulumi.Input.decodeList<TableConstraintsForeignKeysItem>(map['foreignKeys'], (value) => TableConstraintsForeignKeysItem.fromMap((value as Map).cast<String, dynamic>())),
      primaryKey: map['primaryKey'] == null ? null : TableConstraintsPrimaryKey.fromMap((map['primaryKey'] as Map).cast<String, dynamic>()),
    );
  }
}

