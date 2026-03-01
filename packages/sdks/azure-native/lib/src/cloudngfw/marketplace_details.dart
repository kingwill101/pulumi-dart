// ignore_for_file: unused_element, unnecessary_cast


/// MarketplaceDetails of PAN Firewall resource
class MarketplaceDetails {
  /// Marketplace Subscription Status
  final String? marketplaceSubscriptionStatus;
  /// Offer Id
  final String offerId;
  /// Publisher Id
  final String publisherId;

  /// Creates a new [MarketplaceDetails].
  /// [marketplaceSubscriptionStatus] Marketplace Subscription Status
  /// [offerId] Offer Id
  /// [publisherId] Publisher Id
  MarketplaceDetails({
    this.marketplaceSubscriptionStatus,
    required this.offerId,
    required this.publisherId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'marketplaceSubscriptionStatus': ?marketplaceSubscriptionStatus,
      'offerId': offerId,
      'publisherId': publisherId,
    };
  }

  factory MarketplaceDetails.fromMap(Map<String, dynamic> map) {
    return MarketplaceDetails(
      marketplaceSubscriptionStatus: map['marketplaceSubscriptionStatus'] == null ? null : map['marketplaceSubscriptionStatus'] as String,
      offerId: map['offerId'] as String,
      publisherId: map['publisherId'] as String,
    );
  }
}

