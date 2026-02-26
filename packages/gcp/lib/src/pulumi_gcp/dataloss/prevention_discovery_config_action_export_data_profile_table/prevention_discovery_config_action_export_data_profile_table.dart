// ignore_for_file: unused_element, unnecessary_cast

class PreventionDiscoveryConfigActionExportDataProfileTable {
  /// Dataset Id of the table
  final String? datasetId;

  /// The Google Cloud Platform project ID of the project containing the table. If omitted, the project ID is inferred from the API call.
  final String? projectId;

  /// Name of the table
  final String? tableId;

  PreventionDiscoveryConfigActionExportDataProfileTable({
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

  factory PreventionDiscoveryConfigActionExportDataProfileTable.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionExportDataProfileTable(
      datasetId: map['datasetId'] == null ? null : map['datasetId'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      tableId: map['tableId'] == null ? null : map['tableId'] as String,
    );
  }
}
