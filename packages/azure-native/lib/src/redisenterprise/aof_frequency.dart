/// Sets the frequency at which data is written to disk. Defaults to '1s', meaning 'every second'. Note that the 'always' setting is deprecated, because of its performance impact.
enum AofFrequency {
  value1s("1s"),
  valueAlways("always");

  const AofFrequency(this.value);
  final String value;

  static AofFrequency fromValue(String value) {
    for (final item in AofFrequency.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AofFrequency value: $value');
  }
}

