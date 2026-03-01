/// Enabled by default. If highAvailability is disabled, the data set is not replicated. This affects the availability SLA, and increases the risk of data loss.
enum HighAvailability {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const HighAvailability(this.value);
  final String value;

  static HighAvailability fromValue(String value) {
    for (final item in HighAvailability.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HighAvailability value: $value');
  }
}

