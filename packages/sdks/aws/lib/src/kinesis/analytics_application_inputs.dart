// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_inputs_kinesis_firehose.dart';
import 'analytics_application_inputs_kinesis_stream.dart';
import 'analytics_application_inputs_parallelism.dart';
import 'analytics_application_inputs_processing_configuration.dart';
import 'analytics_application_inputs_schema.dart';
import 'analytics_application_inputs_starting_position_configuration.dart';

class AnalyticsApplicationInputs {
  /// The ARN of the Kinesis Analytics Application.
  final pulumi.Input<String>? id;
  /// The Kinesis Firehose configuration for the streaming source. Conflicts with `kinesis_stream`.
  /// See Kinesis Firehose below for more details.
  final pulumi.Input<AnalyticsApplicationInputsKinesisFirehose>? kinesisFirehose;
  /// The Kinesis Stream configuration for the streaming source. Conflicts with `kinesis_firehose`.
  /// See Kinesis Stream below for more details.
  final pulumi.Input<AnalyticsApplicationInputsKinesisStream>? kinesisStream;
  /// The Name Prefix to use when creating an in-application stream.
  final pulumi.Input<String> namePrefix;
  /// The number of Parallel in-application streams to create.
  /// See Parallelism below for more details.
  final pulumi.Input<AnalyticsApplicationInputsParallelism>? parallelism;
  /// The Processing Configuration to transform records as they are received from the stream.
  /// See Processing Configuration below for more details.
  final pulumi.Input<AnalyticsApplicationInputsProcessingConfiguration>? processingConfiguration;
  /// The Schema format of the data in the streaming source. See Source Schema below for more details.
  final pulumi.Input<AnalyticsApplicationInputsSchema> schema;
  /// The point at which the application starts processing records from the streaming source.
  /// See Starting Position Configuration below for more details.
  final pulumi.Input<List<AnalyticsApplicationInputsStartingPositionConfiguration>>? startingPositionConfigurations;
  final pulumi.Input<List<String>>? streamNames;

  /// Creates a new [AnalyticsApplicationInputs].
  /// [id] The ARN of the Kinesis Analytics Application.
  /// [kinesisFirehose] The Kinesis Firehose configuration for the streaming source. Conflicts with `kinesis_stream`.
  /// [kinesisStream] The Kinesis Stream configuration for the streaming source. Conflicts with `kinesis_firehose`.
  /// [namePrefix] The Name Prefix to use when creating an in-application stream.
  /// [parallelism] The number of Parallel in-application streams to create.
  /// [processingConfiguration] The Processing Configuration to transform records as they are received from the stream.
  /// [schema] The Schema format of the data in the streaming source. See Source Schema below for more details.
  /// [startingPositionConfigurations] The point at which the application starts processing records from the streaming source.
  /// [streamNames] Optional.
  AnalyticsApplicationInputs({
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
      id: map['id'] == null ? null : (map['id'] as String).input(),
      kinesisFirehose: map['kinesisFirehose'] == null ? null : (AnalyticsApplicationInputsKinesisFirehose.fromMap((map['kinesisFirehose'] as Map).cast<String, dynamic>())).input(),
      kinesisStream: map['kinesisStream'] == null ? null : (AnalyticsApplicationInputsKinesisStream.fromMap((map['kinesisStream'] as Map).cast<String, dynamic>())).input(),
      namePrefix: (map['namePrefix'] as String).input(),
      parallelism: map['parallelism'] == null ? null : (AnalyticsApplicationInputsParallelism.fromMap((map['parallelism'] as Map).cast<String, dynamic>())).input(),
      processingConfiguration: map['processingConfiguration'] == null ? null : (AnalyticsApplicationInputsProcessingConfiguration.fromMap((map['processingConfiguration'] as Map).cast<String, dynamic>())).input(),
      schema: (AnalyticsApplicationInputsSchema.fromMap((map['schema'] as Map).cast<String, dynamic>())).input(),
      startingPositionConfigurations: map['startingPositionConfigurations'] == null ? null : (pulumi.Input.decodeList<AnalyticsApplicationInputsStartingPositionConfiguration>(map['startingPositionConfigurations'], (value) => AnalyticsApplicationInputsStartingPositionConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      streamNames: map['streamNames'] == null ? null : ((map['streamNames'] as List).cast<String>()).input(),
    );
  }
}

