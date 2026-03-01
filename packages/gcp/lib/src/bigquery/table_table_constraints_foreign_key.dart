// ignore_for_file: unused_element, unnecessary_cast

import 'table_table_constraints_foreign_key_column_references.dart';
import 'table_table_constraints_foreign_key_referenced_table.dart';

class TableTableConstraintsForeignKey {
  /// The pair of the foreign key column and primary key column.
  /// Structure is documented below.
  final TableTableConstraintsForeignKeyColumnReferences columnReferences;
  /// Set only if the foreign key constraint is named.
  final String? name;
  /// The table that holds the primary key
  /// and is referenced by this foreign key.
  /// Structure is documented below.
  final TableTableConstraintsForeignKeyReferencedTable referencedTable;

  /// Creates a new [TableTableConstraintsForeignKey].
  /// [columnReferences] The pair of the foreign key column and primary key column.
  /// [name] Set only if the foreign key constraint is named.
  /// [referencedTable] The table that holds the primary key
  TableTableConstraintsForeignKey({
    required this.columnReferences,
    this.name,
    required this.referencedTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnReferences': columnReferences.toMap(),
      'name': ?name,
      'referencedTable': referencedTable.toMap(),
    };
  }

  factory TableTableConstraintsForeignKey.fromMap(Map<String, dynamic> map) {
    return TableTableConstraintsForeignKey(
      columnReferences: TableTableConstraintsForeignKeyColumnReferences.fromMap((map['columnReferences'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      referencedTable: TableTableConstraintsForeignKeyReferencedTable.fromMap((map['referencedTable'] as Map).cast<String, dynamic>()),
    );
  }
}

