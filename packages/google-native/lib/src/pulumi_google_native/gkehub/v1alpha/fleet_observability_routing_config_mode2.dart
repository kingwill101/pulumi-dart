/// mode configures the logs routing mode.
enum FleetObservabilityRoutingConfigMode2 {
  modeUnspecified("MODE_UNSPECIFIED"),
  copy("COPY"),
  move("MOVE");

  const FleetObservabilityRoutingConfigMode2(this.value);
  final String value;

  static FleetObservabilityRoutingConfigMode2 fromValue(String value) {
    for (final item in FleetObservabilityRoutingConfigMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown FleetObservabilityRoutingConfigMode2 value: $value');
  }
}
