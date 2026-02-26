// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersProcessPath {
  final String comparison;
  final String value;

  InsightFiltersProcessPath({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersProcessPath.fromMap(Map<String, dynamic> map) {
    return InsightFiltersProcessPath(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
