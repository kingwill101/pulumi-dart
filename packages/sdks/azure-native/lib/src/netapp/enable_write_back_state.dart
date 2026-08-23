/// Flag indicating whether writeback is enabled for the cache.
enum EnableWriteBackState {
  disabled("Disabled"),
  enabled("Enabled");

  const EnableWriteBackState(this.wireValue);
  final String wireValue;

  static EnableWriteBackState fromValue(String value) {
    for (final item in EnableWriteBackState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnableWriteBackState value: $value');
  }
}
