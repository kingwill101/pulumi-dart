// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_sql_application_configuration_input_input_parallelism.dart';
import 'application_application_configuration_sql_application_configuration_input_input_processing_configuration.dart';
import 'application_application_configuration_sql_application_configuration_input_input_schema.dart';
import 'application_application_configuration_sql_application_configuration_input_input_starting_position_configuration.dart';
import 'application_application_configuration_sql_application_configuration_input_kinesis_firehose_input.dart';
import 'application_application_configuration_sql_application_configuration_input_kinesis_streams_input.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationInput {
  final pulumi.Input<List<String>>? inAppStreamNames;
  final pulumi.Input<String>? inputId;
  /// Describes the number of in-application streams to create.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism>? inputParallelism;
  /// The input processing configuration for the input.
  /// An input processor transforms records as they are received from the stream, before the application's SQL code executes.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration>? inputProcessingConfiguration;
  /// Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchema> inputSchema;
  /// The point at which the application starts processing records from the streaming source.
  final pulumi.Input<List<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration>>? inputStartingPositionConfigurations;
  /// If the streaming source is a Kinesis Data Firehose delivery stream, identifies the delivery stream's ARN.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput>? kinesisFirehoseInput;
  /// If the streaming source is a Kinesis data stream, identifies the stream's Amazon Resource Name (ARN).
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput>? kinesisStreamsInput;
  /// The name prefix to use when creating an in-application stream.
  final pulumi.Input<String> namePrefix;

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
      inAppStreamNames: map['inAppStreamNames'] == null ? null : ((map['inAppStreamNames'] as List).cast<String>()).input(),
      inputId: map['inputId'] == null ? null : (map['inputId'] as String).input(),
      inputParallelism: map['inputParallelism'] == null ? null : (ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism.fromMap((map['inputParallelism'] as Map).cast<String, dynamic>())).input(),
      inputProcessingConfiguration: map['inputProcessingConfiguration'] == null ? null : (ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration.fromMap((map['inputProcessingConfiguration'] as Map).cast<String, dynamic>())).input(),
      inputSchema: (ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchema.fromMap((map['inputSchema'] as Map).cast<String, dynamic>())).input(),
      inputStartingPositionConfigurations: map['inputStartingPositionConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration>(map['inputStartingPositionConfigurations'], (value) => ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      kinesisFirehoseInput: map['kinesisFirehoseInput'] == null ? null : (ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput.fromMap((map['kinesisFirehoseInput'] as Map).cast<String, dynamic>())).input(),
      kinesisStreamsInput: map['kinesisStreamsInput'] == null ? null : (ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput.fromMap((map['kinesisStreamsInput'] as Map).cast<String, dynamic>())).input(),
      namePrefix: (map['namePrefix'] as String).input(),
    );
  }
}

