// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getStreamConsumer.
class GetStreamConsumerArgs {
  /// ARN of the stream consumer.
  final Input<String>? arn;

  /// Name of the stream consumer.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the data stream the consumer is registered with.
  final Input<String> streamArn;
  final Input<Map<String, String>>? tags;

  GetStreamConsumerArgs({
    this.arn,
    this.name,
    this.region,
    required this.streamArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['streamArn'] = streamArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetStreamConsumerArgs.fromMap(Map<String, dynamic> map) {
    return GetStreamConsumerArgs(
      arn: Input.asOptionalInput<String>(map['arn']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      streamArn: Input.asInput<String>(map['streamArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
