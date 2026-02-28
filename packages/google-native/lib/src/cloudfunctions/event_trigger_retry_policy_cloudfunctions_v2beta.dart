/// Optional. If unset, then defaults to ignoring failures (i.e. not retrying them).
enum EventTriggerRetryPolicyCloudfunctionsV2beta {
  retryPolicyUnspecified("RETRY_POLICY_UNSPECIFIED"),
  retryPolicyDoNotRetry("RETRY_POLICY_DO_NOT_RETRY"),
  retryPolicyRetry("RETRY_POLICY_RETRY");

  const EventTriggerRetryPolicyCloudfunctionsV2beta(this.value);
  final String value;

  static EventTriggerRetryPolicyCloudfunctionsV2beta fromValue(String value) {
    for (final item in EventTriggerRetryPolicyCloudfunctionsV2beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EventTriggerRetryPolicyCloudfunctionsV2beta value: $value');
  }
}
