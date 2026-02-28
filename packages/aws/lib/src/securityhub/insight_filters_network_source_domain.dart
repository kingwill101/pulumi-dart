// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersNetworkSourceDomain {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersNetworkSourceDomain].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersNetworkSourceDomain({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersNetworkSourceDomain.fromMap(Map<String, dynamic> map) {
    return InsightFiltersNetworkSourceDomain(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
