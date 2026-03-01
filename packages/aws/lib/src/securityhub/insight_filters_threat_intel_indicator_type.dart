// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersThreatIntelIndicatorType {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersThreatIntelIndicatorType].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersThreatIntelIndicatorType({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersThreatIntelIndicatorType.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightFiltersThreatIntelIndicatorType(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
