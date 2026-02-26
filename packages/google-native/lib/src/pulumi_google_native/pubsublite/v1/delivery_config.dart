// ignore_for_file: unused_element, unnecessary_cast

import 'delivery_config_delivery_requirement.dart';

/// The settings for a subscription's message delivery.
class DeliveryConfig {
  /// The DeliveryRequirement for this subscription.
  final DeliveryConfigDeliveryRequirement? deliveryRequirement;

  DeliveryConfig({
    this.deliveryRequirement,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deliveryRequirementValue = deliveryRequirement;
    if (deliveryRequirementValue != null) {
      map['deliveryRequirement'] = deliveryRequirementValue.value;
    }
    return map;
  }

  factory DeliveryConfig.fromMap(Map<String, dynamic> map) {
    return DeliveryConfig(
      deliveryRequirement: map['deliveryRequirement'] == null
          ? null
          : DeliveryConfigDeliveryRequirement.fromValue(
              map['deliveryRequirement'] as String),
    );
  }
}
