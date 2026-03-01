// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersRecommendationText {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersRecommendationText].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersRecommendationText({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersRecommendationText.fromMap(Map<String, dynamic> map) {
    return InsightFiltersRecommendationText(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
