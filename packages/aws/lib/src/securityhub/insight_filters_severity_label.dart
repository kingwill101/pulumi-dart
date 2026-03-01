// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersSeverityLabel {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersSeverityLabel].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersSeverityLabel({required this.comparison, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersSeverityLabel.fromMap(Map<String, dynamic> map) {
    return InsightFiltersSeverityLabel(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
