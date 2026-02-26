// ignore_for_file: unused_element, unnecessary_cast

class ListingSubscriptionCommercialInfoCloudMarketplace {
  /// (Output)
  /// Resource name of the Marketplace Order.
  final String? order;

  ListingSubscriptionCommercialInfoCloudMarketplace({
    this.order,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final orderValue = order;
    if (orderValue != null) {
      map['order'] = orderValue;
    }
    return map;
  }

  factory ListingSubscriptionCommercialInfoCloudMarketplace.fromMap(
      Map<String, dynamic> map) {
    return ListingSubscriptionCommercialInfoCloudMarketplace(
      order: map['order'] == null ? null : map['order'] as String,
    );
  }
}
