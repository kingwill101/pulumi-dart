// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersNetworkDirection {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersNetworkDirection].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersNetworkDirection({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersNetworkDirection.fromMap(Map<String, dynamic> map) {
    return InsightFiltersNetworkDirection(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

