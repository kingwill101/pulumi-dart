/// Initial subscription state. If no value is specified, subscription is created with Submitted state. Possible states are * active – the subscription is active, * suspended – the subscription is blocked, and the subscriber cannot call any APIs of the product, * submitted – the subscription request has been made by the developer, but has not yet been approved or rejected, * rejected – the subscription request has been denied by an administrator, * cancelled – the subscription has been cancelled by the developer or administrator, * expired – the subscription reached its expiration date and was deactivated.
enum SubscriptionState {
  valueSuspended("suspended"),
  valueActive("active"),
  valueExpired("expired"),
  valueSubmitted("submitted"),
  valueRejected("rejected"),
  valueCancelled("cancelled");

  const SubscriptionState(this.wireValue);
  final String wireValue;

  static SubscriptionState fromValue(String value) {
    for (final item in SubscriptionState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubscriptionState value: $value');
  }
}
