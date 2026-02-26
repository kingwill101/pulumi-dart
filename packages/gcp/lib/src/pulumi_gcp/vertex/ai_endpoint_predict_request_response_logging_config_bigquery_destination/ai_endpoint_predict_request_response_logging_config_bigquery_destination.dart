// ignore_for_file: unused_element, unnecessary_cast

class AiEndpointPredictRequestResponseLoggingConfigBigqueryDestination {
  /// BigQuery URI to a project or table, up to 2000 characters long. When only the project is specified, the Dataset and Table is created. When the full table reference is specified, the Dataset must exist and table must not exist. Accepted forms: - BigQuery path. For example: `bq://projectId` or `bq://projectId.bqDatasetId` or `bq://projectId.bqDatasetId.bqTableId`.
  final String? outputUri;

  AiEndpointPredictRequestResponseLoggingConfigBigqueryDestination({
    this.outputUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final outputUriValue = outputUri;
    if (outputUriValue != null) {
      map['outputUri'] = outputUriValue;
    }
    return map;
  }

  factory AiEndpointPredictRequestResponseLoggingConfigBigqueryDestination.fromMap(
      Map<String, dynamic> map) {
    return AiEndpointPredictRequestResponseLoggingConfigBigqueryDestination(
      outputUri: map['outputUri'] == null ? null : map['outputUri'] as String,
    );
  }
}
