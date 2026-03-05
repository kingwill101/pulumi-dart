/// The recurrence type : weekly, monthly, etc.
enum AccessReviewRecurrencePatternType {
  valueWeekly("weekly"),
  valueAbsoluteMonthly("absoluteMonthly");

  const AccessReviewRecurrencePatternType(this.wireValue);
  final String wireValue;

  static AccessReviewRecurrencePatternType fromValue(String value) {
    for (final item in AccessReviewRecurrencePatternType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessReviewRecurrencePatternType value: $value');
  }
}

