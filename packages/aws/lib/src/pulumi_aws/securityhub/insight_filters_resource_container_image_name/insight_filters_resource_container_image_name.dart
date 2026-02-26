// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceContainerImageName {
  final String comparison;
  final String value;

  InsightFiltersResourceContainerImageName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersResourceContainerImageName.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersResourceContainerImageName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
