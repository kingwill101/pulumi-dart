// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersProductArn {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersProductArn].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersProductArn({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersProductArn.fromMap(Map<String, dynamic> map) {
    return InsightFiltersProductArn(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
