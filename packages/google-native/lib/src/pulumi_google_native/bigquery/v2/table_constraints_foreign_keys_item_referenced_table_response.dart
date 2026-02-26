// ignore_for_file: unused_element, unnecessary_cast

class TableConstraintsForeignKeysItemReferencedTableResponse {
  final String datasetId;
  final String project;
  final String tableId;

  TableConstraintsForeignKeysItemReferencedTableResponse({
    required this.datasetId,
    required this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['project'] = project;
    map['tableId'] = tableId;
    return map;
  }

  factory TableConstraintsForeignKeysItemReferencedTableResponse.fromMap(
      Map<String, dynamic> map) {
    return TableConstraintsForeignKeysItemReferencedTableResponse(
      datasetId: map['datasetId'] as String,
      project: map['project'] as String,
      tableId: map['tableId'] as String,
    );
  }
}
