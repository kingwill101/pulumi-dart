// ignore_for_file: unused_element, unnecessary_cast

class DatascanDataProfileSpecPostScanActionsBigqueryExport {
  /// The BigQuery table to export DataProfileScan results to.
  /// Format://bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
  final String? resultsTable;

  /// Creates a new [DatascanDataProfileSpecPostScanActionsBigqueryExport].
  /// [resultsTable] The BigQuery table to export DataProfileScan results to.
  DatascanDataProfileSpecPostScanActionsBigqueryExport({
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

  factory DatascanDataProfileSpecPostScanActionsBigqueryExport.fromMap(
      Map<String, dynamic> map) {
    return DatascanDataProfileSpecPostScanActionsBigqueryExport(
      resultsTable:
          map['resultsTable'] == null ? null : map['resultsTable'] as String,
    );
  }
}
