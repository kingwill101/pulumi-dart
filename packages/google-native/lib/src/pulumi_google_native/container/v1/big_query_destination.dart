// ignore_for_file: unused_element, unnecessary_cast

/// Parameters for using BigQuery as the destination of resource usage export.
class BigQueryDestination {
  /// The ID of a BigQuery Dataset.
  final String? datasetId;

  BigQueryDestination({
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

  factory BigQueryDestination.fromMap(Map<String, dynamic> map) {
    return BigQueryDestination(
      datasetId: map['datasetId'] == null ? null : map['datasetId'] as String,
    );
  }
}
