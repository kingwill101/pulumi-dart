/// Property value
enum MaximumExecutionFrequency {
  oneHour("One_Hour"),
  sixHours("Six_Hours"),
  threeHours("Three_Hours"),
  twelveHours("Twelve_Hours"),
  twentyFourHours("TwentyFour_Hours");

  const MaximumExecutionFrequency(this.wireValue);
  final String wireValue;

  static MaximumExecutionFrequency fromValue(String value) {
    for (final item in MaximumExecutionFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaximumExecutionFrequency value: $value');
  }
}

