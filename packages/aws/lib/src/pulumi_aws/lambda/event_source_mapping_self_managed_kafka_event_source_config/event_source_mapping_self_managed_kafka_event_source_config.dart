// ignore_for_file: unused_element, unnecessary_cast

import '../event_source_mapping_self_managed_kafka_event_source_config_schema_registry_config/event_source_mapping_self_managed_kafka_event_source_config_schema_registry_config.dart';

class EventSourceMappingSelfManagedKafkaEventSourceConfig {
  /// Kafka consumer group ID between 1 and 200 characters for use when creating this event source mapping. If one is not specified, this value will be automatically generated. See [SelfManagedKafkaEventSourceConfig Syntax](https://docs.aws.amazon.com/lambda/latest/dg/API_SelfManagedKafkaEventSourceConfig.html).
  final String? consumerGroupId;

  /// Block for a Kafka schema registry setting. See below.
  final EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfig?
      schemaRegistryConfig;

  EventSourceMappingSelfManagedKafkaEventSourceConfig({
    this.consumerGroupId,
    this.schemaRegistryConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consumerGroupIdValue = consumerGroupId;
    if (consumerGroupIdValue != null) {
      map['consumerGroupId'] = consumerGroupIdValue;
    }
    final schemaRegistryConfigValue = schemaRegistryConfig;
    if (schemaRegistryConfigValue != null) {
      map['schemaRegistryConfig'] = schemaRegistryConfigValue.toMap();
    }
    return map;
  }

  factory EventSourceMappingSelfManagedKafkaEventSourceConfig.fromMap(
      Map<String, dynamic> map) {
    return EventSourceMappingSelfManagedKafkaEventSourceConfig(
      consumerGroupId: map['consumerGroupId'] == null
          ? null
          : map['consumerGroupId'] as String,
      schemaRegistryConfig: map['schemaRegistryConfig'] == null
          ? null
          : EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfig
              .fromMap(
                  (map['schemaRegistryConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
