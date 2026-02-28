// ignore_for_file: unused_element, unnecessary_cast

class GetTableTableConstraintForeignKeyColumnReference {
  /// The column in the primary key that are referenced by the referencingColumn.
  final String referencedColumn;

  /// The column that composes the foreign key.
  final String referencingColumn;

  /// Creates a new [GetTableTableConstraintForeignKeyColumnReference].
  /// [referencedColumn] The column in the primary key that are referenced by the referencingColumn.
  /// [referencingColumn] The column that composes the foreign key.
  GetTableTableConstraintForeignKeyColumnReference({
    required this.referencedColumn,
    required this.referencingColumn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['referencedColumn'] = referencedColumn;
    map['referencingColumn'] = referencingColumn;
    return map;
  }

  factory GetTableTableConstraintForeignKeyColumnReference.fromMap(
      Map<String, dynamic> map) {
    return GetTableTableConstraintForeignKeyColumnReference(
      referencedColumn: map['referencedColumn'] as String,
      referencingColumn: map['referencingColumn'] as String,
    );
  }
}
