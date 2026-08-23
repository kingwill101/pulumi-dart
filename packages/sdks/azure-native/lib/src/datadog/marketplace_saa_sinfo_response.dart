// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Marketplace SAAS Info of the resource.
class MarketplaceSaaSInfoResponse {
  /// The Azure Subscription ID to which the Marketplace Subscription belongs and gets billed into.
  final pulumi.Input<String>? billedAzureSubscriptionId;
  /// Marketplace Subscription Details: SAAS Name
  final pulumi.Input<String>? marketplaceName;
  /// Marketplace Subscription Details: SaaS Subscription Status
  final pulumi.Input<String>? marketplaceStatus;
  /// Marketplace Subscription Id. This is a GUID-formatted string.
  final pulumi.Input<String>? marketplaceSubscriptionId;
  /// Flag specifying if the Marketplace status is subscribed or not.
  final pulumi.Input<bool>? subscribed;

  /// Creates a new [MarketplaceSaaSInfoResponse].
  /// [billedAzureSubscriptionId] The Azure Subscription ID to which the Marketplace Subscription belongs and gets billed into.
  /// [marketplaceName] Marketplace Subscription Details: SAAS Name
  /// [marketplaceStatus] Marketplace Subscription Details: SaaS Subscription Status
  /// [marketplaceSubscriptionId] Marketplace Subscription Id. This is a GUID-formatted string.
  /// [subscribed] Flag specifying if the Marketplace status is subscribed or not.
  const MarketplaceSaaSInfoResponse({
    this.billedAzureSubscriptionId,
    this.marketplaceName,
    this.marketplaceStatus,
    this.marketplaceSubscriptionId,
    this.subscribed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billedAzureSubscriptionId': ?billedAzureSubscriptionId,
      'marketplaceName': ?marketplaceName,
      'marketplaceStatus': ?marketplaceStatus,
      'marketplaceSubscriptionId': ?marketplaceSubscriptionId,
      'subscribed': ?subscribed,
    };
  }

  factory MarketplaceSaaSInfoResponse.fromMap(Map<String, dynamic> map) {
    return MarketplaceSaaSInfoResponse(
      billedAzureSubscriptionId: (() { final guardedValue = map['billedAzureSubscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketplaceName: (() { final guardedValue = map['marketplaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketplaceStatus: (() { final guardedValue = map['marketplaceStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketplaceSubscriptionId: (() { final guardedValue = map['marketplaceSubscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscribed: (() { final guardedValue = map['subscribed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
