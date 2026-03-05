/// The type of the auto trigger for base image dependency updates.
enum BaseImageTriggerType {
  valueAll("All"),
  valueRuntime("Runtime");

  const BaseImageTriggerType(this.wireValue);
  final String wireValue;

  static BaseImageTriggerType fromValue(String value) {
    for (final item in BaseImageTriggerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BaseImageTriggerType value: $value');
  }
}

