/// An indication of how the event should be mapped to OpenTelemetry.
enum EventObservabilityMode {
  none("None"),
  log("Log");

  const EventObservabilityMode(this.wireValue);
  final String wireValue;

  static EventObservabilityMode fromValue(String value) {
    for (final item in EventObservabilityMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventObservabilityMode value: $value');
  }
}

