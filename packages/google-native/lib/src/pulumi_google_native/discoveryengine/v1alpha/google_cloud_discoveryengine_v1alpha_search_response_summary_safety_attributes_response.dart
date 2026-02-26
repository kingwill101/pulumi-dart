// ignore_for_file: unused_element, unnecessary_cast

/// Safety Attribute categories and their associated confidence scores.
class GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributesResponse {
  /// The display names of Safety Attribute categories associated with the generated content. Order matches the Scores.
  final List<String> categories;

  /// The confidence scores of the each category, higher value means higher confidence. Order matches the Categories.
  final List<double> scores;

  GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributesResponse({
    required this.categories,
    required this.scores,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['categories'] = categories;
    map['scores'] = scores;
    return map;
  }

  factory GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributesResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributesResponse(
      categories: (map['categories'] as List).cast<String>(),
      scores: (map['scores'] as List).cast<double>(),
    );
  }
}
