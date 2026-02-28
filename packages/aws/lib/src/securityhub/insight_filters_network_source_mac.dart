// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersNetworkSourceMac {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersNetworkSourceMac].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersNetworkSourceMac({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersNetworkSourceMac.fromMap(Map<String, dynamic> map) {
    return InsightFiltersNetworkSourceMac(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
