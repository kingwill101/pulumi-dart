/// The api key setting of the Grafana instance.
enum ApiKey {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ApiKey(this.wireValue);
  final String wireValue;

  static ApiKey fromValue(String value) {
    for (final item in ApiKey.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiKey value: $value');
  }
}

