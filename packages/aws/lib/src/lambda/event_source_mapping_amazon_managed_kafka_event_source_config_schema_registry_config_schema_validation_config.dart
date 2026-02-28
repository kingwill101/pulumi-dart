// ignore_for_file: unused_element, unnecessary_cast

class EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig {
  /// Message attribute to validate. Valid values: `KEY`, `VALUE`.
  final String? attribute;

  /// Creates a new [EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig].
  /// [attribute] Message attribute to validate. Valid values: `KEY`, `VALUE`.
  EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig({
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

  factory EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig.fromMap(
      Map<String, dynamic> map) {
    return EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig(
      attribute: map['attribute'] == null ? null : map['attribute'] as String,
    );
  }
}
