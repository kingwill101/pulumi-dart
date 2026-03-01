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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    required pulumi.Output<String> streamArn,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      streamArn = pulumi.Input.asInput<String>(streamArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      streamArn: pulumi.Output.create<String>(map['streamArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

