// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_sql_application_configuration_output_destination_schema.dart';
import 'application_application_configuration_sql_application_configuration_output_kinesis_firehose_output.dart';
import 'application_application_configuration_sql_application_configuration_output_kinesis_streams_output.dart';
import 'application_application_configuration_sql_application_configuration_output_lambda_output.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationOutput {
  /// Data format when records are written to the destination. See `destinationSchema` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema> destinationSchema;
  /// Destination Kinesis Data Firehose delivery stream. See `kinesisFirehoseOutput` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisFirehoseOutput?>? kinesisFirehoseOutput;
  /// Destination Kinesis data stream. See `kinesisStreamsOutput` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput?>? kinesisStreamsOutput;
  /// Destination Lambda function. See `lambdaOutput` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput?>? lambdaOutput;
  /// Name of the in-application stream.
  final pulumi.Input<String> name;
  /// Identifier of the output configuration.
  final pulumi.Input<String?>? outputId;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationOutput].
  /// [destinationSchema] Data format when records are written to the destination. See `destinationSchema` Block below.
  /// [kinesisFirehoseOutput] Destination Kinesis Data Firehose delivery stream. See `kinesisFirehoseOutput` Block below.
  /// [kinesisStreamsOutput] Destination Kinesis data stream. See `kinesisStreamsOutput` Block below.
  /// [lambdaOutput] Destination Lambda function. See `lambdaOutput` Block below.
  /// [name] Name of the in-application stream.
  /// [outputId] Identifier of the output configuration.
  const ApplicationApplicationConfigurationSqlApplicationConfigurationOutput({
    required this.destinationSchema,
    this.kinesisFirehoseOutput,
    this.kinesisStreamsOutput,
    this.lambdaOutput,
    required this.name,
    this.outputId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationSchema': pulumi.Input.mapInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema, Map<String, dynamic>>(destinationSchema, (value) => value.toMap()),
      'kinesisFirehoseOutput': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisFirehoseOutput, Map<String, dynamic>>(kinesisFirehoseOutput, (value) => value.toMap()),
      'kinesisStreamsOutput': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput, Map<String, dynamic>>(kinesisStreamsOutput, (value) => value.toMap()),
      'lambdaOutput': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput, Map<String, dynamic>>(lambdaOutput, (value) => value.toMap()),
      'name': name,
      'outputId': ?outputId,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationOutput.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationOutput(
      destinationSchema: pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema.fromMap((map['destinationSchema']! as Map).cast<String, dynamic>())),
      kinesisFirehoseOutput: (() { final guardedValue = map['kinesisFirehoseOutput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisFirehoseOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kinesisStreamsOutput: (() { final guardedValue = map['kinesisStreamsOutput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lambdaOutput: (() { final guardedValue = map['lambdaOutput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      outputId: (() { final guardedValue = map['outputId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
