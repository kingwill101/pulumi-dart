/// Flag indicating whether a CIFS change notification is enabled for the cache.
enum CifsChangeNotifyState {
  disabled("Disabled"),
  enabled("Enabled");

  const CifsChangeNotifyState(this.value);
  final String value;

  static CifsChangeNotifyState fromValue(String value) {
    for (final item in CifsChangeNotifyState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CifsChangeNotifyState value: $value');
  }
}

