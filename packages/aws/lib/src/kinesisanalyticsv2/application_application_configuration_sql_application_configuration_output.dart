// ignore_for_file: unused_element, unnecessary_cast

import 'application_application_configuration_sql_application_configuration_output_destination_schema.dart';
import 'application_application_configuration_sql_application_configuration_output_kinesis_firehose_output.dart';
import 'application_application_configuration_sql_application_configuration_output_kinesis_streams_output.dart';
import 'application_application_configuration_sql_application_configuration_output_lambda_output.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationOutput {
  /// Describes the data format when records are written to the destination.
  final ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema destinationSchema;
  /// Identifies a Kinesis Data Firehose delivery stream as the destination.
  final ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisFirehoseOutput? kinesisFirehoseOutput;
  /// Identifies a Kinesis data stream as the destination.
  final ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput? kinesisStreamsOutput;
  /// Identifies a Lambda function as the destination.
  final ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput? lambdaOutput;
  /// The name of the in-application stream.
  final String name;
  final String? outputId;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationOutput].
  /// [destinationSchema] Describes the data format when records are written to the destination.
  /// [kinesisFirehoseOutput] Identifies a Kinesis Data Firehose delivery stream as the destination.
  /// [kinesisStreamsOutput] Identifies a Kinesis data stream as the destination.
  /// [lambdaOutput] Identifies a Lambda function as the destination.
  /// [name] The name of the in-application stream.
  /// [outputId] Optional.
  ApplicationApplicationConfigurationSqlApplicationConfigurationOutput({
    required this.destinationSchema,
    this.kinesisFirehoseOutput,
    this.kinesisStreamsOutput,
    this.lambdaOutput,
    required this.name,
    this.outputId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationSchema': destinationSchema.toMap(),
      'kinesisFirehoseOutput': ?kinesisFirehoseOutput == null ? null : kinesisFirehoseOutput!.toMap(),
      'kinesisStreamsOutput': ?kinesisStreamsOutput == null ? null : kinesisStreamsOutput!.toMap(),
      'lambdaOutput': ?lambdaOutput == null ? null : lambdaOutput!.toMap(),
      'name': name,
      'outputId': ?outputId,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationOutput.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationOutput(
      destinationSchema: ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema.fromMap((map['destinationSchema'] as Map).cast<String, dynamic>()),
      kinesisFirehoseOutput: map['kinesisFirehoseOutput'] == null ? null : ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisFirehoseOutput.fromMap((map['kinesisFirehoseOutput'] as Map).cast<String, dynamic>()),
      kinesisStreamsOutput: map['kinesisStreamsOutput'] == null ? null : ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput.fromMap((map['kinesisStreamsOutput'] as Map).cast<String, dynamic>()),
      lambdaOutput: map['lambdaOutput'] == null ? null : ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput.fromMap((map['lambdaOutput'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      outputId: map['outputId'] == null ? null : map['outputId'] as String,
    );
  }
}

