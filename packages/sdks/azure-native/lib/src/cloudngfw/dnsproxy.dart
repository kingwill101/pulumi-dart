/// Enable DNS proxy, disabled by default
enum DNSProxy {
  valueDISABLED("DISABLED"),
  valueENABLED("ENABLED");

  const DNSProxy(this.wireValue);
  final String wireValue;

  static DNSProxy fromValue(String value) {
    for (final item in DNSProxy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DNSProxy value: $value');
  }
}

