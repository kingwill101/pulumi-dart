// ignore_for_file: unused_element, unnecessary_cast


/// Marketplace Subscription
class MarketplaceSaaSInfoResponseMarketplaceSubscription {
  /// Marketplace Subscription Id. This is a GUID-formatted string.
  final String? id;

  /// Creates a new [MarketplaceSaaSInfoResponseMarketplaceSubscription].
  /// [id] Marketplace Subscription Id. This is a GUID-formatted string.
  MarketplaceSaaSInfoResponseMarketplaceSubscription({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory MarketplaceSaaSInfoResponseMarketplaceSubscription.fromMap(Map<String, dynamic> map) {
    return MarketplaceSaaSInfoResponseMarketplaceSubscription(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

