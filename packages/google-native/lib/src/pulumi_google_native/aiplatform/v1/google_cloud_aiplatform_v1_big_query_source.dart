// ignore_for_file: unused_element, unnecessary_cast

/// The BigQuery location for the input content.
class GoogleCloudAiplatformV1BigQuerySource {
  /// BigQuery URI to a table, up to 2000 characters long. Accepted forms: * BigQuery path. For example: `bq://projectId.bqDatasetId.bqTableId`.
  final String inputUri;

  GoogleCloudAiplatformV1BigQuerySource({
    required this.inputUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inputUri'] = inputUri;
    return map;
  }

  factory GoogleCloudAiplatformV1BigQuerySource.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1BigQuerySource(
      inputUri: map['inputUri'] as String,
    );
  }
}
