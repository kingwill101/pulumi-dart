// ignore_for_file: unused_element, unnecessary_cast

class EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig {
  /// Message attribute to validate. Valid values: `KEY`, `VALUE`.
  final String? attribute;

  EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig({
    this.attribute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributeValue = attribute;
    if (attributeValue != null) {
      map['attribute'] = attributeValue;
    }
    return map;
  }

  factory EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig.fromMap(
      Map<String, dynamic> map) {
    return EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig(
      attribute: map['attribute'] == null ? null : map['attribute'] as String,
    );
  }
}
