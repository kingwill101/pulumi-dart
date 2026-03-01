// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_source_mapping_amazon_managed_kafka_event_source_config_schema_registry_config_access_config.dart';
import 'event_source_mapping_amazon_managed_kafka_event_source_config_schema_registry_config_schema_validation_config.dart';

class EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig {
  /// Configuration block for authentication Lambda uses to access the schema registry.
  final List<
    EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig
  >?
  accessConfigs;

  /// Record format that Lambda delivers to the function after schema validation. Valid values: `JSON`, `SOURCE`.
  final String? eventRecordFormat;

  /// URI of the schema registry. For AWS Glue schema registries, use the ARN of the registry. For Confluent schema registries, use the registry URL.
  final String? schemaRegistryUri;

  /// Repeatable block that defines schema validation settings. These specify the message attributes that Lambda should validate and filter using the schema registry.
  final List<
    EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig
  >?
  schemaValidationConfigs;

  /// Creates a new [EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig].
  /// [accessConfigs] Configuration block for authentication Lambda uses to access the schema registry.
  /// [eventRecordFormat] Record format that Lambda delivers to the function after schema validation. Valid values: `JSON`, `SOURCE`.
  /// [schemaRegistryUri] URI of the schema registry. For AWS Glue schema registries, use the ARN of the registry. For Confluent schema registries, use the registry URL.
  /// [schemaValidationConfigs] Repeatable block that defines schema validation settings. These specify the message attributes that Lambda should validate and filter using the schema registry.
  EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig({
    this.accessConfigs,
    this.eventRecordFormat,
    this.schemaRegistryUri,
    this.schemaValidationConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigs': ?accessConfigs == null
          ? null
          : pulumi.Input.encodeList<
              EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig,
              Map<String, dynamic>
            >(accessConfigs!, (value) => value.toMap()),
      'eventRecordFormat': ?eventRecordFormat,
      'schemaRegistryUri': ?schemaRegistryUri,
      'schemaValidationConfigs': ?schemaValidationConfigs == null
          ? null
          : pulumi.Input.encodeList<
              EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig,
              Map<String, dynamic>
            >(schemaValidationConfigs!, (value) => value.toMap()),
    };
  }

  factory EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig(
      accessConfigs: map['accessConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig
            >(
              map['accessConfigs'],
              (value) =>
                  EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      eventRecordFormat: map['eventRecordFormat'] == null
          ? null
          : map['eventRecordFormat'] as String,
      schemaRegistryUri: map['schemaRegistryUri'] == null
          ? null
          : map['schemaRegistryUri'] as String,
      schemaValidationConfigs: map['schemaValidationConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig
            >(
              map['schemaValidationConfigs'],
              (value) =>
                  EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
