/// Flag indicating whether writeback is enabled for the cache.
enum EnableWriteBackState {
  disabled("Disabled"),
  enabled("Enabled");

  const EnableWriteBackState(this.value);
  final String value;

  static EnableWriteBackState fromValue(String value) {
    for (final item in EnableWriteBackState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnableWriteBackState value: $value');
  }
}

