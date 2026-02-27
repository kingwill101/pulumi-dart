// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Channel.
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

  ChannelArgs({
    this.authorized,
    this.latencyMode,
    this.name,
    this.recordingConfigurationArn,
    this.region,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorizedValue = authorized;
    if (authorizedValue != null) {
      map['authorized'] = authorizedValue;
    }
    final latencyModeValue = latencyMode;
    if (latencyModeValue != null) {
      map['latencyMode'] = latencyModeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final recordingConfigurationArnValue = recordingConfigurationArn;
    if (recordingConfigurationArnValue != null) {
      map['recordingConfigurationArn'] = recordingConfigurationArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ChannelArgs.fromMap(Map<String, dynamic> map) {
    return ChannelArgs(
      authorized: pulumi.Input.asOptionalInput<bool>(map['authorized']),
      latencyMode: pulumi.Input.asOptionalInput<String>(map['latencyMode']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      recordingConfigurationArn: pulumi.Input.asOptionalInput<String>(
          map['recordingConfigurationArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
