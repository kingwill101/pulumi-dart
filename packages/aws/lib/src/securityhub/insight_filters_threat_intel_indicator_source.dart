// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersThreatIntelIndicatorSource {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersThreatIntelIndicatorSource].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersThreatIntelIndicatorSource({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersThreatIntelIndicatorSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightFiltersThreatIntelIndicatorSource(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
