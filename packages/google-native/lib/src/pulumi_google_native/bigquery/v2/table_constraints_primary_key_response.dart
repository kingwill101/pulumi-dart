// ignore_for_file: unused_element, unnecessary_cast

/// [Optional] The primary key of the table.
class TableConstraintsPrimaryKeyResponse {
  final List<String> columns;

  TableConstraintsPrimaryKeyResponse({
    required this.columns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columns'] = columns;
    return map;
  }

  factory TableConstraintsPrimaryKeyResponse.fromMap(Map<String, dynamic> map) {
    return TableConstraintsPrimaryKeyResponse(
      columns: (map['columns'] as List).cast<String>(),
    );
  }
}
