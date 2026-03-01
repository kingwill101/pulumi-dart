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
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersProductArn.fromMap(Map<String, dynamic> map) {
    return InsightFiltersProductArn(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

