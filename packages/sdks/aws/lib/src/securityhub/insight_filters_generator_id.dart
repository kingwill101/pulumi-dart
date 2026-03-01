// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersGeneratorId {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersGeneratorId].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersGeneratorId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersGeneratorId.fromMap(Map<String, dynamic> map) {
    return InsightFiltersGeneratorId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

