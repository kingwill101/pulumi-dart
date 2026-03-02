// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MarketplaceDetails of PAN Firewall resource
class MarketplaceDetails {
  /// Marketplace Subscription Status
  final pulumi.Input<String>? marketplaceSubscriptionStatus;
  /// Offer Id
  final pulumi.Input<String> offerId;
  /// Publisher Id
  final pulumi.Input<String> publisherId;

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
      marketplaceSubscriptionStatus: map['marketplaceSubscriptionStatus'] == null ? null : (map['marketplaceSubscriptionStatus']! as String).input(),
      offerId: (map['offerId'] as String).input(),
      publisherId: (map['publisherId'] as String).input(),
    );
  }
}

