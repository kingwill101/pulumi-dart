// ignore_for_file: unused_element, unnecessary_cast

class TableTableConstraintsPrimaryKey {
  /// The columns that are composed of the primary key constraint.
  final List<String> columns;

  /// Creates a new [TableTableConstraintsPrimaryKey].
  /// [columns] The columns that are composed of the primary key constraint.
  TableTableConstraintsPrimaryKey({required this.columns});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'columns': columns};
  }

  factory TableTableConstraintsPrimaryKey.fromMap(Map<String, dynamic> map) {
    return TableTableConstraintsPrimaryKey(
      columns: (map['columns'] as List).cast<String>(),
    );
  }
}
