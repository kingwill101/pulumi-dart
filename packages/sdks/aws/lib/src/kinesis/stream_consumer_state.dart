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
  const StreamConsumerState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamArn: (() { final guardedValue = map['streamArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
