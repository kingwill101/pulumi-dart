// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_inputs_kinesis_firehose.dart';
import 'analytics_application_inputs_kinesis_stream.dart';
import 'analytics_application_inputs_parallelism.dart';
import 'analytics_application_inputs_processing_configuration.dart';
import 'analytics_application_inputs_schema.dart';
import 'analytics_application_inputs_starting_position_configuration.dart';

class AnalyticsApplicationInputs {
  /// ARN of the Kinesis Analytics Application.
  final pulumi.Input<String?>? id;
  /// Kinesis Firehose configuration for the streaming source. Conflicts with `kinesisStream`. See `inputs.kinesis_firehose` Block below for details.
  final pulumi.Input<AnalyticsApplicationInputsKinesisFirehose?>? kinesisFirehose;
  /// Kinesis Stream configuration for the streaming source. Conflicts with `kinesisFirehose`. See `inputs.kinesis_stream` Block below for details.
  final pulumi.Input<AnalyticsApplicationInputsKinesisStream?>? kinesisStream;
  /// Name Prefix to use when creating an in-application stream.
  final pulumi.Input<String> namePrefix;
  /// Number of Parallel in-application streams to create. See `inputs.parallelism` Block below for details.
  final pulumi.Input<AnalyticsApplicationInputsParallelism?>? parallelism;
  /// Processing Configuration to transform records as they are received from the stream. See `inputs.processing_configuration` Block below for details.
  final pulumi.Input<AnalyticsApplicationInputsProcessingConfiguration?>? processingConfiguration;
  /// Schema format of the data in the streaming source. See `inputs.schema` Block below for details.
  final pulumi.Input<AnalyticsApplicationInputsSchema> schema;
  /// Point at which the application starts processing records from the streaming source. See `inputs.starting_position_configuration` Block below for details.
  final pulumi.Input<List<AnalyticsApplicationInputsStartingPositionConfiguration>?>? startingPositionConfigurations;
  /// Names of the in-application streams created for the input.
  final pulumi.Input<List<String>?>? streamNames;

  /// Creates a new [AnalyticsApplicationInputs].
  /// [id] ARN of the Kinesis Analytics Application.
  /// [kinesisFirehose] Kinesis Firehose configuration for the streaming source. Conflicts with `kinesisStream`. See `inputs.kinesis_firehose` Block below for details.
  /// [kinesisStream] Kinesis Stream configuration for the streaming source. Conflicts with `kinesisFirehose`. See `inputs.kinesis_stream` Block below for details.
  /// [namePrefix] Name Prefix to use when creating an in-application stream.
  /// [parallelism] Number of Parallel in-application streams to create. See `inputs.parallelism` Block below for details.
  /// [processingConfiguration] Processing Configuration to transform records as they are received from the stream. See `inputs.processing_configuration` Block below for details.
  /// [schema] Schema format of the data in the streaming source. See `inputs.schema` Block below for details.
  /// [startingPositionConfigurations] Point at which the application starts processing records from the streaming source. See `inputs.starting_position_configuration` Block below for details.
  /// [streamNames] Names of the in-application streams created for the input.
  const AnalyticsApplicationInputs({
    this.id,
    this.kinesisFirehose,
    this.kinesisStream,
    required this.namePrefix,
    this.parallelism,
    this.processingConfiguration,
    required this.schema,
    this.startingPositionConfigurations,
    this.streamNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'kinesisFirehose': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationInputsKinesisFirehose, Map<String, dynamic>>(kinesisFirehose, (value) => value.toMap()),
      'kinesisStream': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationInputsKinesisStream, Map<String, dynamic>>(kinesisStream, (value) => value.toMap()),
      'namePrefix': namePrefix,
      'parallelism': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationInputsParallelism, Map<String, dynamic>>(parallelism, (value) => value.toMap()),
      'processingConfiguration': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationInputsProcessingConfiguration, Map<String, dynamic>>(processingConfiguration, (value) => value.toMap()),
      'schema': pulumi.Input.mapInputValue<AnalyticsApplicationInputsSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'startingPositionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AnalyticsApplicationInputsStartingPositionConfiguration>, List<Map<String, dynamic>>>(startingPositionConfigurations, (value) => pulumi.Input.encodeList<AnalyticsApplicationInputsStartingPositionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'streamNames': ?streamNames,
    };
  }

  factory AnalyticsApplicationInputs.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationInputs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kinesisFirehose: (() { final guardedValue = map['kinesisFirehose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsApplicationInputsKinesisFirehose.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kinesisStream: (() { final guardedValue = map['kinesisStream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsApplicationInputsKinesisStream.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      namePrefix: pulumi.Input.fromValue(map['namePrefix'] as String),
      parallelism: (() { final guardedValue = map['parallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsApplicationInputsParallelism.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      processingConfiguration: (() { final guardedValue = map['processingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsApplicationInputsProcessingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schema: pulumi.Input.fromValue(AnalyticsApplicationInputsSchema.fromMap((map['schema']! as Map).cast<String, dynamic>())),
      startingPositionConfigurations: (() { final guardedValue = map['startingPositionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AnalyticsApplicationInputsStartingPositionConfiguration>(guardedValue, (value) => AnalyticsApplicationInputsStartingPositionConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      streamNames: (() { final guardedValue = map['streamNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
