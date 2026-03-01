// ignore_for_file: unused_element, unnecessary_cast

import 'marketplace_plan_response.dart';

class MarketplaceSubscriptionResponse {
  /// Marketplace Plan associated with the Marketplace Subscription.
  final MarketplacePlanResponse marketplacePlan;
  /// Current status of the Marketplace Subscription.
  final String marketplaceSubscriptionStatus;
  /// [Required] Target Marketplace Model ID to create a Marketplace Subscription for.
  final String modelId;
  /// Provisioning State of the Marketplace Subscription.
  final String provisioningState;

  /// Creates a new [MarketplaceSubscriptionResponse].
  /// [marketplacePlan] Marketplace Plan associated with the Marketplace Subscription.
  /// [marketplaceSubscriptionStatus] Current status of the Marketplace Subscription.
  /// [modelId] [Required] Target Marketplace Model ID to create a Marketplace Subscription for.
  /// [provisioningState] Provisioning State of the Marketplace Subscription.
  MarketplaceSubscriptionResponse({
    required this.marketplacePlan,
    required this.marketplaceSubscriptionStatus,
    required this.modelId,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'marketplacePlan': marketplacePlan.toMap(),
      'marketplaceSubscriptionStatus': marketplaceSubscriptionStatus,
      'modelId': modelId,
      'provisioningState': provisioningState,
    };
  }

  factory MarketplaceSubscriptionResponse.fromMap(Map<String, dynamic> map) {
    return MarketplaceSubscriptionResponse(
      marketplacePlan: MarketplacePlanResponse.fromMap((map['marketplacePlan'] as Map).cast<String, dynamic>()),
      marketplaceSubscriptionStatus: map['marketplaceSubscriptionStatus'] as String,
      modelId: map['modelId'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

