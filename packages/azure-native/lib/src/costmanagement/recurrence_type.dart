/// The schedule recurrence.
enum RecurrenceType {
  valueDaily("Daily"),
  valueWeekly("Weekly"),
  valueMonthly("Monthly"),
  valueAnnually("Annually");

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

