// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kinesis_get_stream_consumer_get_stream_consumer_args_doc}
/// Arguments for getStreamConsumer.
/// {@endtemplate}
/// {@macro pulumi_kinesis_get_stream_consumer_get_stream_consumer_args_doc}
class GetStreamConsumerArgs {
  /// ARN of the stream consumer.
  final pulumi.Input<String>? arn;

  /// Name of the stream consumer.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the data stream the consumer is registered with.
  final pulumi.Input<String> streamArn;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetStreamConsumerArgs].
  /// [arn] ARN of the stream consumer.
  /// [name] Name of the stream consumer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [streamArn] ARN of the data stream the consumer is registered with.
  /// [tags] Optional.
  GetStreamConsumerArgs({
    this.arn,
    this.name,
    this.region,
    required this.streamArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'region': ?region,
      'streamArn': streamArn,
      'tags': ?tags,
    };
  }

  factory GetStreamConsumerArgs.fromMap(Map<String, dynamic> map) {
    return GetStreamConsumerArgs(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      streamArn: pulumi.Input.fromValue(map['streamArn'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
