/// Cloud event mapping config.
enum CloudEventAttributeType {
  propagate("Propagate"),
  createOrRemap("CreateOrRemap");

  const CloudEventAttributeType(this.wireValue);
  final String wireValue;

  static CloudEventAttributeType fromValue(String value) {
    for (final item in CloudEventAttributeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudEventAttributeType value: $value');
  }
}
