// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersNoteUpdatedBy {
  final String comparison;
  final String value;

  InsightFiltersNoteUpdatedBy({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersNoteUpdatedBy.fromMap(Map<String, dynamic> map) {
    return InsightFiltersNoteUpdatedBy(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
