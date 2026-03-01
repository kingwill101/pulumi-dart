// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersTitle {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersTitle].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersTitle({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersTitle.fromMap(Map<String, dynamic> map) {
    return InsightFiltersTitle(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

