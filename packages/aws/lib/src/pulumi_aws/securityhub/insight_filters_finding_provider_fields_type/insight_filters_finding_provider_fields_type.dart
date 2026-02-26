// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersFindingProviderFieldsType {
  final String comparison;
  final String value;

  InsightFiltersFindingProviderFieldsType({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersFindingProviderFieldsType.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersFindingProviderFieldsType(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
