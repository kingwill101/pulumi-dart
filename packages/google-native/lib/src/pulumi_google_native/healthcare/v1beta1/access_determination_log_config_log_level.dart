/// Optional. Controls the amount of detail to include as part of the audit logs.
enum AccessDeterminationLogConfigLogLevel {
  logLevelUnspecified("LOG_LEVEL_UNSPECIFIED"),
  disabled("DISABLED"),
  minimum("MINIMUM"),
  verbose("VERBOSE");

  const AccessDeterminationLogConfigLogLevel(this.value);
  final String value;

  static AccessDeterminationLogConfigLogLevel fromValue(String value) {
    for (final item in AccessDeterminationLogConfigLogLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AccessDeterminationLogConfigLogLevel value: $value');
  }
}
