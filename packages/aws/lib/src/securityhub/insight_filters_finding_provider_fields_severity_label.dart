// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersFindingProviderFieldsSeverityLabel {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersFindingProviderFieldsSeverityLabel].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersFindingProviderFieldsSeverityLabel({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersFindingProviderFieldsSeverityLabel.fromMap(Map<String, dynamic> map) {
    return InsightFiltersFindingProviderFieldsSeverityLabel(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

