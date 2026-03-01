/// Optional. If unset, then defaults to ignoring failures (i.e. not retrying them).
enum EventTriggerRetryPolicy {
  retryPolicyUnspecified("RETRY_POLICY_UNSPECIFIED"),
  retryPolicyDoNotRetry("RETRY_POLICY_DO_NOT_RETRY"),
  retryPolicyRetry("RETRY_POLICY_RETRY");

  const EventTriggerRetryPolicy(this.value);
  final String value;

  static EventTriggerRetryPolicy fromValue(String value) {
    for (final item in EventTriggerRetryPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventTriggerRetryPolicy value: $value');
  }
}
