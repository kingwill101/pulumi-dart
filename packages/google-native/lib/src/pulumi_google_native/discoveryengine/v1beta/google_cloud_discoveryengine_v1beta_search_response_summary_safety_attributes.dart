// ignore_for_file: unused_element, unnecessary_cast

/// Safety Attribute categories and their associated confidence scores.
class GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes {
  /// The display names of Safety Attribute categories associated with the generated content. Order matches the Scores.
  final List<String>? categories;

  /// The confidence scores of the each category, higher value means higher confidence. Order matches the Categories.
  final List<double>? scores;

  GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes({
    this.categories,
    this.scores,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final categoriesValue = categories;
    if (categoriesValue != null) {
      map['categories'] = categoriesValue;
    }
    final scoresValue = scores;
    if (scoresValue != null) {
      map['scores'] = scoresValue;
    }
    return map;
  }

  factory GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes(
      categories: map['categories'] == null
          ? null
          : (map['categories'] as List).cast<String>(),
      scores:
          map['scores'] == null ? null : (map['scores'] as List).cast<double>(),
    );
  }
}
