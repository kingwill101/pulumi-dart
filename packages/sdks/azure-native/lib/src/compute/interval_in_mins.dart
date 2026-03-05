/// Interval value in minutes used to create LogAnalytics call rate logs.
enum IntervalInMins {
  valueThreeMins("ThreeMins"),
  valueFiveMins("FiveMins"),
  valueThirtyMins("ThirtyMins"),
  valueSixtyMins("SixtyMins");

  const IntervalInMins(this.wireValue);
  final String wireValue;

  static IntervalInMins fromValue(String value) {
    for (final item in IntervalInMins.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntervalInMins value: $value');
  }
}

