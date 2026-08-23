/// Indicates whether to enable incremental data refresh.
enum IncrementalDataRefresh {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const IncrementalDataRefresh(this.wireValue);
  final String wireValue;

  static IncrementalDataRefresh fromValue(String value) {
    for (final item in IncrementalDataRefresh.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncrementalDataRefresh value: $value');
  }
}
