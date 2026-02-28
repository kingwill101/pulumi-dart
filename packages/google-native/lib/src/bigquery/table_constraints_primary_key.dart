// ignore_for_file: unused_element, unnecessary_cast

/// [Optional] The primary key of the table.
class TableConstraintsPrimaryKey {
  final List<String>? columns;

  /// Creates a new [TableConstraintsPrimaryKey].
  /// [columns] Optional.
  TableConstraintsPrimaryKey({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnsValue = columns;
    if (columnsValue != null) {
      map['columns'] = columnsValue;
    }
    return map;
  }

  factory TableConstraintsPrimaryKey.fromMap(Map<String, dynamic> map) {
    return TableConstraintsPrimaryKey(
      columns: map['columns'] == null
          ? null
          : (map['columns'] as List).cast<String>(),
    );
  }
}
