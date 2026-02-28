/// Optional. Describes the level of platform logging to apply to calls and call responses during executions of this workflow. If both the workflow and the execution specify a logging level, the execution level takes precedence.
enum WorkflowCallLogLevel {
  callLogLevelUnspecified("CALL_LOG_LEVEL_UNSPECIFIED"),
  logAllCalls("LOG_ALL_CALLS"),
  logErrorsOnly("LOG_ERRORS_ONLY"),
  logNone("LOG_NONE");

  const WorkflowCallLogLevel(this.value);
  final String value;

  static WorkflowCallLogLevel fromValue(String value) {
    for (final item in WorkflowCallLogLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkflowCallLogLevel value: $value');
  }
}

