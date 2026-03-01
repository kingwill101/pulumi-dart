// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceContainerImageName {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourceContainerImageName].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceContainerImageName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersResourceContainerImageName.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightFiltersResourceContainerImageName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
