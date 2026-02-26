// ignore_for_file: unused_element, unnecessary_cast

/// Message defining the location of a BigQuery table. A table is uniquely identified by its project_id, dataset_id, and table_name. Within a query a table is often referenced with a string in the format of: `:.` or `..`.
class GooglePrivacyDlpV2BigQueryTableResponse {
  /// Dataset ID of the table.
  final String datasetId;

  /// The Google Cloud Platform project ID of the project containing the table. If omitted, project ID is inferred from the API call.
  final String project;

  /// Name of the table.
  final String tableId;

  GooglePrivacyDlpV2BigQueryTableResponse({
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

  factory GooglePrivacyDlpV2BigQueryTableResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryTableResponse(
      datasetId: map['datasetId'] as String,
      project: map['project'] as String,
      tableId: map['tableId'] as String,
    );
  }
}
