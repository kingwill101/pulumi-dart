/// This is a required field. This field is used to schedule an inventory formation.
enum Schedule {
  valueDaily("Daily"),
  valueWeekly("Weekly");

  const Schedule(this.value);
  final String value;

  static Schedule fromValue(String value) {
    for (final item in Schedule.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Schedule value: $value');
  }
}

