// ignore_for_file: unused_element, unnecessary_cast


class TableConstraintsForeignKeysItemReferencedTableResponse {
  final String datasetId;
  final String project;
  final String tableId;

  /// Creates a new [TableConstraintsForeignKeysItemReferencedTableResponse].
  /// [datasetId] Required.
  /// [project] Required.
  /// [tableId] Required.
  TableConstraintsForeignKeysItemReferencedTableResponse({
    required this.datasetId,
    required this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'project': project,
      'tableId': tableId,
    };
  }

  factory TableConstraintsForeignKeysItemReferencedTableResponse.fromMap(Map<String, dynamic> map) {
    return TableConstraintsForeignKeysItemReferencedTableResponse(
      datasetId: map['datasetId'] as String,
      project: map['project'] as String,
      tableId: map['tableId'] as String,
    );
  }
}

