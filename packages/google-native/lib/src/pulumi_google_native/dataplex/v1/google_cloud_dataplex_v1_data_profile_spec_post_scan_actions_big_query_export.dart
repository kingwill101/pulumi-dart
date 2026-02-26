// ignore_for_file: unused_element, unnecessary_cast

/// The configuration of BigQuery export post scan action.
class GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport {
  /// Optional. The BigQuery table to export DataProfileScan results to. Format: //bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
  final String? resultsTable;

  GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport({
    this.resultsTable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resultsTableValue = resultsTable;
    if (resultsTableValue != null) {
      map['resultsTable'] = resultsTableValue;
    }
    return map;
  }

  factory GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport(
      resultsTable:
          map['resultsTable'] == null ? null : map['resultsTable'] as String,
    );
  }
}
