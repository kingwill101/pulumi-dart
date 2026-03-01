// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersFindingProviderFieldsRelatedFindingsProductArn {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersFindingProviderFieldsRelatedFindingsProductArn].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersFindingProviderFieldsRelatedFindingsProductArn({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersFindingProviderFieldsRelatedFindingsProductArn.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightFiltersFindingProviderFieldsRelatedFindingsProductArn(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
