/// The cloud that the recommendation is supported on.
enum RecommendationSupportedClouds {
  valueAzure("Azure"),
  valueAWS("AWS"),
  valueGCP("GCP");

  const RecommendationSupportedClouds(this.value);
  final String value;

  static RecommendationSupportedClouds fromValue(String value) {
    for (final item in RecommendationSupportedClouds.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecommendationSupportedClouds value: $value');
  }
}

