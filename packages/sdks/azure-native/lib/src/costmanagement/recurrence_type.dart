/// The schedule recurrence.
enum RecurrenceType {
  valueDaily("Daily"),
  valueWeekly("Weekly"),
  valueMonthly("Monthly"),
  valueAnnually("Annually");

  const RecurrenceType(this.wireValue);
  final String wireValue;

  static RecurrenceType fromValue(String value) {
    for (final item in RecurrenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecurrenceType value: $value');
  }
}

