// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersRecommendationText {
  final String comparison;
  final String value;

  InsightFiltersRecommendationText({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersRecommendationText.fromMap(Map<String, dynamic> map) {
    return InsightFiltersRecommendationText(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
