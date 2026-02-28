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
    final map = <String, dynamic>{};
    final referencedColumnValue = referencedColumn;
    if (referencedColumnValue != null) {
      map['referencedColumn'] = referencedColumnValue;
    }
    final referencingColumnValue = referencingColumn;
    if (referencingColumnValue != null) {
      map['referencingColumn'] = referencingColumnValue;
    }
    return map;
  }

  factory TableConstraintsForeignKeysItemColumnReferencesItem.fromMap(
      Map<String, dynamic> map) {
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
