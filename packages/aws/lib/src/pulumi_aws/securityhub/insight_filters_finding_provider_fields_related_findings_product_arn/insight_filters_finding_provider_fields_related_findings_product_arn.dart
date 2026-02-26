// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersFindingProviderFieldsRelatedFindingsProductArn {
  final String comparison;
  final String value;

  InsightFiltersFindingProviderFieldsRelatedFindingsProductArn({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersFindingProviderFieldsRelatedFindingsProductArn.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersFindingProviderFieldsRelatedFindingsProductArn(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
