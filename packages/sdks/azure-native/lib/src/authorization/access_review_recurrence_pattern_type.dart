/// The recurrence type : weekly, monthly, etc.
enum AccessReviewRecurrencePatternType {
  valueWeekly("weekly"),
  valueAbsoluteMonthly("absoluteMonthly");

  const AccessReviewRecurrencePatternType(this.value);
  final String value;

  static AccessReviewRecurrencePatternType fromValue(String value) {
    for (final item in AccessReviewRecurrencePatternType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessReviewRecurrencePatternType value: $value');
  }
}

