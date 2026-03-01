/// The api key setting of the Grafana instance.
enum ApiKey {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ApiKey(this.value);
  final String value;

  static ApiKey fromValue(String value) {
    for (final item in ApiKey.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiKey value: $value');
  }
}

