// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersFindingProviderFieldsRelatedFindingsId {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersFindingProviderFieldsRelatedFindingsId].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersFindingProviderFieldsRelatedFindingsId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersFindingProviderFieldsRelatedFindingsId.fromMap(Map<String, dynamic> map) {
    return InsightFiltersFindingProviderFieldsRelatedFindingsId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

