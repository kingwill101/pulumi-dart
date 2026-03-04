/// The event delivery schema for the event subscription.
enum EventDeliverySchema {
  valueEventGridSchema("EventGridSchema"),
  valueCustomInputSchema("CustomInputSchema"),
  valueCloudEventSchemaV10("CloudEventSchemaV1_0");

  const EventDeliverySchema(this.wireValue);
  final String wireValue;

  static EventDeliverySchema fromValue(String value) {
    for (final item in EventDeliverySchema.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventDeliverySchema value: $value');
  }
}
