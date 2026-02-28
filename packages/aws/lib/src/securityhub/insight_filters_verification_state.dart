// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersVerificationState {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersVerificationState].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersVerificationState({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersVerificationState.fromMap(Map<String, dynamic> map) {
    return InsightFiltersVerificationState(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

