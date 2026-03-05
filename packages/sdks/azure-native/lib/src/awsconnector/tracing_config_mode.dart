/// The tracing mode.
enum TracingConfigMode {
  active("Active"),
  passThrough("PassThrough");

  const TracingConfigMode(this.wireValue);
  final String wireValue;

  static TracingConfigMode fromValue(String value) {
    for (final item in TracingConfigMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TracingConfigMode value: $value');
  }
}

