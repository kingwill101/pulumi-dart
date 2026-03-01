// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersType {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersType].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersType({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersType.fromMap(Map<String, dynamic> map) {
    return InsightFiltersType(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

