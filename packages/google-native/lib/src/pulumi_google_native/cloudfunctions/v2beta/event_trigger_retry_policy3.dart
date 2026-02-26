/// Optional. If unset, then defaults to ignoring failures (i.e. not retrying them).
enum EventTriggerRetryPolicy3 {
  retryPolicyUnspecified("RETRY_POLICY_UNSPECIFIED"),
  retryPolicyDoNotRetry("RETRY_POLICY_DO_NOT_RETRY"),
  retryPolicyRetry("RETRY_POLICY_RETRY");

  const EventTriggerRetryPolicy3(this.value);
  final String value;

  static EventTriggerRetryPolicy3 fromValue(String value) {
    for (final item in EventTriggerRetryPolicy3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventTriggerRetryPolicy3 value: $value');
  }
}
