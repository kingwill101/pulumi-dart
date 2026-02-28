// ignore_for_file: unused_element, unnecessary_cast

/// The BigQuery location for the input content.
class GoogleCloudAiplatformV1BigQuerySourceResponse {
  /// BigQuery URI to a table, up to 2000 characters long. Accepted forms: * BigQuery path. For example: `bq://projectId.bqDatasetId.bqTableId`.
  final String inputUri;

  /// Creates a new [GoogleCloudAiplatformV1BigQuerySourceResponse].
  /// [inputUri] BigQuery URI to a table, up to 2000 characters long. Accepted forms: * BigQuery path. For example: `bq://projectId.bqDatasetId.bqTableId`.
  GoogleCloudAiplatformV1BigQuerySourceResponse({
    required this.inputUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inputUri'] = inputUri;
    return map;
  }

  factory GoogleCloudAiplatformV1BigQuerySourceResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1BigQuerySourceResponse(
      inputUri: map['inputUri'] as String,
    );
  }
}
