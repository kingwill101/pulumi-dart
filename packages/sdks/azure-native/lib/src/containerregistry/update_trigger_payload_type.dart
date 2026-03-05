/// Type of Payload body for Base image update triggers.
enum UpdateTriggerPayloadType {
  valueDefault("Default"),
  valueToken("Token");

  const UpdateTriggerPayloadType(this.wireValue);
  final String wireValue;

  static UpdateTriggerPayloadType fromValue(String value) {
    for (final item in UpdateTriggerPayloadType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpdateTriggerPayloadType value: $value');
  }
}

