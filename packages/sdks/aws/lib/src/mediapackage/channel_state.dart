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
    this.arn,
    this.channelId,
    this.description,
    this.hlsIngests,
    this.region,
    this.tags,
    this.tagsAll,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      channelId: map['channelId'] == null ? null : (map['channelId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      hlsIngests: map['hlsIngests'] == null ? null : (pulumi.Input.decodeList<ChannelHlsIngest>(map['hlsIngests'], (value) => ChannelHlsIngest.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

