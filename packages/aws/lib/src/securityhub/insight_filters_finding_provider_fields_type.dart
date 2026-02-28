// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersFindingProviderFieldsType {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersFindingProviderFieldsType].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersFindingProviderFieldsType({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersFindingProviderFieldsType.fromMap(Map<String, dynamic> map) {
    return InsightFiltersFindingProviderFieldsType(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

