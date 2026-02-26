// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersProcessName {
  final String comparison;
  final String value;

  InsightFiltersProcessName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersProcessName.fromMap(Map<String, dynamic> map) {
    return InsightFiltersProcessName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
