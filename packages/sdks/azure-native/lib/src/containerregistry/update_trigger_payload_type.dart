/// Type of Payload body for Base image update triggers.
enum UpdateTriggerPayloadType {
  valueDefault("Default"),
  valueToken("Token");

  const UpdateTriggerPayloadType(this.value);
  final String value;

  static UpdateTriggerPayloadType fromValue(String value) {
    for (final item in UpdateTriggerPayloadType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpdateTriggerPayloadType value: $value');
  }
}

