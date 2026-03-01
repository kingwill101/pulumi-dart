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
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersAwsAccountId.fromMap(Map<String, dynamic> map) {
    return InsightFiltersAwsAccountId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

