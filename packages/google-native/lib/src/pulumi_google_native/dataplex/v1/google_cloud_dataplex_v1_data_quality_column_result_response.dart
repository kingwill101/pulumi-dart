// ignore_for_file: unused_element, unnecessary_cast

/// DataQualityColumnResult provides a more detailed, per-column view of the results.
class GoogleCloudDataplexV1DataQualityColumnResultResponse {
  /// The column specified in the DataQualityRule.
  final String column;

  /// The column-level data quality score for this data scan job if and only if the 'column' field is set.The score ranges between between 0, 100 (up to two decimal points).
  final double score;

  GoogleCloudDataplexV1DataQualityColumnResultResponse({
    required this.column,
    required this.score,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['column'] = column;
    map['score'] = score;
    return map;
  }

  factory GoogleCloudDataplexV1DataQualityColumnResultResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityColumnResultResponse(
      column: map['column'] as String,
      score: map['score'] as double,
    );
  }
}
