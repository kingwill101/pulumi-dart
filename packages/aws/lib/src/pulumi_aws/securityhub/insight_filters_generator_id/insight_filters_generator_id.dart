// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersGeneratorId {
  final String comparison;
  final String value;

  InsightFiltersGeneratorId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersGeneratorId.fromMap(Map<String, dynamic> map) {
    return InsightFiltersGeneratorId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
