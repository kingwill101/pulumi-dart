/// Optional. If unset, then defaults to ignoring failures (i.e. not retrying them).
enum EventTriggerRetryPolicy2 {
  retryPolicyUnspecified("RETRY_POLICY_UNSPECIFIED"),
  retryPolicyDoNotRetry("RETRY_POLICY_DO_NOT_RETRY"),
  retryPolicyRetry("RETRY_POLICY_RETRY");

  const EventTriggerRetryPolicy2(this.value);
  final String value;

  static EventTriggerRetryPolicy2 fromValue(String value) {
    for (final item in EventTriggerRetryPolicy2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventTriggerRetryPolicy2 value: $value');
  }
}
