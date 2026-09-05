// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chime_voice_connector_voice_connector_args_doc}
/// The set of arguments for VoiceConnector.
/// {@endtemplate}
/// {@macro pulumi_chime_voice_connector_voice_connector_args_doc}
class VoiceConnectorArgs {
  /// The AWS Region in which the Amazon Chime Voice Connector is created. Default value: `us-east-1`
  final pulumi.Input<String?>? awsRegion;
  /// The name of the Amazon Chime Voice Connector.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// When enabled, requires encryption for the Amazon Chime Voice Connector.
  ///
  /// The following arguments are optional:
  final pulumi.Input<bool> requireEncryption;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [VoiceConnectorArgs].
  /// [awsRegion] The AWS Region in which the Amazon Chime Voice Connector is created. Default value: `us-east-1`
  /// [name] The name of the Amazon Chime Voice Connector.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requireEncryption] When enabled, requires encryption for the Amazon Chime Voice Connector.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const VoiceConnectorArgs({
    this.awsRegion,
    this.name,
    this.region,
    required this.requireEncryption,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegion': ?awsRegion,
      'name': ?name,
      'region': ?region,
      'requireEncryption': requireEncryption,
      'tags': ?tags,
    };
  }

  factory VoiceConnectorArgs.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorArgs(
      awsRegion: (() { final guardedValue = map['awsRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireEncryption: pulumi.Input.fromValue(map['requireEncryption'] as bool),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
