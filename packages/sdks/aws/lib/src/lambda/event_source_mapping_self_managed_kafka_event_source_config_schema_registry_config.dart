// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_source_mapping_self_managed_kafka_event_source_config_schema_registry_config_access_config.dart';
import 'event_source_mapping_self_managed_kafka_event_source_config_schema_registry_config_schema_validation_config.dart';

class EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfig {
  /// Configuration block for authentication Lambda uses to access the schema registry.
  final pulumi.Input<
    List<
      EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig
    >
  >?
  accessConfigs;

  /// Record format that Lambda delivers to the function after schema validation. Valid values: `JSON`, `SOURCE`.
  final pulumi.Input<String>? eventRecordFormat;

  /// URI of the schema registry. For AWS Glue schema registries, use the ARN of the registry. For Confluent schema registries, use the registry URL.
  final pulumi.Input<String>? schemaRegistryUri;

  /// Repeatable block that defines schema validation settings. These specify the message attributes that Lambda should validate and filter using the schema registry.
  final pulumi.Input<
    List<
      EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig
    >
  >?
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
    return <String, dynamic>{
      'accessConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig
            >,
            List<Map<String, dynamic>>
          >(
            accessConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'eventRecordFormat': ?eventRecordFormat,
      'schemaRegistryUri': ?schemaRegistryUri,
      'schemaValidationConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig
            >,
            List<Map<String, dynamic>>
          >(
            schemaValidationConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfig(
      accessConfigs: (() {
        final guardedValue = map['accessConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig
          >(
            guardedValue,
            (value) =>
                EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      eventRecordFormat: (() {
        final guardedValue = map['eventRecordFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schemaRegistryUri: (() {
        final guardedValue = map['schemaRegistryUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schemaValidationConfigs: (() {
        final guardedValue = map['schemaValidationConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig
          >(
            guardedValue,
            (value) =>
                EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
