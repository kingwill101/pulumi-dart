// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersThreatIntelIndicatorSourceUrl {
  final String comparison;
  final String value;

  InsightFiltersThreatIntelIndicatorSourceUrl({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersThreatIntelIndicatorSourceUrl.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersThreatIntelIndicatorSourceUrl(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
