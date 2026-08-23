// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_source_mapping_amazon_managed_kafka_event_source_config_schema_registry_config_access_config.dart';
import 'event_source_mapping_amazon_managed_kafka_event_source_config_schema_registry_config_schema_validation_config.dart';

class EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig {
  /// Configuration block for authentication Lambda uses to access the schema registry.
  final pulumi.Input<List<EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig>>? accessConfigs;
  /// Record format that Lambda delivers to the function after schema validation. Valid values: `JSON`, `SOURCE`.
  final pulumi.Input<String>? eventRecordFormat;
  /// URI of the schema registry. For AWS Glue schema registries, use the ARN of the registry. For Confluent schema registries, use the registry URL.
  final pulumi.Input<String>? schemaRegistryUri;
  /// Repeatable block that defines schema validation settings. These specify the message attributes that Lambda should validate and filter using the schema registry.
  final pulumi.Input<List<EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig>>? schemaValidationConfigs;

  /// Creates a new [EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig].
  /// [accessConfigs] Configuration block for authentication Lambda uses to access the schema registry.
  /// [eventRecordFormat] Record format that Lambda delivers to the function after schema validation. Valid values: `JSON`, `SOURCE`.
  /// [schemaRegistryUri] URI of the schema registry. For AWS Glue schema registries, use the ARN of the registry. For Confluent schema registries, use the registry URL.
  /// [schemaValidationConfigs] Repeatable block that defines schema validation settings. These specify the message attributes that Lambda should validate and filter using the schema registry.
  const EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig({
    this.accessConfigs,
    this.eventRecordFormat,
    this.schemaRegistryUri,
    this.schemaValidationConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigs': ?pulumi.Input.mapOptionalInputValue<List<EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig>, List<Map<String, dynamic>>>(accessConfigs, (value) => pulumi.Input.encodeList<EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventRecordFormat': ?eventRecordFormat,
      'schemaRegistryUri': ?schemaRegistryUri,
      'schemaValidationConfigs': ?pulumi.Input.mapOptionalInputValue<List<EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig>, List<Map<String, dynamic>>>(schemaValidationConfigs, (value) => pulumi.Input.encodeList<EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig(
      accessConfigs: (() { final guardedValue = map['accessConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig>(guardedValue, (value) => EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eventRecordFormat: (() { final guardedValue = map['eventRecordFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaRegistryUri: (() { final guardedValue = map['schemaRegistryUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaValidationConfigs: (() { final guardedValue = map['schemaValidationConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig>(guardedValue, (value) => EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
