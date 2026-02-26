// ignore_for_file: unused_element, unnecessary_cast

class TableTableConstraintsPrimaryKey {
  /// The columns that are composed of the primary key constraint.
  final List<String> columns;

  TableTableConstraintsPrimaryKey({
    required this.columns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columns'] = columns;
    return map;
  }

  factory TableTableConstraintsPrimaryKey.fromMap(Map<String, dynamic> map) {
    return TableTableConstraintsPrimaryKey(
      columns: (map['columns'] as List).cast<String>(),
    );
  }
}
