// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_source_mapping_self_managed_kafka_event_source_config_schema_registry_config_access_config.dart';
import 'event_source_mapping_self_managed_kafka_event_source_config_schema_registry_config_schema_validation_config.dart';

class EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfig {
  /// Configuration block for authentication Lambda uses to access the schema registry.
  final List<
          EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig>?
      accessConfigs;

  /// Record format that Lambda delivers to the function after schema validation. Valid values: `JSON`, `SOURCE`.
  final String? eventRecordFormat;

  /// URI of the schema registry. For AWS Glue schema registries, use the ARN of the registry. For Confluent schema registries, use the registry URL.
  final String? schemaRegistryUri;

  /// Repeatable block that defines schema validation settings. These specify the message attributes that Lambda should validate and filter using the schema registry.
  final List<
          EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig>?
      schemaValidationConfigs;

  /// Creates a new [EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfig].
  /// [accessConfigs] Configuration block for authentication Lambda uses to access the schema registry.
  /// [eventRecordFormat] Record format that Lambda delivers to the function after schema validation. Valid values: `JSON`, `SOURCE`.
  /// [schemaRegistryUri] URI of the schema registry. For AWS Glue schema registries, use the ARN of the registry. For Confluent schema registries, use the registry URL.
  /// [schemaValidationConfigs] Repeatable block that defines schema validation settings. These specify the message attributes that Lambda should validate and filter using the schema registry.
  EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfig({
    this.accessConfigs,
    this.eventRecordFormat,
    this.schemaRegistryUri,
    this.schemaValidationConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessConfigsValue = accessConfigs;
    if (accessConfigsValue != null) {
      map['accessConfigs'] = pulumi.Input.encodeList<
          EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig,
          Map<String, dynamic>>(accessConfigsValue, (value) => value.toMap());
    }
    final eventRecordFormatValue = eventRecordFormat;
    if (eventRecordFormatValue != null) {
      map['eventRecordFormat'] = eventRecordFormatValue;
    }
    final schemaRegistryUriValue = schemaRegistryUri;
    if (schemaRegistryUriValue != null) {
      map['schemaRegistryUri'] = schemaRegistryUriValue;
    }
    final schemaValidationConfigsValue = schemaValidationConfigs;
    if (schemaValidationConfigsValue != null) {
      map['schemaValidationConfigs'] = pulumi.Input.encodeList<
          EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig,
          Map<String,
              dynamic>>(schemaValidationConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfig.fromMap(
      Map<String, dynamic> map) {
    return EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfig(
      accessConfigs: map['accessConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig>(
              map['accessConfigs'],
              (value) =>
                  EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      eventRecordFormat: map['eventRecordFormat'] == null
          ? null
          : map['eventRecordFormat'] as String,
      schemaRegistryUri: map['schemaRegistryUri'] == null
          ? null
          : map['schemaRegistryUri'] as String,
      schemaValidationConfigs: map['schemaValidationConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig>(
              map['schemaValidationConfigs'],
              (value) =>
                  EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
