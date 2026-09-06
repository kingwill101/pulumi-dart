import 'package:pulumi/pulumi.dart' as pulumi;

/// The event delivery schema for the event subscription.
enum DeliverySchema implements pulumi.PulumiEnum<String> {
  valueCloudEventSchemaV10("CloudEventSchemaV1_0");

  const DeliverySchema(this.wireValue);
  @override
  final String wireValue;

  static DeliverySchema fromValue(String value) {
    for (final item in DeliverySchema.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeliverySchema value: $value');
  }
}
