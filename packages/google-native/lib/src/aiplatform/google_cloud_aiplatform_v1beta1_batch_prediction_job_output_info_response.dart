// ignore_for_file: unused_element, unnecessary_cast

/// Further describes this job's output. Supplements output_config.
class GoogleCloudAiplatformV1beta1BatchPredictionJobOutputInfoResponse {
  /// The path of the BigQuery dataset created, in `bq://projectId.bqDatasetId` format, into which the prediction output is written.
  final String bigqueryOutputDataset;

  /// The name of the BigQuery table created, in `predictions_` format, into which the prediction output is written. Can be used by UI to generate the BigQuery output path, for example.
  final String bigqueryOutputTable;

  /// The full path of the Cloud Storage directory created, into which the prediction output is written.
  final String gcsOutputDirectory;

  /// Creates a new [GoogleCloudAiplatformV1beta1BatchPredictionJobOutputInfoResponse].
  /// [bigqueryOutputDataset] The path of the BigQuery dataset created, in `bq://projectId.bqDatasetId` format, into which the prediction output is written.
  /// [bigqueryOutputTable] The name of the BigQuery table created, in `predictions_` format, into which the prediction output is written. Can be used by UI to generate the BigQuery output path, for example.
  /// [gcsOutputDirectory] The full path of the Cloud Storage directory created, into which the prediction output is written.
  GoogleCloudAiplatformV1beta1BatchPredictionJobOutputInfoResponse({
    required this.bigqueryOutputDataset,
    required this.bigqueryOutputTable,
    required this.gcsOutputDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryOutputDataset': bigqueryOutputDataset,
      'bigqueryOutputTable': bigqueryOutputTable,
      'gcsOutputDirectory': gcsOutputDirectory,
    };
  }

  factory GoogleCloudAiplatformV1beta1BatchPredictionJobOutputInfoResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1BatchPredictionJobOutputInfoResponse(
      bigqueryOutputDataset: map['bigqueryOutputDataset'] as String,
      bigqueryOutputTable: map['bigqueryOutputTable'] as String,
      gcsOutputDirectory: map['gcsOutputDirectory'] as String,
    );
  }
}
