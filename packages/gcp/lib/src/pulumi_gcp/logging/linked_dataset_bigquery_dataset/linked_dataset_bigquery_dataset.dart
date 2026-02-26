// ignore_for_file: unused_element, unnecessary_cast

class LinkedDatasetBigqueryDataset {
  /// (Output)
  /// Output only. The full resource name of the BigQuery dataset. The DATASET_ID will match the ID
  /// of the link, so the link must match the naming restrictions of BigQuery datasets
  /// (alphanumeric characters and underscores only). The dataset will have a resource path of
  /// "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET_ID]"
  final String? datasetId;

  LinkedDatasetBigqueryDataset({
    this.datasetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datasetIdValue = datasetId;
    if (datasetIdValue != null) {
      map['datasetId'] = datasetIdValue;
    }
    return map;
  }

  factory LinkedDatasetBigqueryDataset.fromMap(Map<String, dynamic> map) {
    return LinkedDatasetBigqueryDataset(
      datasetId: map['datasetId'] == null ? null : map['datasetId'] as String,
    );
  }
}
