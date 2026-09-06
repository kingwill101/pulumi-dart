import 'package:pulumi/pulumi.dart' as pulumi;

/// The event delivery schema for the event subscription.
enum EventDeliverySchema implements pulumi.PulumiEnum<String> {
  valueEventGridSchema("EventGridSchema"),
  valueCustomInputSchema("CustomInputSchema"),
  valueCloudEventSchemaV10("CloudEventSchemaV1_0");

  const EventDeliverySchema(this.wireValue);
  @override
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
