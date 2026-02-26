// ignore_for_file: unused_element, unnecessary_cast

/// The configuration of BigQuery export post scan action.
class GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExportResponse {
  /// Optional. The BigQuery table to export DataProfileScan results to. Format: //bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
  final String resultsTable;

  GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExportResponse({
    required this.resultsTable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resultsTable'] = resultsTable;
    return map;
  }

  factory GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExportResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExportResponse(
      resultsTable: map['resultsTable'] as String,
    );
  }
}
