// ignore_for_file: unused_element, unnecessary_cast

import 'marketplace_saa_sinfo_response_marketplace_subscription.dart';

/// Marketplace SAAS Info of the resource.
class MarketplaceSaaSInfoResponse {
  /// The Azure Subscription ID to which the Marketplace Subscription belongs and gets billed into.
  final String? billedAzureSubscriptionId;
  /// Marketplace Subscription Details: SAAS Name
  final String? marketplaceName;
  /// Marketplace Subscription Details: Resource URI
  final String? marketplaceResourceId;
  /// Marketplace Subscription Details: SaaS Subscription Status
  final String? marketplaceStatus;
  /// Marketplace Subscription
  final MarketplaceSaaSInfoResponseMarketplaceSubscription? marketplaceSubscription;
  /// Flag specifying if the Marketplace status is subscribed or not.
  final bool? subscribed;

  /// Creates a new [MarketplaceSaaSInfoResponse].
  /// [billedAzureSubscriptionId] The Azure Subscription ID to which the Marketplace Subscription belongs and gets billed into.
  /// [marketplaceName] Marketplace Subscription Details: SAAS Name
  /// [marketplaceResourceId] Marketplace Subscription Details: Resource URI
  /// [marketplaceStatus] Marketplace Subscription Details: SaaS Subscription Status
  /// [marketplaceSubscription] Marketplace Subscription
  /// [subscribed] Flag specifying if the Marketplace status is subscribed or not.
  MarketplaceSaaSInfoResponse({
    this.billedAzureSubscriptionId,
    this.marketplaceName,
    this.marketplaceResourceId,
    this.marketplaceStatus,
    this.marketplaceSubscription,
    this.subscribed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billedAzureSubscriptionId': ?billedAzureSubscriptionId,
      'marketplaceName': ?marketplaceName,
      'marketplaceResourceId': ?marketplaceResourceId,
      'marketplaceStatus': ?marketplaceStatus,
      'marketplaceSubscription': ?marketplaceSubscription == null ? null : marketplaceSubscription!.toMap(),
      'subscribed': ?subscribed,
    };
  }

  factory MarketplaceSaaSInfoResponse.fromMap(Map<String, dynamic> map) {
    return MarketplaceSaaSInfoResponse(
      billedAzureSubscriptionId: map['billedAzureSubscriptionId'] == null ? null : map['billedAzureSubscriptionId'] as String,
      marketplaceName: map['marketplaceName'] == null ? null : map['marketplaceName'] as String,
      marketplaceResourceId: map['marketplaceResourceId'] == null ? null : map['marketplaceResourceId'] as String,
      marketplaceStatus: map['marketplaceStatus'] == null ? null : map['marketplaceStatus'] as String,
      marketplaceSubscription: map['marketplaceSubscription'] == null ? null : MarketplaceSaaSInfoResponseMarketplaceSubscription.fromMap((map['marketplaceSubscription'] as Map).cast<String, dynamic>()),
      subscribed: map['subscribed'] == null ? null : map['subscribed'] as bool,
    );
  }
}

