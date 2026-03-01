/// Interval value in minutes used to create LogAnalytics call rate logs.
enum IntervalInMins {
  valueThreeMins("ThreeMins"),
  valueFiveMins("FiveMins"),
  valueThirtyMins("ThirtyMins"),
  valueSixtyMins("SixtyMins");

  const IntervalInMins(this.value);
  final String value;

  static IntervalInMins fromValue(String value) {
    for (final item in IntervalInMins.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntervalInMins value: $value');
  }
}

