// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersThreatIntelIndicatorValue {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersThreatIntelIndicatorValue].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersThreatIntelIndicatorValue({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersThreatIntelIndicatorValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightFiltersThreatIntelIndicatorValue(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
