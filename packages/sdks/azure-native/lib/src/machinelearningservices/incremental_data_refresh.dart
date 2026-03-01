/// Indicates whether to enable incremental data refresh.
enum IncrementalDataRefresh {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const IncrementalDataRefresh(this.value);
  final String value;

  static IncrementalDataRefresh fromValue(String value) {
    for (final item in IncrementalDataRefresh.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncrementalDataRefresh value: $value');
  }
}

