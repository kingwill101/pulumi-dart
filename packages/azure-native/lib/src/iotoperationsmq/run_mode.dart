/// The Running Mode of the Broker Deployment.
enum RunMode {
  auto("auto"),
  distributed("distributed");

  const RunMode(this.value);
  final String value;

  static RunMode fromValue(String value) {
    for (final item in RunMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RunMode value: $value');
  }
}

