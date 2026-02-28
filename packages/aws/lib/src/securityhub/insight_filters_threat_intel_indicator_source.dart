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
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersThreatIntelIndicatorSource.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersThreatIntelIndicatorSource(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
