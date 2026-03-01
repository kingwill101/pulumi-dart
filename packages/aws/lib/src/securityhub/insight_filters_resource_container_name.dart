// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersResourceContainerName {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourceContainerName].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceContainerName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersResourceContainerName.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceContainerName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

