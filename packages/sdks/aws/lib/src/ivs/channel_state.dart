// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Channel resources.
class ChannelState {
  /// ARN of the Channel.
  final pulumi.Input<String?>? arn;
  /// If `true`, channel is private (enabled for playback authorization).
  final pulumi.Input<bool?>? authorized;
  /// Channel ingest endpoint, part of the definition of an ingest server, used when setting up streaming software.
  final pulumi.Input<String?>? ingestEndpoint;
  /// Channel latency mode. Valid values: `NORMAL`, `LOW`.
  final pulumi.Input<String?>? latencyMode;
  /// Channel name.
  final pulumi.Input<String?>? name;
  /// Channel playback URL.
  final pulumi.Input<String?>? playbackUrl;
  /// Recording configuration ARN.
  final pulumi.Input<String?>? recordingConfigurationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Channel type, which determines the allowable resolution and bitrate. Valid values: `STANDARD`, `BASIC`.
  final pulumi.Input<String?>? type;

  /// Creates a new [ChannelState].
  /// [arn] ARN of the Channel.
  /// [authorized] If `true`, channel is private (enabled for playback authorization).
  /// [ingestEndpoint] Channel ingest endpoint, part of the definition of an ingest server, used when setting up streaming software.
  /// [latencyMode] Channel latency mode. Valid values: `NORMAL`, `LOW`.
  /// [name] Channel name.
  /// [playbackUrl] Channel playback URL.
  /// [recordingConfigurationArn] Recording configuration ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [type] Channel type, which determines the allowable resolution and bitrate. Valid values: `STANDARD`, `BASIC`.
  const ChannelState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorized: (() { final guardedValue = map['authorized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ingestEndpoint: (() { final guardedValue = map['ingestEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latencyMode: (() { final guardedValue = map['latencyMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      playbackUrl: (() { final guardedValue = map['playbackUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordingConfigurationArn: (() { final guardedValue = map['recordingConfigurationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
