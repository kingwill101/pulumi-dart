/// Specifies when the recurrence should be applied.
enum RecurrenceType {
  valueDaily("Daily"),
  valueWeekly("Weekly"),
  valueMonthly("Monthly");

  const RecurrenceType(this.value);
  final String value;

  static RecurrenceType fromValue(String value) {
    for (final item in RecurrenceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecurrenceType value: $value');
  }
}

