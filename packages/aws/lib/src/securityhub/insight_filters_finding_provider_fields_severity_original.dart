// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersFindingProviderFieldsSeverityOriginal {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersFindingProviderFieldsSeverityOriginal].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersFindingProviderFieldsSeverityOriginal({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersFindingProviderFieldsSeverityOriginal.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersFindingProviderFieldsSeverityOriginal(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
