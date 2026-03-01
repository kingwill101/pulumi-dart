/// Flag indicating whether the global file lock is enabled for the cache.
enum GlobalFileLockingState {
  disabled("Disabled"),
  enabled("Enabled");

  const GlobalFileLockingState(this.value);
  final String value;

  static GlobalFileLockingState fromValue(String value) {
    for (final item in GlobalFileLockingState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalFileLockingState value: $value');
  }
}

