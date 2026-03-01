// ignore_for_file: unused_element, unnecessary_cast

import 'analytics_application_output_kinesis_firehose.dart';
import 'analytics_application_output_kinesis_stream.dart';
import 'analytics_application_output_lambda.dart';
import 'analytics_application_output_schema.dart';

class AnalyticsApplicationOutput {
  /// The ARN of the Kinesis Analytics Application.
  final String? id;
  /// The Kinesis Firehose configuration for the destination stream. Conflicts with `kinesis_stream`.
  /// See Kinesis Firehose below for more details.
  final AnalyticsApplicationOutputKinesisFirehose? kinesisFirehose;
  /// The Kinesis Stream configuration for the destination stream. Conflicts with `kinesis_firehose`.
  /// See Kinesis Stream below for more details.
  final AnalyticsApplicationOutputKinesisStream? kinesisStream;
  /// The Lambda function destination. See Lambda below for more details.
  final AnalyticsApplicationOutputLambda? lambda;
  /// The Name of the in-application stream.
  final String name;
  /// The Schema format of the data written to the destination. See Destination Schema below for more details.
  final AnalyticsApplicationOutputSchema schema;

  /// Creates a new [AnalyticsApplicationOutput].
  /// [id] The ARN of the Kinesis Analytics Application.
  /// [kinesisFirehose] The Kinesis Firehose configuration for the destination stream. Conflicts with `kinesis_stream`.
  /// [kinesisStream] The Kinesis Stream configuration for the destination stream. Conflicts with `kinesis_firehose`.
  /// [lambda] The Lambda function destination. See Lambda below for more details.
  /// [name] The Name of the in-application stream.
  /// [schema] The Schema format of the data written to the destination. See Destination Schema below for more details.
  AnalyticsApplicationOutput({
    this.id,
    this.kinesisFirehose,
    this.kinesisStream,
    this.lambda,
    required this.name,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'kinesisFirehose': ?kinesisFirehose == null ? null : kinesisFirehose!.toMap(),
      'kinesisStream': ?kinesisStream == null ? null : kinesisStream!.toMap(),
      'lambda': ?lambda == null ? null : lambda!.toMap(),
      'name': name,
      'schema': schema.toMap(),
    };
  }

  factory AnalyticsApplicationOutput.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationOutput(
      id: map['id'] == null ? null : map['id'] as String,
      kinesisFirehose: map['kinesisFirehose'] == null ? null : AnalyticsApplicationOutputKinesisFirehose.fromMap((map['kinesisFirehose'] as Map).cast<String, dynamic>()),
      kinesisStream: map['kinesisStream'] == null ? null : AnalyticsApplicationOutputKinesisStream.fromMap((map['kinesisStream'] as Map).cast<String, dynamic>()),
      lambda: map['lambda'] == null ? null : AnalyticsApplicationOutputLambda.fromMap((map['lambda'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      schema: AnalyticsApplicationOutputSchema.fromMap((map['schema'] as Map).cast<String, dynamic>()),
    );
  }
}

