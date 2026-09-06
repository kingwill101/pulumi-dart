// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'marketplace_saa_sinfo_response_marketplace_subscription.dart';

/// Marketplace SAAS Info of the resource.
class MarketplaceSaaSInfoResponse {
  /// The Azure Subscription ID to which the Marketplace Subscription belongs and gets billed into.
  final pulumi.Input<String?>? billedAzureSubscriptionId;
  /// Marketplace Subscription Details: SAAS Name
  final pulumi.Input<String?>? marketplaceName;
  /// Marketplace Subscription Details: Resource URI
  final pulumi.Input<String?>? marketplaceResourceId;
  /// Marketplace Subscription Details: SaaS Subscription Status
  final pulumi.Input<String?>? marketplaceStatus;
  /// Marketplace Subscription
  final pulumi.Input<MarketplaceSaaSInfoResponseMarketplaceSubscription?>? marketplaceSubscription;
  /// Flag specifying if the Marketplace status is subscribed or not.
  final pulumi.Input<bool?>? subscribed;

  /// Creates a new [MarketplaceSaaSInfoResponse].
  /// [billedAzureSubscriptionId] The Azure Subscription ID to which the Marketplace Subscription belongs and gets billed into.
  /// [marketplaceName] Marketplace Subscription Details: SAAS Name
  /// [marketplaceResourceId] Marketplace Subscription Details: Resource URI
  /// [marketplaceStatus] Marketplace Subscription Details: SaaS Subscription Status
  /// [marketplaceSubscription] Marketplace Subscription
  /// [subscribed] Flag specifying if the Marketplace status is subscribed or not.
  const MarketplaceSaaSInfoResponse({
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
      'marketplaceSubscription': ?pulumi.Input.mapOptionalInputValue<MarketplaceSaaSInfoResponseMarketplaceSubscription, Map<String, dynamic>>(marketplaceSubscription, (value) => value.toMap()),
      'subscribed': ?subscribed,
    };
  }

  factory MarketplaceSaaSInfoResponse.fromMap(Map<String, dynamic> map) {
    return MarketplaceSaaSInfoResponse(
      billedAzureSubscriptionId: (() { final guardedValue = map['billedAzureSubscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketplaceName: (() { final guardedValue = map['marketplaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketplaceResourceId: (() { final guardedValue = map['marketplaceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketplaceStatus: (() { final guardedValue = map['marketplaceStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketplaceSubscription: (() { final guardedValue = map['marketplaceSubscription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MarketplaceSaaSInfoResponseMarketplaceSubscription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subscribed: (() { final guardedValue = map['subscribed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
