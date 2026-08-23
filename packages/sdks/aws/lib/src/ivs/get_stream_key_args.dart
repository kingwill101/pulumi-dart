// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ivs_get_stream_key_get_stream_key_args_doc}
/// Arguments for getStreamKey.
/// {@endtemplate}
/// {@macro pulumi_ivs_get_stream_key_get_stream_key_args_doc}
class GetStreamKeyArgs {
  /// ARN of the Channel.
  final pulumi.Input<String> channelArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetStreamKeyArgs].
  /// [channelArn] ARN of the Channel.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource.
  const GetStreamKeyArgs({
    required this.channelArn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelArn': channelArn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetStreamKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetStreamKeyArgs(
      channelArn: pulumi.Input.fromValue(map['channelArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
