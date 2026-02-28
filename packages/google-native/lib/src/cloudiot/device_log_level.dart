/// **Beta Feature** The logging verbosity for device activity. If unspecified, DeviceRegistry.log_level will be used.
enum DeviceLogLevel {
  logLevelUnspecified("LOG_LEVEL_UNSPECIFIED"),
  none("NONE"),
  error("ERROR"),
  info("INFO"),
  debug("DEBUG");

  const DeviceLogLevel(this.value);
  final String value;

  static DeviceLogLevel fromValue(String value) {
    for (final item in DeviceLogLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeviceLogLevel value: $value');
  }
}
