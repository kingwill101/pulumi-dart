// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StreamConsumer resources.
class StreamConsumerState {
  /// Amazon Resource Name (ARN) of the stream consumer.
  final pulumi.Input<String>? arn;
  /// Approximate timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of when the stream consumer was created.
  final pulumi.Input<String>? creationTimestamp;
  /// Name of the stream consumer.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of the data stream the consumer is registered with.
  final pulumi.Input<String>? streamArn;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [StreamConsumerState].
  /// [arn] Amazon Resource Name (ARN) of the stream consumer.
  /// [creationTimestamp] Approximate timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of when the stream consumer was created.
  /// [name] Name of the stream consumer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [streamArn] Amazon Resource Name (ARN) of the data stream the consumer is registered with.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  StreamConsumerState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? streamArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      streamArn = pulumi.Input.asOptionalInput<String>(streamArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTimestamp': ?creationTimestamp,
      'name': ?name,
      'region': ?region,
      'streamArn': ?streamArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory StreamConsumerState.fromMap(Map<String, dynamic> map) {
    return StreamConsumerState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      streamArn: map['streamArn'] == null ? null : pulumi.Output.create<String>(map['streamArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

