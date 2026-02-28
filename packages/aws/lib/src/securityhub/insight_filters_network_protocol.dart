// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersNetworkProtocol {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersNetworkProtocol].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersNetworkProtocol({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersNetworkProtocol.fromMap(Map<String, dynamic> map) {
    return InsightFiltersNetworkProtocol(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
