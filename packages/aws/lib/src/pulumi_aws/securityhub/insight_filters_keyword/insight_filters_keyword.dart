// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersKeyword {
  /// A value for the keyword.
  final String value;

  InsightFiltersKeyword({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory InsightFiltersKeyword.fromMap(Map<String, dynamic> map) {
    return InsightFiltersKeyword(
      value: map['value'] as String,
    );
  }
}
