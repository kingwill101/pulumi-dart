/// Synchronization mode
enum SynchronizationMode {
  valueIncremental("Incremental"),
  valueFullSync("FullSync");

  const SynchronizationMode(this.wireValue);
  final String wireValue;

  static SynchronizationMode fromValue(String value) {
    for (final item in SynchronizationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SynchronizationMode value: $value');
  }
}
