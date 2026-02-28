// ignore_for_file: unused_element, unnecessary_cast


/// Parameters for using BigQuery as the destination of resource usage export.
class BigQueryDestinationContainerV1beta1 {
  /// The ID of a BigQuery Dataset.
  final String? datasetId;

  /// Creates a new [BigQueryDestinationContainerV1beta1].
  /// [datasetId] The ID of a BigQuery Dataset.
  BigQueryDestinationContainerV1beta1({
    this.datasetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': ?datasetId,
    };
  }

  factory BigQueryDestinationContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return BigQueryDestinationContainerV1beta1(
      datasetId: map['datasetId'] == null ? null : map['datasetId'] as String,
    );
  }
}

