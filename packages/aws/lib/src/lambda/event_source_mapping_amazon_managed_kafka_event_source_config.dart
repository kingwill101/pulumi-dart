// ignore_for_file: unused_element, unnecessary_cast

import 'event_source_mapping_amazon_managed_kafka_event_source_config_schema_registry_config.dart';

class EventSourceMappingAmazonManagedKafkaEventSourceConfig {
  /// Kafka consumer group ID between 1 and 200 characters for use when creating this event source mapping. If one is not specified, this value will be automatically generated. See [AmazonManagedKafkaEventSourceConfig Syntax](https://docs.aws.amazon.com/lambda/latest/dg/API_AmazonManagedKafkaEventSourceConfig.html).
  final String? consumerGroupId;

  /// Block for a Kafka schema registry setting. See below.
  final EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig?
      schemaRegistryConfig;

  /// Creates a new [EventSourceMappingAmazonManagedKafkaEventSourceConfig].
  /// [consumerGroupId] Kafka consumer group ID between 1 and 200 characters for use when creating this event source mapping. If one is not specified, this value will be automatically generated. See [AmazonManagedKafkaEventSourceConfig Syntax](https://docs.aws.amazon.com/lambda/latest/dg/API_AmazonManagedKafkaEventSourceConfig.html).
  /// [schemaRegistryConfig] Block for a Kafka schema registry setting. See below.
  EventSourceMappingAmazonManagedKafkaEventSourceConfig({
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

  factory EventSourceMappingAmazonManagedKafkaEventSourceConfig.fromMap(
      Map<String, dynamic> map) {
    return EventSourceMappingAmazonManagedKafkaEventSourceConfig(
      consumerGroupId: map['consumerGroupId'] == null
          ? null
          : map['consumerGroupId'] as String,
      schemaRegistryConfig: map['schemaRegistryConfig'] == null
          ? null
          : EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig
              .fromMap(
                  (map['schemaRegistryConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
