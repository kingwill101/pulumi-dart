// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersThreatIntelIndicatorType {
  final String comparison;
  final String value;

  InsightFiltersThreatIntelIndicatorType({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersThreatIntelIndicatorType.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersThreatIntelIndicatorType(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
