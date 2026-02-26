// ignore_for_file: unused_element, unnecessary_cast

/// Parameters for using BigQuery as the destination of resource usage export.
class BigQueryDestinationResponse2 {
  /// The ID of a BigQuery Dataset.
  final String datasetId;

  BigQueryDestinationResponse2({
    required this.datasetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    return map;
  }

  factory BigQueryDestinationResponse2.fromMap(Map<String, dynamic> map) {
    return BigQueryDestinationResponse2(
      datasetId: map['datasetId'] as String,
    );
  }
}
