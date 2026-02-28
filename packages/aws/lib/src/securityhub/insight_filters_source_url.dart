// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersSourceUrl {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersSourceUrl].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersSourceUrl({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersSourceUrl.fromMap(Map<String, dynamic> map) {
    return InsightFiltersSourceUrl(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
