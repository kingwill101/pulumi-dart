// ignore_for_file: unused_element, unnecessary_cast

/// The settings for a subscription's message delivery.
class DeliveryConfigResponse {
  /// The DeliveryRequirement for this subscription.
  final String deliveryRequirement;

  DeliveryConfigResponse({
    required this.deliveryRequirement,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deliveryRequirement'] = deliveryRequirement;
    return map;
  }

  factory DeliveryConfigResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryConfigResponse(
      deliveryRequirement: map['deliveryRequirement'] as String,
    );
  }
}
