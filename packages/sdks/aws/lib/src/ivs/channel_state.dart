// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Channel resources.
class ChannelState {
  /// ARN of the Channel.
  final pulumi.Input<String>? arn;
  /// If `true`, channel is private (enabled for playback authorization).
  final pulumi.Input<bool>? authorized;
  /// Channel ingest endpoint, part of the definition of an ingest server, used when setting up streaming software.
  final pulumi.Input<String>? ingestEndpoint;
  /// Channel latency mode. Valid values: `NORMAL`, `LOW`.
  final pulumi.Input<String>? latencyMode;
  /// Channel name.
  final pulumi.Input<String>? name;
  /// Channel playback URL.
  final pulumi.Input<String>? playbackUrl;
  /// Recording configuration ARN.
  final pulumi.Input<String>? recordingConfigurationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Channel type, which determines the allowable resolution and bitrate. Valid values: `STANDARD`, `BASIC`.
  final pulumi.Input<String>? type;

  /// Creates a new [ChannelState].
  /// [arn] ARN of the Channel.
  /// [authorized] If `true`, channel is private (enabled for playback authorization).
  /// [ingestEndpoint] Channel ingest endpoint, part of the definition of an ingest server, used when setting up streaming software.
  /// [latencyMode] Channel latency mode. Valid values: `NORMAL`, `LOW`.
  /// [name] Channel name.
  /// [playbackUrl] Channel playback URL.
  /// [recordingConfigurationArn] Recording configuration ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] Channel type, which determines the allowable resolution and bitrate. Valid values: `STANDARD`, `BASIC`.
  ChannelState({
    this.arn,
    this.authorized,
    this.ingestEndpoint,
    this.latencyMode,
    this.name,
    this.playbackUrl,
    this.recordingConfigurationArn,
    this.region,
    this.tags,
    this.tagsAll,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authorized': ?authorized,
      'ingestEndpoint': ?ingestEndpoint,
      'latencyMode': ?latencyMode,
      'name': ?name,
      'playbackUrl': ?playbackUrl,
      'recordingConfigurationArn': ?recordingConfigurationArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
    };
  }

  factory ChannelState.fromMap(Map<String, dynamic> map) {
    return ChannelState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      authorized: map['authorized'] == null ? null : ((map['authorized'] as bool).input()).input(),
      ingestEndpoint: map['ingestEndpoint'] == null ? null : ((map['ingestEndpoint'] as String).input()).input(),
      latencyMode: map['latencyMode'] == null ? null : ((map['latencyMode'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      playbackUrl: map['playbackUrl'] == null ? null : ((map['playbackUrl'] as String).input()).input(),
      recordingConfigurationArn: map['recordingConfigurationArn'] == null ? null : ((map['recordingConfigurationArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
    );
  }
}

