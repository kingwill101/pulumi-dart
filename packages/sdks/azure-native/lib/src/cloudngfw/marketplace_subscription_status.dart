/// Marketplace Subscription Status
enum MarketplaceSubscriptionStatus {
  valuePendingFulfillmentStart("PendingFulfillmentStart"),
  valueSubscribed("Subscribed"),
  valueSuspended("Suspended"),
  valueUnsubscribed("Unsubscribed"),
  valueNotStarted("NotStarted"),
  valueFulfillmentRequested("FulfillmentRequested");

  const MarketplaceSubscriptionStatus(this.wireValue);
  final String wireValue;

  static MarketplaceSubscriptionStatus fromValue(String value) {
    for (final item in MarketplaceSubscriptionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MarketplaceSubscriptionStatus value: $value');
  }
}
