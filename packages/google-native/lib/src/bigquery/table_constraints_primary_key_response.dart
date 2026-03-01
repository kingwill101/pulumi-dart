// ignore_for_file: unused_element, unnecessary_cast

/// [Optional] The primary key of the table.
class TableConstraintsPrimaryKeyResponse {
  final List<String> columns;

  /// Creates a new [TableConstraintsPrimaryKeyResponse].
  /// [columns] Required.
  TableConstraintsPrimaryKeyResponse({required this.columns});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'columns': columns};
  }

  factory TableConstraintsPrimaryKeyResponse.fromMap(Map<String, dynamic> map) {
    return TableConstraintsPrimaryKeyResponse(
      columns: (map['columns'] as List).cast<String>(),
    );
  }
}
