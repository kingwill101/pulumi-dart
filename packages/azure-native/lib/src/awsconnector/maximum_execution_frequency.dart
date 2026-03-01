/// Property value
enum MaximumExecutionFrequency {
  oneHour("One_Hour"),
  sixHours("Six_Hours"),
  threeHours("Three_Hours"),
  twelveHours("Twelve_Hours"),
  twentyFourHours("TwentyFour_Hours");

  const MaximumExecutionFrequency(this.value);
  final String value;

  static MaximumExecutionFrequency fromValue(String value) {
    for (final item in MaximumExecutionFrequency.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaximumExecutionFrequency value: $value');
  }
}

