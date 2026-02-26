/// The call logging level associated to this execution.
enum ExecutionCallLogLevel2 {
  callLogLevelUnspecified("CALL_LOG_LEVEL_UNSPECIFIED"),
  logAllCalls("LOG_ALL_CALLS"),
  logErrorsOnly("LOG_ERRORS_ONLY");

  const ExecutionCallLogLevel2(this.value);
  final String value;

  static ExecutionCallLogLevel2 fromValue(String value) {
    for (final item in ExecutionCallLogLevel2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExecutionCallLogLevel2 value: $value');
  }
}
