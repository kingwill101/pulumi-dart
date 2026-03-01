// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersNoteUpdatedBy {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersNoteUpdatedBy].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersNoteUpdatedBy({required this.comparison, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersNoteUpdatedBy.fromMap(Map<String, dynamic> map) {
    return InsightFiltersNoteUpdatedBy(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
