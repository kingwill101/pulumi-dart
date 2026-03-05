/// Flag indicating whether the global file lock is enabled for the cache.
enum GlobalFileLockingState {
  disabled("Disabled"),
  enabled("Enabled");

  const GlobalFileLockingState(this.wireValue);
  final String wireValue;

  static GlobalFileLockingState fromValue(String value) {
    for (final item in GlobalFileLockingState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalFileLockingState value: $value');
  }
}

