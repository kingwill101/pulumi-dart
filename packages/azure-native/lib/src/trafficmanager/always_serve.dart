/// If Always Serve is enabled, probing for endpoint health will be disabled and endpoints will be included in the traffic routing method.
enum AlwaysServe {
  enabled("Enabled"),
  disabled("Disabled");

  const AlwaysServe(this.value);
  final String value;

  static AlwaysServe fromValue(String value) {
    for (final item in AlwaysServe.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlwaysServe value: $value');
  }
}

