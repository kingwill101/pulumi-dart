// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceContainerName {
  final String comparison;
  final String value;

  InsightFiltersResourceContainerName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersResourceContainerName.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersResourceContainerName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
