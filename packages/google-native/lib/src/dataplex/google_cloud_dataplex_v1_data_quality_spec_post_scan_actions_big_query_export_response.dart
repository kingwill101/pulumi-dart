// ignore_for_file: unused_element, unnecessary_cast

/// The configuration of BigQuery export post scan action.
class GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExportResponse {
  /// Optional. The BigQuery table to export DataQualityScan results to. Format: //bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
  final String resultsTable;

  /// Creates a new [GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExportResponse].
  /// [resultsTable] Optional. The BigQuery table to export DataQualityScan results to. Format: //bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
  GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExportResponse({
    required this.resultsTable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resultsTable'] = resultsTable;
    return map;
  }

  factory GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExportResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExportResponse(
      resultsTable: map['resultsTable'] as String,
    );
  }
}
