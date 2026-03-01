/// Cloud event mapping config.
enum CloudEventAttributeType {
  propagate("Propagate"),
  createOrRemap("CreateOrRemap");

  const CloudEventAttributeType(this.value);
  final String value;

  static CloudEventAttributeType fromValue(String value) {
    for (final item in CloudEventAttributeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudEventAttributeType value: $value');
  }
}

