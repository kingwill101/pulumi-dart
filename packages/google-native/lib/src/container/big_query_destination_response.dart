// ignore_for_file: unused_element, unnecessary_cast

/// Parameters for using BigQuery as the destination of resource usage export.
class BigQueryDestinationResponse {
  /// The ID of a BigQuery Dataset.
  final String datasetId;

  /// Creates a new [BigQueryDestinationResponse].
  /// [datasetId] The ID of a BigQuery Dataset.
  BigQueryDestinationResponse({
    required this.datasetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    return map;
  }

  factory BigQueryDestinationResponse.fromMap(Map<String, dynamic> map) {
    return BigQueryDestinationResponse(
      datasetId: map['datasetId'] as String,
    );
  }
}
