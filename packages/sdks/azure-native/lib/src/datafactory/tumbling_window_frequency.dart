/// The frequency of the time windows.
enum TumblingWindowFrequency {
  valueMinute("Minute"),
  valueHour("Hour"),
  valueMonth("Month");

  const TumblingWindowFrequency(this.value);
  final String value;

  static TumblingWindowFrequency fromValue(String value) {
    for (final item in TumblingWindowFrequency.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TumblingWindowFrequency value: $value');
  }
}

