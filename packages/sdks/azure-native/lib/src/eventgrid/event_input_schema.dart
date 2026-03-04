/// This determines the format that is expected for incoming events published to the topic.
enum EventInputSchema {
  valueCloudEventSchemaV10("CloudEventSchemaV1_0");

  const EventInputSchema(this.wireValue);
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
