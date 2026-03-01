// ignore_for_file: unused_element, unnecessary_cast


/// MarketplaceDetails of PAN Firewall resource
class MarketplaceDetailsResponse {
  /// Marketplace Subscription Id
  final String marketplaceSubscriptionId;
  /// Marketplace Subscription Status
  final String? marketplaceSubscriptionStatus;
  /// Offer Id
  final String offerId;
  /// Publisher Id
  final String publisherId;

  /// Creates a new [MarketplaceDetailsResponse].
  /// [marketplaceSubscriptionId] Marketplace Subscription Id
  /// [marketplaceSubscriptionStatus] Marketplace Subscription Status
  /// [offerId] Offer Id
  /// [publisherId] Publisher Id
  MarketplaceDetailsResponse({
    required this.marketplaceSubscriptionId,
    this.marketplaceSubscriptionStatus,
    required this.offerId,
    required this.publisherId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'marketplaceSubscriptionId': marketplaceSubscriptionId,
      'marketplaceSubscriptionStatus': ?marketplaceSubscriptionStatus,
      'offerId': offerId,
      'publisherId': publisherId,
    };
  }

  factory MarketplaceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return MarketplaceDetailsResponse(
      marketplaceSubscriptionId: map['marketplaceSubscriptionId'] as String,
      marketplaceSubscriptionStatus: map['marketplaceSubscriptionStatus'] == null ? null : map['marketplaceSubscriptionStatus'] as String,
      offerId: map['offerId'] as String,
      publisherId: map['publisherId'] as String,
    );
  }
}

