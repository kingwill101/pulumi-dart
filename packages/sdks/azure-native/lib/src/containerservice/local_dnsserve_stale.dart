/// Policy for serving stale data. See [cache plugin](https://coredns.io/plugins/cache) for more information.
enum LocalDNSServeStale {
  valueVerify("Verify"),
  valueImmediate("Immediate"),
  valueDisable("Disable");

  const LocalDNSServeStale(this.value);
  final String value;

  static LocalDNSServeStale fromValue(String value) {
    for (final item in LocalDNSServeStale.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalDNSServeStale value: $value');
  }
}

