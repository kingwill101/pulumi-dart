// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_table_table_constraint_foreign_key/get_table_table_constraint_foreign_key.dart';
import '../get_table_table_constraint_primary_key/get_table_table_constraint_primary_key.dart';

class GetTableTableConstraint {
  /// Present only if the table has a foreign key. The foreign key is not enforced.
  final List<GetTableTableConstraintForeignKey> foreignKeys;

  /// Represents a primary key constraint on a table's columns. Present only if the table has a primary key. The primary key is not enforced.
  final List<GetTableTableConstraintPrimaryKey> primaryKeys;

  GetTableTableConstraint({
    required this.foreignKeys,
    required this.primaryKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['foreignKeys'] = pulumi.Input.encodeList<
        GetTableTableConstraintForeignKey,
        Map<String, dynamic>>(foreignKeys, (value) => value.toMap());
    map['primaryKeys'] = pulumi.Input.encodeList<
        GetTableTableConstraintPrimaryKey,
        Map<String, dynamic>>(primaryKeys, (value) => value.toMap());
    return map;
  }

  factory GetTableTableConstraint.fromMap(Map<String, dynamic> map) {
    return GetTableTableConstraint(
      foreignKeys: pulumi.Input.decodeList<GetTableTableConstraintForeignKey>(
          map['foreignKeys'],
          (value) => GetTableTableConstraintForeignKey.fromMap(
              (value as Map).cast<String, dynamic>())),
      primaryKeys: pulumi.Input.decodeList<GetTableTableConstraintPrimaryKey>(
          map['primaryKeys'],
          (value) => GetTableTableConstraintPrimaryKey.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
