// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersId {
  final String comparison;
  final String value;

  InsightFiltersId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersId.fromMap(Map<String, dynamic> map) {
    return InsightFiltersId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
