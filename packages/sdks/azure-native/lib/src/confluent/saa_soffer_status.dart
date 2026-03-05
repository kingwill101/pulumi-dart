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

  const SaaSOfferStatus(this.wireValue);
  final String wireValue;

  static SaaSOfferStatus fromValue(String value) {
    for (final item in SaaSOfferStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SaaSOfferStatus value: $value');
  }
}

