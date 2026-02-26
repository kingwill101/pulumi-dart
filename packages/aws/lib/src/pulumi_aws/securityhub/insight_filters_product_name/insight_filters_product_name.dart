// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersProductName {
  final String comparison;
  final String value;

  InsightFiltersProductName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersProductName.fromMap(Map<String, dynamic> map) {
    return InsightFiltersProductName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
