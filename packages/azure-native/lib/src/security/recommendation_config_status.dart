/// Recommendation status. When the recommendation status is disabled recommendations are not generated.
enum RecommendationConfigStatus {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const RecommendationConfigStatus(this.value);
  final String value;

  static RecommendationConfigStatus fromValue(String value) {
    for (final item in RecommendationConfigStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecommendationConfigStatus value: $value');
  }
}

