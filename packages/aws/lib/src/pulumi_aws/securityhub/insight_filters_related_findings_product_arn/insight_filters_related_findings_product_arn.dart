// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersRelatedFindingsProductArn {
  final String comparison;
  final String value;

  InsightFiltersRelatedFindingsProductArn({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersRelatedFindingsProductArn.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersRelatedFindingsProductArn(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
