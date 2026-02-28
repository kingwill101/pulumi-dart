// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kinesis_stream_consumer_stream_consumer_args_doc}
/// The set of arguments for StreamConsumer.
/// {@endtemplate}
/// {@macro pulumi_kinesis_stream_consumer_stream_consumer_args_doc}
class StreamConsumerArgs {
  /// Name of the stream consumer.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of the data stream the consumer is registered with.
  final pulumi.Input<String> streamArn;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [StreamConsumerArgs].
  /// [name] Name of the stream consumer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [streamArn] Amazon Resource Name (ARN) of the data stream the consumer is registered with.
  /// [tags] Optional.
  StreamConsumerArgs({
    String? name,
    String? region,
    required String streamArn,
    Map<String, String>? tags,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      streamArn = pulumi.Input.asInput<String>(streamArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'streamArn': streamArn,
      'tags': ?tags,
    };
  }

  factory StreamConsumerArgs.fromMap(Map<String, dynamic> map) {
    return StreamConsumerArgs(
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      streamArn: map['streamArn'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

