// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_table_table_constraint_foreign_key_column_reference/get_table_table_constraint_foreign_key_column_reference.dart';
import '../get_table_table_constraint_foreign_key_referenced_table/get_table_table_constraint_foreign_key_referenced_table.dart';

class GetTableTableConstraintForeignKey {
  /// The pair of the foreign key column and primary key column.
  final List<GetTableTableConstraintForeignKeyColumnReference> columnReferences;

  /// Set only if the foreign key constraint is named.
  final String name;

  /// The table that holds the primary key and is referenced by this foreign key.
  final List<GetTableTableConstraintForeignKeyReferencedTable> referencedTables;

  GetTableTableConstraintForeignKey({
    required this.columnReferences,
    required this.name,
    required this.referencedTables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnReferences'] = pulumi.Input.encodeList<
        GetTableTableConstraintForeignKeyColumnReference,
        Map<String, dynamic>>(columnReferences, (value) => value.toMap());
    map['name'] = name;
    map['referencedTables'] = pulumi.Input.encodeList<
        GetTableTableConstraintForeignKeyReferencedTable,
        Map<String, dynamic>>(referencedTables, (value) => value.toMap());
    return map;
  }

  factory GetTableTableConstraintForeignKey.fromMap(Map<String, dynamic> map) {
    return GetTableTableConstraintForeignKey(
      columnReferences: pulumi.Input.decodeList<
              GetTableTableConstraintForeignKeyColumnReference>(
          map['columnReferences'],
          (value) => GetTableTableConstraintForeignKeyColumnReference.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      referencedTables: pulumi.Input.decodeList<
              GetTableTableConstraintForeignKeyReferencedTable>(
          map['referencedTables'],
          (value) => GetTableTableConstraintForeignKeyReferencedTable.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
