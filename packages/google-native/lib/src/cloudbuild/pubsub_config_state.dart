/// Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
enum PubsubConfigState {
  stateUnspecified("STATE_UNSPECIFIED"),
  ok("OK"),
  subscriptionDeleted("SUBSCRIPTION_DELETED"),
  topicDeleted("TOPIC_DELETED"),
  subscriptionMisconfigured("SUBSCRIPTION_MISCONFIGURED");

  const PubsubConfigState(this.value);
  final String value;

  static PubsubConfigState fromValue(String value) {
    for (final item in PubsubConfigState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PubsubConfigState value: $value');
  }
}
