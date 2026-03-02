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
  MarketplaceSaaSInfoResponse({
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
      billedAzureSubscriptionId: map['billedAzureSubscriptionId'] == null ? null : (map['billedAzureSubscriptionId']! as String).input(),
      marketplaceName: map['marketplaceName'] == null ? null : (map['marketplaceName']! as String).input(),
      marketplaceStatus: map['marketplaceStatus'] == null ? null : (map['marketplaceStatus']! as String).input(),
      marketplaceSubscriptionId: map['marketplaceSubscriptionId'] == null ? null : (map['marketplaceSubscriptionId']! as String).input(),
      subscribed: map['subscribed'] == null ? null : (map['subscribed']! as bool).input(),
    );
  }
}

