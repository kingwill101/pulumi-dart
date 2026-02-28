/// **Beta Feature** The default logging verbosity for activity from devices in this registry. The verbosity level can be overridden by Device.log_level.
enum RegistryLogLevel {
  logLevelUnspecified("LOG_LEVEL_UNSPECIFIED"),
  none("NONE"),
  error("ERROR"),
  info("INFO"),
  debug("DEBUG");

  const RegistryLogLevel(this.value);
  final String value;

  static RegistryLogLevel fromValue(String value) {
    for (final item in RegistryLogLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistryLogLevel value: $value');
  }
}

