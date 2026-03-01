// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersKeyword {
  /// A value for the keyword.
  final String value;

  /// Creates a new [InsightFiltersKeyword].
  /// [value] A value for the keyword.
  InsightFiltersKeyword({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory InsightFiltersKeyword.fromMap(Map<String, dynamic> map) {
    return InsightFiltersKeyword(
      value: map['value'] as String,
    );
  }
}

