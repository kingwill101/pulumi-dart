/// The DeliveryRequirement for this subscription.
enum DeliveryConfigDeliveryRequirement {
  deliveryRequirementUnspecified("DELIVERY_REQUIREMENT_UNSPECIFIED"),
  deliverImmediately("DELIVER_IMMEDIATELY"),
  deliverAfterStored("DELIVER_AFTER_STORED");

  const DeliveryConfigDeliveryRequirement(this.value);
  final String value;

  static DeliveryConfigDeliveryRequirement fromValue(String value) {
    for (final item in DeliveryConfigDeliveryRequirement.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown DeliveryConfigDeliveryRequirement value: $value');
  }
}
