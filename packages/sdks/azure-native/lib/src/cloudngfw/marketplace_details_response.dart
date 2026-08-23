// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MarketplaceDetails of PAN Firewall resource
class MarketplaceDetailsResponse {
  /// Marketplace Subscription Id
  final pulumi.Input<String> marketplaceSubscriptionId;
  /// Marketplace Subscription Status
  final pulumi.Input<String>? marketplaceSubscriptionStatus;
  /// Offer Id
  final pulumi.Input<String> offerId;
  /// Publisher Id
  final pulumi.Input<String> publisherId;

  /// Creates a new [MarketplaceDetailsResponse].
  /// [marketplaceSubscriptionId] Marketplace Subscription Id
  /// [marketplaceSubscriptionStatus] Marketplace Subscription Status
  /// [offerId] Offer Id
  /// [publisherId] Publisher Id
  const MarketplaceDetailsResponse({
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
      marketplaceSubscriptionId: pulumi.Input.fromValue(map['marketplaceSubscriptionId'] as String),
      marketplaceSubscriptionStatus: (() { final guardedValue = map['marketplaceSubscriptionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offerId: pulumi.Input.fromValue(map['offerId'] as String),
      publisherId: pulumi.Input.fromValue(map['publisherId'] as String),
    );
  }
}
