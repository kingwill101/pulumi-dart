// ignore_for_file: unused_element, unnecessary_cast

class TableConstraintsForeignKeysItemColumnReferencesItem {
  final String? referencedColumn;
  final String? referencingColumn;

  /// Creates a new [TableConstraintsForeignKeysItemColumnReferencesItem].
  /// [referencedColumn] Optional.
  /// [referencingColumn] Optional.
  TableConstraintsForeignKeysItemColumnReferencesItem({
    this.referencedColumn,
    this.referencingColumn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referencedColumn': ?referencedColumn,
      'referencingColumn': ?referencingColumn,
    };
  }

  factory TableConstraintsForeignKeysItemColumnReferencesItem.fromMap(
    Map<String, dynamic> map,
  ) {
    return TableConstraintsForeignKeysItemColumnReferencesItem(
      referencedColumn: map['referencedColumn'] == null
          ? null
          : map['referencedColumn'] as String,
      referencingColumn: map['referencingColumn'] == null
          ? null
          : map['referencingColumn'] as String,
    );
  }
}
