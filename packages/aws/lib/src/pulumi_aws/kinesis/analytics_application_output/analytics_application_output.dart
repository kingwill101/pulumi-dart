// ignore_for_file: unused_element, unnecessary_cast

import '../analytics_application_output_kinesis_firehose/analytics_application_output_kinesis_firehose.dart';
import '../analytics_application_output_kinesis_stream/analytics_application_output_kinesis_stream.dart';
import '../analytics_application_output_lambda/analytics_application_output_lambda.dart';
import '../analytics_application_output_schema/analytics_application_output_schema.dart';

class AnalyticsApplicationOutput {
  /// The ARN of the Kinesis Analytics Application.
  final String? id;

  /// The Kinesis Firehose configuration for the destination stream. Conflicts with <span pulumi-lang-nodejs="`kinesisStream`" pulumi-lang-dotnet="`KinesisStream`" pulumi-lang-go="`kinesisStream`" pulumi-lang-python="`kinesis_stream`" pulumi-lang-yaml="`kinesisStream`" pulumi-lang-java="`kinesisStream`">`kinesis_stream`</span>.
  /// See Kinesis Firehose below for more details.
  final AnalyticsApplicationOutputKinesisFirehose? kinesisFirehose;

  /// The Kinesis Stream configuration for the destination stream. Conflicts with <span pulumi-lang-nodejs="`kinesisFirehose`" pulumi-lang-dotnet="`KinesisFirehose`" pulumi-lang-go="`kinesisFirehose`" pulumi-lang-python="`kinesis_firehose`" pulumi-lang-yaml="`kinesisFirehose`" pulumi-lang-java="`kinesisFirehose`">`kinesis_firehose`</span>.
  /// See Kinesis Stream below for more details.
  final AnalyticsApplicationOutputKinesisStream? kinesisStream;

  /// The Lambda function destination. See Lambda below for more details.
  final AnalyticsApplicationOutputLambda? lambda;

  /// The Name of the in-application stream.
  final String name;

  /// The Schema format of the data written to the destination. See Destination Schema below for more details.
  final AnalyticsApplicationOutputSchema schema;

  AnalyticsApplicationOutput({
    this.id,
    this.kinesisFirehose,
    this.kinesisStream,
    this.lambda,
    required this.name,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final kinesisFirehoseValue = kinesisFirehose;
    if (kinesisFirehoseValue != null) {
      map['kinesisFirehose'] = kinesisFirehoseValue.toMap();
    }
    final kinesisStreamValue = kinesisStream;
    if (kinesisStreamValue != null) {
      map['kinesisStream'] = kinesisStreamValue.toMap();
    }
    final lambdaValue = lambda;
    if (lambdaValue != null) {
      map['lambda'] = lambdaValue.toMap();
    }
    map['name'] = name;
    map['schema'] = schema.toMap();
    return map;
  }

  factory AnalyticsApplicationOutput.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationOutput(
      id: map['id'] == null ? null : map['id'] as String,
      kinesisFirehose: map['kinesisFirehose'] == null
          ? null
          : AnalyticsApplicationOutputKinesisFirehose.fromMap(
              (map['kinesisFirehose'] as Map).cast<String, dynamic>()),
      kinesisStream: map['kinesisStream'] == null
          ? null
          : AnalyticsApplicationOutputKinesisStream.fromMap(
              (map['kinesisStream'] as Map).cast<String, dynamic>()),
      lambda: map['lambda'] == null
          ? null
          : AnalyticsApplicationOutputLambda.fromMap(
              (map['lambda'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      schema: AnalyticsApplicationOutputSchema.fromMap(
          (map['schema'] as Map).cast<String, dynamic>()),
    );
  }
}
