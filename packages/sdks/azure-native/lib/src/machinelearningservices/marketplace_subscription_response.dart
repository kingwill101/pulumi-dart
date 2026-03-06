// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'marketplace_plan_response.dart';

class MarketplaceSubscriptionResponse {
  /// Marketplace Plan associated with the Marketplace Subscription.
  final pulumi.Input<MarketplacePlanResponse> marketplacePlan;
  /// Current status of the Marketplace Subscription.
  final pulumi.Input<String> marketplaceSubscriptionStatus;
  /// [Required] Target Marketplace Model ID to create a Marketplace Subscription for.
  final pulumi.Input<String> modelId;
  /// Provisioning State of the Marketplace Subscription.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [MarketplaceSubscriptionResponse].
  /// [marketplacePlan] Marketplace Plan associated with the Marketplace Subscription.
  /// [marketplaceSubscriptionStatus] Current status of the Marketplace Subscription.
  /// [modelId] [Required] Target Marketplace Model ID to create a Marketplace Subscription for.
  /// [provisioningState] Provisioning State of the Marketplace Subscription.
  const MarketplaceSubscriptionResponse({
    required this.marketplacePlan,
    required this.marketplaceSubscriptionStatus,
    required this.modelId,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'marketplacePlan': pulumi.Input.mapInputValue<MarketplacePlanResponse, Map<String, dynamic>>(marketplacePlan, (value) => value.toMap()),
      'marketplaceSubscriptionStatus': marketplaceSubscriptionStatus,
      'modelId': modelId,
      'provisioningState': provisioningState,
    };
  }

  factory MarketplaceSubscriptionResponse.fromMap(Map<String, dynamic> map) {
    return MarketplaceSubscriptionResponse(
      marketplacePlan: pulumi.Input.fromValue(MarketplacePlanResponse.fromMap((map['marketplacePlan']! as Map).cast<String, dynamic>())),
      marketplaceSubscriptionStatus: pulumi.Input.fromValue(map['marketplaceSubscriptionStatus'] as String),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

