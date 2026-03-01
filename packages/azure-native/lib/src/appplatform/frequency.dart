/// The frequency to run the maintenance job
enum Frequency {
  valueWeekly("Weekly");

  const Frequency(this.value);
  final String value;

  static Frequency fromValue(String value) {
    for (final item in Frequency.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Frequency value: $value');
  }
}

