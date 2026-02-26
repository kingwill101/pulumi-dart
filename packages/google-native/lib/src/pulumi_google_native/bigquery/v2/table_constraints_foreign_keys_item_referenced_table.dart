// ignore_for_file: unused_element, unnecessary_cast

class TableConstraintsForeignKeysItemReferencedTable {
  final String? datasetId;
  final String? project;
  final String? tableId;

  TableConstraintsForeignKeysItemReferencedTable({
    this.datasetId,
    this.project,
    this.tableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datasetIdValue = datasetId;
    if (datasetIdValue != null) {
      map['datasetId'] = datasetIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final tableIdValue = tableId;
    if (tableIdValue != null) {
      map['tableId'] = tableIdValue;
    }
    return map;
  }

  factory TableConstraintsForeignKeysItemReferencedTable.fromMap(
      Map<String, dynamic> map) {
    return TableConstraintsForeignKeysItemReferencedTable(
      datasetId: map['datasetId'] == null ? null : map['datasetId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tableId: map['tableId'] == null ? null : map['tableId'] as String,
    );
  }
}
