/// An indication of how the event should be mapped to OpenTelemetry.
enum EventObservabilityMode {
  none("None"),
  log("Log");

  const EventObservabilityMode(this.value);
  final String value;

  static EventObservabilityMode fromValue(String value) {
    for (final item in EventObservabilityMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventObservabilityMode value: $value');
  }
}

