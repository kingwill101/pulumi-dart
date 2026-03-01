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
  GetStreamKeyArgs({
    required pulumi.Output<String> channelArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      channelArn = pulumi.Input.asInput<String>(channelArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelArn': channelArn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetStreamKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetStreamKeyArgs(
      channelArn: pulumi.Output.create<String>(map['channelArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

