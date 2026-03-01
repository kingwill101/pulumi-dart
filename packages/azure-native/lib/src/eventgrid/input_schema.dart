/// This determines the format that Event Grid should expect for incoming events published to the topic.
enum InputSchema {
  valueEventGridSchema("EventGridSchema"),
  valueCustomEventSchema("CustomEventSchema"),
  valueCloudEventSchemaV10("CloudEventSchemaV1_0");

  const InputSchema(this.value);
  final String value;

  static InputSchema fromValue(String value) {
    for (final item in InputSchema.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InputSchema value: $value');
  }
}

