// ignore_for_file: unused_element, unnecessary_cast

class AiFeatureGroupBigQueryBigQuerySource {
  /// BigQuery URI to a table, up to 2000 characters long. For example: `bq://projectId.bqDatasetId.bqTableId.`
  final String inputUri;

  AiFeatureGroupBigQueryBigQuerySource({
    required this.inputUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inputUri'] = inputUri;
    return map;
  }

  factory AiFeatureGroupBigQueryBigQuerySource.fromMap(
      Map<String, dynamic> map) {
    return AiFeatureGroupBigQueryBigQuerySource(
      inputUri: map['inputUri'] as String,
    );
  }
}
