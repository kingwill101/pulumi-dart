// ignore_for_file: unused_element, unnecessary_cast


class EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig {
  /// Message attribute to validate. Valid values: `KEY`, `VALUE`.
  final String? attribute;

  /// Creates a new [EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig].
  /// [attribute] Message attribute to validate. Valid values: `KEY`, `VALUE`.
  EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig({
    this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': ?attribute,
    };
  }

  factory EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig(
      attribute: map['attribute'] == null ? null : map['attribute'] as String,
    );
  }
}

