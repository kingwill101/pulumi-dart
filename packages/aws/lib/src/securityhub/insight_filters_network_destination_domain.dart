// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersNetworkDestinationDomain {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersNetworkDestinationDomain].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersNetworkDestinationDomain({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersNetworkDestinationDomain.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightFiltersNetworkDestinationDomain(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
