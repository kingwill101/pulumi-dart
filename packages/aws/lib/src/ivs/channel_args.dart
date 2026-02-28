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
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Channel type, which determines the allowable resolution and bitrate. Valid values: `STANDARD`, `BASIC`.
  final pulumi.Input<String>? type;

  /// Creates a new [ChannelArgs].
  /// [authorized] If `true`, channel is private (enabled for playback authorization).
  /// [latencyMode] Channel latency mode. Valid values: `NORMAL`, `LOW`.
  /// [name] Channel name.
  /// [recordingConfigurationArn] Recording configuration ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Channel type, which determines the allowable resolution and bitrate. Valid values: `STANDARD`, `BASIC`.
  ChannelArgs({
    bool? authorized,
    String? latencyMode,
    String? name,
    String? recordingConfigurationArn,
    String? region,
    Map<String, String>? tags,
    String? type,
  }) :
      authorized = pulumi.Input.asOptionalInput<bool>(authorized),
      latencyMode = pulumi.Input.asOptionalInput<String>(latencyMode),
      name = pulumi.Input.asOptionalInput<String>(name),
      recordingConfigurationArn = pulumi.Input.asOptionalInput<String>(recordingConfigurationArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      authorized: map['authorized'] == null ? null : map['authorized'] as bool,
      latencyMode: map['latencyMode'] == null ? null : map['latencyMode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      recordingConfigurationArn: map['recordingConfigurationArn'] == null ? null : map['recordingConfigurationArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

