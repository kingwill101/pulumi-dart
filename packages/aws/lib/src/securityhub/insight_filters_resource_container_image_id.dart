// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersResourceContainerImageId {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourceContainerImageId].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceContainerImageId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersResourceContainerImageId.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceContainerImageId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

