// ignore_for_file: unused_element, unnecessary_cast

class TableConstraintsForeignKeysItemColumnReferencesItemResponse {
  final String referencedColumn;
  final String referencingColumn;

  TableConstraintsForeignKeysItemColumnReferencesItemResponse({
    required this.referencedColumn,
    required this.referencingColumn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['referencedColumn'] = referencedColumn;
    map['referencingColumn'] = referencingColumn;
    return map;
  }

  factory TableConstraintsForeignKeysItemColumnReferencesItemResponse.fromMap(
      Map<String, dynamic> map) {
    return TableConstraintsForeignKeysItemColumnReferencesItemResponse(
      referencedColumn: map['referencedColumn'] as String,
      referencingColumn: map['referencingColumn'] as String,
    );
  }
}
