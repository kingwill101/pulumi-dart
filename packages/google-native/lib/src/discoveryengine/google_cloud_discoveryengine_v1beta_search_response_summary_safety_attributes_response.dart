// ignore_for_file: unused_element, unnecessary_cast

/// Safety Attribute categories and their associated confidence scores.
class GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributesResponse {
  /// The display names of Safety Attribute categories associated with the generated content. Order matches the Scores.
  final List<String> categories;

  /// The confidence scores of the each category, higher value means higher confidence. Order matches the Categories.
  final List<double> scores;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributesResponse].
  /// [categories] The display names of Safety Attribute categories associated with the generated content. Order matches the Scores.
  /// [scores] The confidence scores of the each category, higher value means higher confidence. Order matches the Categories.
  GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributesResponse({
    required this.categories,
    required this.scores,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['categories'] = categories;
    map['scores'] = scores;
    return map;
  }

  factory GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributesResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributesResponse(
      categories: (map['categories'] as List).cast<String>(),
      scores: (map['scores'] as List).cast<double>(),
    );
  }
}
