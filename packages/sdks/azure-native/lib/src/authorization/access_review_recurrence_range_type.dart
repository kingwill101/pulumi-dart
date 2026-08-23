/// The recurrence range type. The possible values are: endDate, noEnd, numbered.
enum AccessReviewRecurrenceRangeType {
  endDate("endDate"),
  noEnd("noEnd"),
  numbered("numbered");

  const AccessReviewRecurrenceRangeType(this.wireValue);
  final String wireValue;

  static AccessReviewRecurrenceRangeType fromValue(String value) {
    for (final item in AccessReviewRecurrenceRangeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessReviewRecurrenceRangeType value: $value');
  }
}
