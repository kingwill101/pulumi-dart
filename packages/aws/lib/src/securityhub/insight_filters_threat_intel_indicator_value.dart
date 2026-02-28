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
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersThreatIntelIndicatorValue.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersThreatIntelIndicatorValue(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
