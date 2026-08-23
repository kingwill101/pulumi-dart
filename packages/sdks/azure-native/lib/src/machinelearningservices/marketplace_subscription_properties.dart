// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MarketplaceSubscriptionProperties {
  /// [Required] Target Marketplace Model ID to create a Marketplace Subscription for.
  final pulumi.Input<String> modelId;

  /// Creates a new [MarketplaceSubscriptionProperties].
  /// [modelId] [Required] Target Marketplace Model ID to create a Marketplace Subscription for.
  const MarketplaceSubscriptionProperties({
    required this.modelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': modelId,
    };
  }

  factory MarketplaceSubscriptionProperties.fromMap(Map<String, dynamic> map) {
    return MarketplaceSubscriptionProperties(
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
    );
  }
}
