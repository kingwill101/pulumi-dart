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
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersResourceContainerImageId.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersResourceContainerImageId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
