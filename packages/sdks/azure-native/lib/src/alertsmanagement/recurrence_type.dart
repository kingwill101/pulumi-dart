/// Specifies when the recurrence should be applied.
enum RecurrenceType {
  daily("Daily"),
  weekly("Weekly"),
  monthly("Monthly");

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
