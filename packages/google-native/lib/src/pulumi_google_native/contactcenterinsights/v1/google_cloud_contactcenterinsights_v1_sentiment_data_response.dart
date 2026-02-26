// ignore_for_file: unused_element, unnecessary_cast

/// The data for a sentiment annotation.
class GoogleCloudContactcenterinsightsV1SentimentDataResponse {
  /// A non-negative number from 0 to infinity which represents the abolute magnitude of sentiment regardless of score.
  final double magnitude;

  /// The sentiment score between -1.0 (negative) and 1.0 (positive).
  final double score;

  GoogleCloudContactcenterinsightsV1SentimentDataResponse({
    required this.magnitude,
    required this.score,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['magnitude'] = magnitude;
    map['score'] = score;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1SentimentDataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1SentimentDataResponse(
      magnitude: map['magnitude'] as double,
      score: map['score'] as double,
    );
  }
}
