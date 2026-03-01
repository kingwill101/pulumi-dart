// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersThreatIntelIndicatorSourceUrl {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersThreatIntelIndicatorSourceUrl].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersThreatIntelIndicatorSourceUrl({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersThreatIntelIndicatorSourceUrl.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightFiltersThreatIntelIndicatorSourceUrl(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
