// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_hls_ingest.dart';

/// Input properties used for looking up and filtering Channel resources.
class ChannelState {
  /// The ARN of the channel
  final pulumi.Input<String>? arn;
  /// A unique identifier describing the channel
  final pulumi.Input<String>? channelId;
  /// A description of the channel
  final pulumi.Input<String>? description;
  /// A single item list of HLS ingest information
  final pulumi.Input<List<ChannelHlsIngest>>? hlsIngests;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ChannelState].
  /// [arn] The ARN of the channel
  /// [channelId] A unique identifier describing the channel
  /// [description] A description of the channel
  /// [hlsIngests] A single item list of HLS ingest information
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ChannelState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? channelId,
    pulumi.Output<String>? description,
    pulumi.Output<List<ChannelHlsIngest>>? hlsIngests,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      channelId = pulumi.Input.asOptionalInput<String>(channelId),
      description = pulumi.Input.asOptionalInput<String>(description),
      hlsIngests = pulumi.Input.asOptionalInput<List<ChannelHlsIngest>>(hlsIngests),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'channelId': ?channelId,
      'description': ?description,
      'hlsIngests': ?pulumi.Input.mapOptionalInputValue<List<ChannelHlsIngest>, List<Map<String, dynamic>>>(hlsIngests, (value) => pulumi.Input.encodeList<ChannelHlsIngest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ChannelState.fromMap(Map<String, dynamic> map) {
    return ChannelState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      channelId: map['channelId'] == null ? null : pulumi.Output.create<String>(map['channelId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      hlsIngests: map['hlsIngests'] == null ? null : pulumi.Output.create<List<ChannelHlsIngest>>(pulumi.Input.decodeList<ChannelHlsIngest>(map['hlsIngests'], (value) => ChannelHlsIngest.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

