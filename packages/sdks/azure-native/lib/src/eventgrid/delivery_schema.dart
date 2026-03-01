/// The event delivery schema for the event subscription.
enum DeliverySchema {
  valueCloudEventSchemaV10("CloudEventSchemaV1_0");

  const DeliverySchema(this.value);
  final String value;

  static DeliverySchema fromValue(String value) {
    for (final item in DeliverySchema.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeliverySchema value: $value');
  }
}

