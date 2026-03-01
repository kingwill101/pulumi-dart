/// SaaS Offer Status
enum SaaSOfferStatus {
  started("Started"),
  pendingFulfillmentStart("PendingFulfillmentStart"),
  inProgress("InProgress"),
  subscribed("Subscribed"),
  suspended("Suspended"),
  reinstated("Reinstated"),
  succeeded("Succeeded"),
  failed("Failed"),
  unsubscribed("Unsubscribed"),
  updating("Updating");

  const SaaSOfferStatus(this.value);
  final String value;

  static SaaSOfferStatus fromValue(String value) {
    for (final item in SaaSOfferStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SaaSOfferStatus value: $value');
  }
}

