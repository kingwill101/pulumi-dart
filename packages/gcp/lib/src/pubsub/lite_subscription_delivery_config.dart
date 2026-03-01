// ignore_for_file: unused_element, unnecessary_cast


class LiteSubscriptionDeliveryConfig {
  /// When this subscription should send messages to subscribers relative to messages persistence in storage.
  /// Possible values are: `DELIVER_IMMEDIATELY`, `DELIVER_AFTER_STORED`, `DELIVERY_REQUIREMENT_UNSPECIFIED`.
  final String deliveryRequirement;

  /// Creates a new [LiteSubscriptionDeliveryConfig].
  /// [deliveryRequirement] When this subscription should send messages to subscribers relative to messages persistence in storage.
  LiteSubscriptionDeliveryConfig({
    required this.deliveryRequirement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryRequirement': deliveryRequirement,
    };
  }

  factory LiteSubscriptionDeliveryConfig.fromMap(Map<String, dynamic> map) {
    return LiteSubscriptionDeliveryConfig(
      deliveryRequirement: map['deliveryRequirement'] as String,
    );
  }
}

