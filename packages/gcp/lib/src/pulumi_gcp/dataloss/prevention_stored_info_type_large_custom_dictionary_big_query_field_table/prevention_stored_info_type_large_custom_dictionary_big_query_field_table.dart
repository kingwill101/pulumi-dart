// ignore_for_file: unused_element, unnecessary_cast

class PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldTable {
  /// The dataset ID of the table.
  final String datasetId;

  /// The Google Cloud Platform project ID of the project containing the table.
  final String projectId;

  /// The name of the table.
  final String tableId;

  PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldTable({
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

  factory PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldTable.fromMap(
      Map<String, dynamic> map) {
    return PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldTable(
      datasetId: map['datasetId'] as String,
      projectId: map['projectId'] as String,
      tableId: map['tableId'] as String,
    );
  }
}
