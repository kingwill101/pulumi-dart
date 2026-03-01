/// Synchronization mode
enum SynchronizationMode {
  valueIncremental("Incremental"),
  valueFullSync("FullSync");

  const SynchronizationMode(this.value);
  final String value;

  static SynchronizationMode fromValue(String value) {
    for (final item in SynchronizationMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SynchronizationMode value: $value');
  }
}

