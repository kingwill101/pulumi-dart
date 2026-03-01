// ignore_for_file: unused_element, unnecessary_cast

/// The BigQuery location for the output content.
class GoogleCloudAiplatformV1beta1BigQueryDestinationResponse {
  /// BigQuery URI to a project or table, up to 2000 characters long. When only the project is specified, the Dataset and Table is created. When the full table reference is specified, the Dataset must exist and table must not exist. Accepted forms: * BigQuery path. For example: `bq://projectId` or `bq://projectId.bqDatasetId` or `bq://projectId.bqDatasetId.bqTableId`.
  final String outputUri;

  /// Creates a new [GoogleCloudAiplatformV1beta1BigQueryDestinationResponse].
  /// [outputUri] BigQuery URI to a project or table, up to 2000 characters long. When only the project is specified, the Dataset and Table is created. When the full table reference is specified, the Dataset must exist and table must not exist. Accepted forms: * BigQuery path. For example: `bq://projectId` or `bq://projectId.bqDatasetId` or `bq://projectId.bqDatasetId.bqTableId`.
  GoogleCloudAiplatformV1beta1BigQueryDestinationResponse({
    required this.outputUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'outputUri': outputUri};
  }

  factory GoogleCloudAiplatformV1beta1BigQueryDestinationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1BigQueryDestinationResponse(
      outputUri: map['outputUri'] as String,
    );
  }
}
