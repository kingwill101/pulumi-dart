/// mode configures the logs routing mode.
enum FleetObservabilityRoutingConfigMode3 {
  modeUnspecified("MODE_UNSPECIFIED"),
  copy("COPY"),
  move("MOVE");

  const FleetObservabilityRoutingConfigMode3(this.value);
  final String value;

  static FleetObservabilityRoutingConfigMode3 fromValue(String value) {
    for (final item in FleetObservabilityRoutingConfigMode3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown FleetObservabilityRoutingConfigMode3 value: $value');
  }
}
