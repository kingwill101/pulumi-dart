// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_source_mapping_amazon_managed_kafka_event_source_config_schema_registry_config.dart';

class EventSourceMappingAmazonManagedKafkaEventSourceConfig {
  /// Kafka consumer group ID between 1 and 200 characters for use when creating this event source mapping. If one is not specified, this value will be automatically generated. See [AmazonManagedKafkaEventSourceConfig Syntax](https://docs.aws.amazon.com/lambda/latest/dg/API_AmazonManagedKafkaEventSourceConfig.html).
  final pulumi.Input<String>? consumerGroupId;
  /// Block for a Kafka schema registry setting. See below.
  final pulumi.Input<EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig>? schemaRegistryConfig;

  /// Creates a new [EventSourceMappingAmazonManagedKafkaEventSourceConfig].
  /// [consumerGroupId] Kafka consumer group ID between 1 and 200 characters for use when creating this event source mapping. If one is not specified, this value will be automatically generated. See [AmazonManagedKafkaEventSourceConfig Syntax](https://docs.aws.amazon.com/lambda/latest/dg/API_AmazonManagedKafkaEventSourceConfig.html).
  /// [schemaRegistryConfig] Block for a Kafka schema registry setting. See below.
  const EventSourceMappingAmazonManagedKafkaEventSourceConfig({
    this.consumerGroupId,
    this.schemaRegistryConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroupId': ?consumerGroupId,
      'schemaRegistryConfig': ?pulumi.Input.mapOptionalInputValue<EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig, Map<String, dynamic>>(schemaRegistryConfig, (value) => value.toMap()),
    };
  }

  factory EventSourceMappingAmazonManagedKafkaEventSourceConfig.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingAmazonManagedKafkaEventSourceConfig(
      consumerGroupId: (() { final guardedValue = map['consumerGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaRegistryConfig: (() { final guardedValue = map['schemaRegistryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
