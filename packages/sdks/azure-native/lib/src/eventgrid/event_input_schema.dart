import 'package:pulumi/pulumi.dart' as pulumi;

/// This determines the format that is expected for incoming events published to the topic.
enum EventInputSchema implements pulumi.PulumiEnum<String> {
  valueCloudEventSchemaV10("CloudEventSchemaV1_0");

  const EventInputSchema(this.wireValue);
  @override
  final String wireValue;

  static EventInputSchema fromValue(String value) {
    for (final item in EventInputSchema.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventInputSchema value: $value');
  }
}
