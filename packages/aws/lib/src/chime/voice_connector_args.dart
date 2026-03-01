// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chime_voice_connector_voice_connector_args_doc}
/// The set of arguments for VoiceConnector.
/// {@endtemplate}
/// {@macro pulumi_chime_voice_connector_voice_connector_args_doc}
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

  /// Creates a new [VoiceConnectorArgs].
  /// [awsRegion] The AWS Region in which the Amazon Chime Voice Connector is created. Default value: `us-east-1`
  /// [name] The name of the Amazon Chime Voice Connector.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requireEncryption] When enabled, requires encryption for the Amazon Chime Voice Connector.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  VoiceConnectorArgs({
    String? awsRegion,
    String? name,
    String? region,
    required bool requireEncryption,
    Map<String, String>? tags,
  }) : awsRegion = pulumi.Input.asOptionalInput<String>(awsRegion),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       requireEncryption = pulumi.Input.asInput<bool>(requireEncryption),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      requireEncryption: map['requireEncryption'] as bool,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
