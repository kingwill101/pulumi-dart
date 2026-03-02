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
    this.arn,
    this.creationTimestamp,
    this.name,
    this.region,
    this.streamArn,
    this.tags,
    this.tagsAll,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      creationTimestamp: map['creationTimestamp'] == null ? null : ((map['creationTimestamp'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      streamArn: map['streamArn'] == null ? null : ((map['streamArn'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

