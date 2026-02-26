// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersType {
  final String comparison;
  final String value;

  InsightFiltersType({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersType.fromMap(Map<String, dynamic> map) {
    return InsightFiltersType(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
