// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_output_kinesis_firehose.dart';
import 'analytics_application_output_kinesis_stream.dart';
import 'analytics_application_output_lambda.dart';
import 'analytics_application_output_schema.dart';

class AnalyticsApplicationOutput {
  /// ARN of the Kinesis Analytics Application.
  final pulumi.Input<String?>? id;
  /// Kinesis Firehose configuration for the destination stream. Conflicts with `kinesisStream`. See `outputs.kinesis_firehose` Block below for details.
  final pulumi.Input<AnalyticsApplicationOutputKinesisFirehose?>? kinesisFirehose;
  /// Kinesis Stream configuration for the destination stream. Conflicts with `kinesisFirehose`. See `outputs.kinesis_stream` Block below for details.
  final pulumi.Input<AnalyticsApplicationOutputKinesisStream?>? kinesisStream;
  /// Lambda function destination. See `outputs.lambda` Block below for details.
  final pulumi.Input<AnalyticsApplicationOutputLambda?>? lambda;
  /// Name of the in-application stream.
  final pulumi.Input<String> name;
  /// Schema format of the data written to the destination. See `outputs.schema` Block below for details.
  final pulumi.Input<AnalyticsApplicationOutputSchema> schema;

  /// Creates a new [AnalyticsApplicationOutput].
  /// [id] ARN of the Kinesis Analytics Application.
  /// [kinesisFirehose] Kinesis Firehose configuration for the destination stream. Conflicts with `kinesisStream`. See `outputs.kinesis_firehose` Block below for details.
  /// [kinesisStream] Kinesis Stream configuration for the destination stream. Conflicts with `kinesisFirehose`. See `outputs.kinesis_stream` Block below for details.
  /// [lambda] Lambda function destination. See `outputs.lambda` Block below for details.
  /// [name] Name of the in-application stream.
  /// [schema] Schema format of the data written to the destination. See `outputs.schema` Block below for details.
  const AnalyticsApplicationOutput({
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
      'kinesisFirehose': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationOutputKinesisFirehose, Map<String, dynamic>>(kinesisFirehose, (value) => value.toMap()),
      'kinesisStream': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationOutputKinesisStream, Map<String, dynamic>>(kinesisStream, (value) => value.toMap()),
      'lambda': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationOutputLambda, Map<String, dynamic>>(lambda, (value) => value.toMap()),
      'name': name,
      'schema': pulumi.Input.mapInputValue<AnalyticsApplicationOutputSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
    };
  }

  factory AnalyticsApplicationOutput.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationOutput(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kinesisFirehose: (() { final guardedValue = map['kinesisFirehose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsApplicationOutputKinesisFirehose.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kinesisStream: (() { final guardedValue = map['kinesisStream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsApplicationOutputKinesisStream.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lambda: (() { final guardedValue = map['lambda']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsApplicationOutputLambda.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      schema: pulumi.Input.fromValue(AnalyticsApplicationOutputSchema.fromMap((map['schema']! as Map).cast<String, dynamic>())),
    );
  }
}
