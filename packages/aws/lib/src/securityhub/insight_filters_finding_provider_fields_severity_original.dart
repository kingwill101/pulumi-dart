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
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersFindingProviderFieldsSeverityOriginal.fromMap(Map<String, dynamic> map) {
    return InsightFiltersFindingProviderFieldsSeverityOriginal(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

