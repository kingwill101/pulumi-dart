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
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? authorized,
    pulumi.Output<String>? ingestEndpoint,
    pulumi.Output<String>? latencyMode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? playbackUrl,
    pulumi.Output<String>? recordingConfigurationArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      authorized = pulumi.Input.asOptionalInput<bool>(authorized),
      ingestEndpoint = pulumi.Input.asOptionalInput<String>(ingestEndpoint),
      latencyMode = pulumi.Input.asOptionalInput<String>(latencyMode),
      name = pulumi.Input.asOptionalInput<String>(name),
      playbackUrl = pulumi.Input.asOptionalInput<String>(playbackUrl),
      recordingConfigurationArn = pulumi.Input.asOptionalInput<String>(recordingConfigurationArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      authorized: map['authorized'] == null ? null : pulumi.Output.create<bool>(map['authorized'] as bool),
      ingestEndpoint: map['ingestEndpoint'] == null ? null : pulumi.Output.create<String>(map['ingestEndpoint'] as String),
      latencyMode: map['latencyMode'] == null ? null : pulumi.Output.create<String>(map['latencyMode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      playbackUrl: map['playbackUrl'] == null ? null : pulumi.Output.create<String>(map['playbackUrl'] as String),
      recordingConfigurationArn: map['recordingConfigurationArn'] == null ? null : pulumi.Output.create<String>(map['recordingConfigurationArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

