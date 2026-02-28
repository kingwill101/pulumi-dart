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
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersNetworkProtocol.fromMap(Map<String, dynamic> map) {
    return InsightFiltersNetworkProtocol(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

