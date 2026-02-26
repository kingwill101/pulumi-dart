// ignore_for_file: unused_element, unnecessary_cast

class TableTableConstraintsForeignKeyReferencedTable {
  /// The ID of the dataset containing this table.
  final String datasetId;

  /// The ID of the project containing this table.
  final String projectId;

  /// The ID of the table. The ID must contain only
  /// letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum
  /// length is 1,024 characters. Certain operations allow suffixing of
  /// the table ID with a partition decorator, such as
  /// sample_table$20190123.
  final String tableId;

  TableTableConstraintsForeignKeyReferencedTable({
    required this.datasetId,
    required this.projectId,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['projectId'] = projectId;
    map['tableId'] = tableId;
    return map;
  }

  factory TableTableConstraintsForeignKeyReferencedTable.fromMap(
      Map<String, dynamic> map) {
    return TableTableConstraintsForeignKeyReferencedTable(
      datasetId: map['datasetId'] as String,
      projectId: map['projectId'] as String,
      tableId: map['tableId'] as String,
    );
  }
}
