// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ivs_channel_channel_args_doc}
/// The set of arguments for Channel.
/// {@endtemplate}
/// {@macro pulumi_ivs_channel_channel_args_doc}
class ChannelArgs {
  /// If `true`, channel is private (enabled for playback authorization).
  final pulumi.Input<bool>? authorized;
  /// Channel latency mode. Valid values: `NORMAL`, `LOW`.
  final pulumi.Input<String>? latencyMode;
  /// Channel name.
  final pulumi.Input<String>? name;
  /// Recording configuration ARN.
  final pulumi.Input<String>? recordingConfigurationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Channel type, which determines the allowable resolution and bitrate. Valid values: `STANDARD`, `BASIC`.
  final pulumi.Input<String>? type;

  /// Creates a new [ChannelArgs].
  /// [authorized] If `true`, channel is private (enabled for playback authorization).
  /// [latencyMode] Channel latency mode. Valid values: `NORMAL`, `LOW`.
  /// [name] Channel name.
  /// [recordingConfigurationArn] Recording configuration ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Channel type, which determines the allowable resolution and bitrate. Valid values: `STANDARD`, `BASIC`.
  const ChannelArgs({
    this.authorized,
    this.latencyMode,
    this.name,
    this.recordingConfigurationArn,
    this.region,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorized': ?authorized,
      'latencyMode': ?latencyMode,
      'name': ?name,
      'recordingConfigurationArn': ?recordingConfigurationArn,
      'region': ?region,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory ChannelArgs.fromMap(Map<String, dynamic> map) {
    return ChannelArgs(
      authorized: (() { final guardedValue = map['authorized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      latencyMode: (() { final guardedValue = map['latencyMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordingConfigurationArn: (() { final guardedValue = map['recordingConfigurationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
