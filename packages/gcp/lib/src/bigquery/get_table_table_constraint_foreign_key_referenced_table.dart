// ignore_for_file: unused_element, unnecessary_cast

class GetTableTableConstraintForeignKeyReferencedTable {
  /// The dataset ID.
  final String datasetId;

  /// The ID of the project containing this table.
  final String projectId;

  /// The table ID.
  final String tableId;

  /// Creates a new [GetTableTableConstraintForeignKeyReferencedTable].
  /// [datasetId] The dataset ID.
  /// [projectId] The ID of the project containing this table.
  /// [tableId] The table ID.
  GetTableTableConstraintForeignKeyReferencedTable({
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

  factory GetTableTableConstraintForeignKeyReferencedTable.fromMap(
      Map<String, dynamic> map) {
    return GetTableTableConstraintForeignKeyReferencedTable(
      datasetId: map['datasetId'] as String,
      projectId: map['projectId'] as String,
      tableId: map['tableId'] as String,
    );
  }
}
