// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VoiceConnector.
class VoiceConnectorArgs {
  /// The AWS Region in which the Amazon Chime Voice Connector is created. Default value: `us-east-1`
  final pulumi.Input<String>? awsRegion;

  /// The name of the Amazon Chime Voice Connector.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// When enabled, requires encryption for the Amazon Chime Voice Connector.
  ///
  /// The following arguments are optional:
  final pulumi.Input<bool> requireEncryption;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  VoiceConnectorArgs({
    this.awsRegion,
    this.name,
    this.region,
    required this.requireEncryption,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsRegionValue = awsRegion;
    if (awsRegionValue != null) {
      map['awsRegion'] = awsRegionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['requireEncryption'] = requireEncryption;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory VoiceConnectorArgs.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorArgs(
      awsRegion: pulumi.Input.asOptionalInput<String>(map['awsRegion']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      requireEncryption: pulumi.Input.asInput<bool>(map['requireEncryption']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
