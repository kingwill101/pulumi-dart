// ignore_for_file: unused_element, unnecessary_cast


class MarketplaceSubscription {
  /// [Required] Target Marketplace Model ID to create a Marketplace Subscription for.
  final String modelId;

  /// Creates a new [MarketplaceSubscription].
  /// [modelId] [Required] Target Marketplace Model ID to create a Marketplace Subscription for.
  MarketplaceSubscription({
    required this.modelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': modelId,
    };
  }

  factory MarketplaceSubscription.fromMap(Map<String, dynamic> map) {
    return MarketplaceSubscription(
      modelId: map['modelId'] as String,
    );
  }
}

