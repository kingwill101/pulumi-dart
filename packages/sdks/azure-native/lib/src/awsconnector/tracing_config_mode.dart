/// The tracing mode.
enum TracingConfigMode {
  active("Active"),
  passThrough("PassThrough");

  const TracingConfigMode(this.value);
  final String value;

  static TracingConfigMode fromValue(String value) {
    for (final item in TracingConfigMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TracingConfigMode value: $value');
  }
}

