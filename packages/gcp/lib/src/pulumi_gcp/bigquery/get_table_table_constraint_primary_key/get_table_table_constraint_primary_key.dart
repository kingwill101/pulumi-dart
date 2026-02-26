// ignore_for_file: unused_element, unnecessary_cast

class GetTableTableConstraintPrimaryKey {
  /// The columns that are composed of the primary key constraint.
  final List<String> columns;

  GetTableTableConstraintPrimaryKey({
    required this.columns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columns'] = columns;
    return map;
  }

  factory GetTableTableConstraintPrimaryKey.fromMap(Map<String, dynamic> map) {
    return GetTableTableConstraintPrimaryKey(
      columns: (map['columns'] as List).cast<String>(),
    );
  }
}
