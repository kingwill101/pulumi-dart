// ignore_for_file: unused_element, unnecessary_cast

class BiReservationPreferredTable {
  /// The ID of the dataset in the above project.
  final String? datasetId;

  /// The assigned project ID of the project.
  final String? projectId;

  /// The ID of the table in the above dataset.
  final String? tableId;

  BiReservationPreferredTable({
    this.datasetId,
    this.projectId,
    this.tableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datasetIdValue = datasetId;
    if (datasetIdValue != null) {
      map['datasetId'] = datasetIdValue;
    }
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    final tableIdValue = tableId;
    if (tableIdValue != null) {
      map['tableId'] = tableIdValue;
    }
    return map;
  }

  factory BiReservationPreferredTable.fromMap(Map<String, dynamic> map) {
    return BiReservationPreferredTable(
      datasetId: map['datasetId'] == null ? null : map['datasetId'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      tableId: map['tableId'] == null ? null : map['tableId'] as String,
    );
  }
}
