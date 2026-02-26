// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersNetworkDirection {
  final String comparison;
  final String value;

  InsightFiltersNetworkDirection({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersNetworkDirection.fromMap(Map<String, dynamic> map) {
    return InsightFiltersNetworkDirection(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
