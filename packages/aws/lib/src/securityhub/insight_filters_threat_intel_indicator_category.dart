// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersThreatIntelIndicatorCategory {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersThreatIntelIndicatorCategory].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersThreatIntelIndicatorCategory({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersThreatIntelIndicatorCategory.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersThreatIntelIndicatorCategory(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
