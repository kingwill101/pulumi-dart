// ignore_for_file: unused_element, unnecessary_cast


class ListingSubscriptionCommercialInfoCloudMarketplace {
  /// (Output)
  /// Resource name of the Marketplace Order.
  final String? order;

  /// Creates a new [ListingSubscriptionCommercialInfoCloudMarketplace].
  /// [order] (Output)
  ListingSubscriptionCommercialInfoCloudMarketplace({
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'order': ?order,
    };
  }

  factory ListingSubscriptionCommercialInfoCloudMarketplace.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionCommercialInfoCloudMarketplace(
      order: map['order'] == null ? null : map['order'] as String,
    );
  }
}

