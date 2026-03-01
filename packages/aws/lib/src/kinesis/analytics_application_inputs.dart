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
  final String? id;

  /// The Kinesis Firehose configuration for the streaming source. Conflicts with `kinesis_stream`.
  /// See Kinesis Firehose below for more details.
  final AnalyticsApplicationInputsKinesisFirehose? kinesisFirehose;

  /// The Kinesis Stream configuration for the streaming source. Conflicts with `kinesis_firehose`.
  /// See Kinesis Stream below for more details.
  final AnalyticsApplicationInputsKinesisStream? kinesisStream;

  /// The Name Prefix to use when creating an in-application stream.
  final String namePrefix;

  /// The number of Parallel in-application streams to create.
  /// See Parallelism below for more details.
  final AnalyticsApplicationInputsParallelism? parallelism;

  /// The Processing Configuration to transform records as they are received from the stream.
  /// See Processing Configuration below for more details.
  final AnalyticsApplicationInputsProcessingConfiguration?
  processingConfiguration;

  /// The Schema format of the data in the streaming source. See Source Schema below for more details.
  final AnalyticsApplicationInputsSchema schema;

  /// The point at which the application starts processing records from the streaming source.
  /// See Starting Position Configuration below for more details.
  final List<AnalyticsApplicationInputsStartingPositionConfiguration>?
  startingPositionConfigurations;
  final List<String>? streamNames;

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
      'kinesisFirehose': ?kinesisFirehose == null
          ? null
          : kinesisFirehose!.toMap(),
      'kinesisStream': ?kinesisStream == null ? null : kinesisStream!.toMap(),
      'namePrefix': namePrefix,
      'parallelism': ?parallelism == null ? null : parallelism!.toMap(),
      'processingConfiguration': ?processingConfiguration == null
          ? null
          : processingConfiguration!.toMap(),
      'schema': schema.toMap(),
      'startingPositionConfigurations': ?startingPositionConfigurations == null
          ? null
          : pulumi.Input.encodeList<
              AnalyticsApplicationInputsStartingPositionConfiguration,
              Map<String, dynamic>
            >(startingPositionConfigurations!, (value) => value.toMap()),
      'streamNames': ?streamNames,
    };
  }

  factory AnalyticsApplicationInputs.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationInputs(
      id: map['id'] == null ? null : map['id'] as String,
      kinesisFirehose: map['kinesisFirehose'] == null
          ? null
          : AnalyticsApplicationInputsKinesisFirehose.fromMap(
              (map['kinesisFirehose'] as Map).cast<String, dynamic>(),
            ),
      kinesisStream: map['kinesisStream'] == null
          ? null
          : AnalyticsApplicationInputsKinesisStream.fromMap(
              (map['kinesisStream'] as Map).cast<String, dynamic>(),
            ),
      namePrefix: map['namePrefix'] as String,
      parallelism: map['parallelism'] == null
          ? null
          : AnalyticsApplicationInputsParallelism.fromMap(
              (map['parallelism'] as Map).cast<String, dynamic>(),
            ),
      processingConfiguration: map['processingConfiguration'] == null
          ? null
          : AnalyticsApplicationInputsProcessingConfiguration.fromMap(
              (map['processingConfiguration'] as Map).cast<String, dynamic>(),
            ),
      schema: AnalyticsApplicationInputsSchema.fromMap(
        (map['schema'] as Map).cast<String, dynamic>(),
      ),
      startingPositionConfigurations:
          map['startingPositionConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<
              AnalyticsApplicationInputsStartingPositionConfiguration
            >(
              map['startingPositionConfigurations'],
              (value) =>
                  AnalyticsApplicationInputsStartingPositionConfiguration.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      streamNames: map['streamNames'] == null
          ? null
          : (map['streamNames'] as List).cast<String>(),
    );
  }
}
