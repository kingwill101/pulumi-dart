// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersAwsAccountId {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersAwsAccountId].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersAwsAccountId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersAwsAccountId.fromMap(Map<String, dynamic> map) {
    return InsightFiltersAwsAccountId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
