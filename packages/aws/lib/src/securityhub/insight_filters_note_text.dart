// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersNoteText {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersNoteText].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersNoteText({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersNoteText.fromMap(Map<String, dynamic> map) {
    return InsightFiltersNoteText(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
