// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_sql_application_configuration_input_input_parallelism.dart';
import 'application_application_configuration_sql_application_configuration_input_input_processing_configuration.dart';
import 'application_application_configuration_sql_application_configuration_input_input_schema.dart';
import 'application_application_configuration_sql_application_configuration_input_input_starting_position_configuration.dart';
import 'application_application_configuration_sql_application_configuration_input_kinesis_firehose_input.dart';
import 'application_application_configuration_sql_application_configuration_input_kinesis_streams_input.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationInput {
  /// In-application stream names.
  final pulumi.Input<List<String>?>? inAppStreamNames;
  /// Identifier of the input configuration.
  final pulumi.Input<String?>? inputId;
  /// Number of in-application streams to create. See `inputParallelism` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism?>? inputParallelism;
  /// Input processing configuration for the input. An input processor transforms records as they are received from the stream, before the application's SQL code executes. See `inputProcessingConfiguration` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration?>? inputProcessingConfiguration;
  /// Format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created. See `inputSchema` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchema> inputSchema;
  /// Point at which the application starts processing records from the streaming source. See `inputStartingPositionConfiguration` Block below.
  final pulumi.Input<List<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration>?>? inputStartingPositionConfigurations;
  /// If the streaming source is a Kinesis Data Firehose delivery stream, identifies the delivery stream's ARN. See `kinesisFirehoseInput` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput?>? kinesisFirehoseInput;
  /// If the streaming source is a Kinesis data stream, identifies the stream's ARN. See `kinesisStreamsInput` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput?>? kinesisStreamsInput;
  /// Name prefix to use when creating an in-application stream.
  final pulumi.Input<String> namePrefix;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInput].
  /// [inAppStreamNames] In-application stream names.
  /// [inputId] Identifier of the input configuration.
  /// [inputParallelism] Number of in-application streams to create. See `inputParallelism` Block below.
  /// [inputProcessingConfiguration] Input processing configuration for the input. An input processor transforms records as they are received from the stream, before the application's SQL code executes. See `inputProcessingConfiguration` Block below.
  /// [inputSchema] Format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created. See `inputSchema` Block below.
  /// [inputStartingPositionConfigurations] Point at which the application starts processing records from the streaming source. See `inputStartingPositionConfiguration` Block below.
  /// [kinesisFirehoseInput] If the streaming source is a Kinesis Data Firehose delivery stream, identifies the delivery stream's ARN. See `kinesisFirehoseInput` Block below.
  /// [kinesisStreamsInput] If the streaming source is a Kinesis data stream, identifies the stream's ARN. See `kinesisStreamsInput` Block below.
  /// [namePrefix] Name prefix to use when creating an in-application stream.
  const ApplicationApplicationConfigurationSqlApplicationConfigurationInput({
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
    return <String, dynamic>{
      'inAppStreamNames': ?inAppStreamNames,
      'inputId': ?inputId,
      'inputParallelism': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism, Map<String, dynamic>>(inputParallelism, (value) => value.toMap()),
      'inputProcessingConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration, Map<String, dynamic>>(inputProcessingConfiguration, (value) => value.toMap()),
      'inputSchema': pulumi.Input.mapInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchema, Map<String, dynamic>>(inputSchema, (value) => value.toMap()),
      'inputStartingPositionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration>, List<Map<String, dynamic>>>(inputStartingPositionConfigurations, (value) => pulumi.Input.encodeList<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kinesisFirehoseInput': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput, Map<String, dynamic>>(kinesisFirehoseInput, (value) => value.toMap()),
      'kinesisStreamsInput': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput, Map<String, dynamic>>(kinesisStreamsInput, (value) => value.toMap()),
      'namePrefix': namePrefix,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInput.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInput(
      inAppStreamNames: (() { final guardedValue = map['inAppStreamNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      inputId: (() { final guardedValue = map['inputId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputParallelism: (() { final guardedValue = map['inputParallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputProcessingConfiguration: (() { final guardedValue = map['inputProcessingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputSchema: pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchema.fromMap((map['inputSchema']! as Map).cast<String, dynamic>())),
      inputStartingPositionConfigurations: (() { final guardedValue = map['inputStartingPositionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration>(guardedValue, (value) => ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kinesisFirehoseInput: (() { final guardedValue = map['kinesisFirehoseInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kinesisStreamsInput: (() { final guardedValue = map['kinesisStreamsInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      namePrefix: pulumi.Input.fromValue(map['namePrefix'] as String),
    );
  }
}
