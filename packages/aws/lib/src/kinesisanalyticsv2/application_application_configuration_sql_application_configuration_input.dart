// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_sql_application_configuration_input_input_parallelism.dart';
import 'application_application_configuration_sql_application_configuration_input_input_processing_configuration.dart';
import 'application_application_configuration_sql_application_configuration_input_input_schema.dart';
import 'application_application_configuration_sql_application_configuration_input_input_starting_position_configuration.dart';
import 'application_application_configuration_sql_application_configuration_input_kinesis_firehose_input.dart';
import 'application_application_configuration_sql_application_configuration_input_kinesis_streams_input.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationInput {
  final List<String>? inAppStreamNames;
  final String? inputId;

  /// Describes the number of in-application streams to create.
  final ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism?
      inputParallelism;

  /// The input processing configuration for the input.
  /// An input processor transforms records as they are received from the stream, before the application's SQL code executes.
  final ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration?
      inputProcessingConfiguration;

  /// Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created.
  final ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchema
      inputSchema;

  /// The point at which the application starts processing records from the streaming source.
  final List<
          ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration>?
      inputStartingPositionConfigurations;

  /// If the streaming source is a Kinesis Data Firehose delivery stream, identifies the delivery stream's ARN.
  final ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput?
      kinesisFirehoseInput;

  /// If the streaming source is a Kinesis data stream, identifies the stream's Amazon Resource Name (ARN).
  final ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput?
      kinesisStreamsInput;

  /// The name prefix to use when creating an in-application stream.
  final String namePrefix;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInput].
  /// [inAppStreamNames] Optional.
  /// [inputId] Optional.
  /// [inputParallelism] Describes the number of in-application streams to create.
  /// [inputProcessingConfiguration] The input processing configuration for the input.
  /// [inputSchema] Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created.
  /// [inputStartingPositionConfigurations] The point at which the application starts processing records from the streaming source.
  /// [kinesisFirehoseInput] If the streaming source is a Kinesis Data Firehose delivery stream, identifies the delivery stream's ARN.
  /// [kinesisStreamsInput] If the streaming source is a Kinesis data stream, identifies the stream's Amazon Resource Name (ARN).
  /// [namePrefix] The name prefix to use when creating an in-application stream.
  ApplicationApplicationConfigurationSqlApplicationConfigurationInput({
    this.inAppStreamNames,
    this.inputId,
    this.inputParallelism,
    this.inputProcessingConfiguration,
    required this.inputSchema,
    this.inputStartingPositionConfigurations,
    this.kinesisFirehoseInput,
    this.kinesisStreamsInput,
    required this.namePrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inAppStreamNamesValue = inAppStreamNames;
    if (inAppStreamNamesValue != null) {
      map['inAppStreamNames'] = inAppStreamNamesValue;
    }
    final inputIdValue = inputId;
    if (inputIdValue != null) {
      map['inputId'] = inputIdValue;
    }
    final inputParallelismValue = inputParallelism;
    if (inputParallelismValue != null) {
      map['inputParallelism'] = inputParallelismValue.toMap();
    }
    final inputProcessingConfigurationValue = inputProcessingConfiguration;
    if (inputProcessingConfigurationValue != null) {
      map['inputProcessingConfiguration'] =
          inputProcessingConfigurationValue.toMap();
    }
    map['inputSchema'] = inputSchema.toMap();
    final inputStartingPositionConfigurationsValue =
        inputStartingPositionConfigurations;
    if (inputStartingPositionConfigurationsValue != null) {
      map['inputStartingPositionConfigurations'] = pulumi.Input.encodeList<
              ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration,
              Map<String, dynamic>>(
          inputStartingPositionConfigurationsValue, (value) => value.toMap());
    }
    final kinesisFirehoseInputValue = kinesisFirehoseInput;
    if (kinesisFirehoseInputValue != null) {
      map['kinesisFirehoseInput'] = kinesisFirehoseInputValue.toMap();
    }
    final kinesisStreamsInputValue = kinesisStreamsInput;
    if (kinesisStreamsInputValue != null) {
      map['kinesisStreamsInput'] = kinesisStreamsInputValue.toMap();
    }
    map['namePrefix'] = namePrefix;
    return map;
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInput.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInput(
      inAppStreamNames: map['inAppStreamNames'] == null
          ? null
          : (map['inAppStreamNames'] as List).cast<String>(),
      inputId: map['inputId'] == null ? null : map['inputId'] as String,
      inputParallelism: map['inputParallelism'] == null
          ? null
          : ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism
              .fromMap(
                  (map['inputParallelism'] as Map).cast<String, dynamic>()),
      inputProcessingConfiguration: map['inputProcessingConfiguration'] == null
          ? null
          : ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration
              .fromMap((map['inputProcessingConfiguration'] as Map)
                  .cast<String, dynamic>()),
      inputSchema:
          ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchema
              .fromMap((map['inputSchema'] as Map).cast<String, dynamic>()),
      inputStartingPositionConfigurations: map[
                  'inputStartingPositionConfigurations'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration>(
              map['inputStartingPositionConfigurations'],
              (value) =>
                  ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration
                      .fromMap((value as Map).cast<String, dynamic>())),
      kinesisFirehoseInput: map['kinesisFirehoseInput'] == null
          ? null
          : ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput
              .fromMap(
                  (map['kinesisFirehoseInput'] as Map).cast<String, dynamic>()),
      kinesisStreamsInput: map['kinesisStreamsInput'] == null
          ? null
          : ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput
              .fromMap(
                  (map['kinesisStreamsInput'] as Map).cast<String, dynamic>()),
      namePrefix: map['namePrefix'] as String,
    );
  }
}
