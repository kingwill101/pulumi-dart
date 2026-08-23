/// The frequency of the time windows.
enum TumblingWindowFrequency {
  minute("Minute"),
  hour("Hour"),
  month("Month");

  const TumblingWindowFrequency(this.wireValue);
  final String wireValue;

  static TumblingWindowFrequency fromValue(String value) {
    for (final item in TumblingWindowFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TumblingWindowFrequency value: $value');
  }
}
