/// Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
enum RefreshInterval {
  pT1M("PT1M"),
  pT5M("PT5M"),
  pT10M("PT10M"),
  pT30M("PT30M"),
  pT1H("PT1H"),
  pT2H("PT2H");

  const RefreshInterval(this.wireValue);
  final String wireValue;

  static RefreshInterval fromValue(String value) {
    for (final item in RefreshInterval.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RefreshInterval value: $value');
  }
}
