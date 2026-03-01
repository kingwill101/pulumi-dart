/// This determines the format that is expected for incoming events published to the topic.
enum EventInputSchema {
  valueCloudEventSchemaV10("CloudEventSchemaV1_0");

  const EventInputSchema(this.value);
  final String value;

  static EventInputSchema fromValue(String value) {
    for (final item in EventInputSchema.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventInputSchema value: $value');
  }
}

