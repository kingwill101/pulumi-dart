// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MarketplaceSubscription {
  /// [Required] Target Marketplace Model ID to create a Marketplace Subscription for.
  final pulumi.Input<String> modelId;

  /// Creates a new [MarketplaceSubscription].
  /// [modelId] [Required] Target Marketplace Model ID to create a Marketplace Subscription for.
  MarketplaceSubscription({required this.modelId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'modelId': modelId};
  }

  factory MarketplaceSubscription.fromMap(Map<String, dynamic> map) {
    return MarketplaceSubscription(
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
    );
  }
}
