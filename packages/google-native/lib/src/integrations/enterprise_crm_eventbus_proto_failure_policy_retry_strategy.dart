/// Defines what happens to the task upon failure.
enum EnterpriseCrmEventbusProtoFailurePolicyRetryStrategy {
  unspecified("UNSPECIFIED"),
  ignore("IGNORE"),
  none("NONE"),
  fatal("FATAL"),
  fixedInterval("FIXED_INTERVAL"),
  linearBackoff("LINEAR_BACKOFF"),
  exponentialBackoff("EXPONENTIAL_BACKOFF"),
  restartWorkflowWithBackoff("RESTART_WORKFLOW_WITH_BACKOFF");

  const EnterpriseCrmEventbusProtoFailurePolicyRetryStrategy(this.value);
  final String value;

  static EnterpriseCrmEventbusProtoFailurePolicyRetryStrategy fromValue(String value) {
    for (final item in EnterpriseCrmEventbusProtoFailurePolicyRetryStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmEventbusProtoFailurePolicyRetryStrategy value: $value');
  }
}

