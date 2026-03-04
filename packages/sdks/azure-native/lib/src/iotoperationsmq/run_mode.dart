/// The Running Mode of the Broker Deployment.
enum RunMode {
  auto("auto"),
  distributed("distributed");

  const RunMode(this.wireValue);
  final String wireValue;

  static RunMode fromValue(String value) {
    for (final item in RunMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RunMode value: $value');
  }
}
