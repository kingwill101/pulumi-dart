// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VoiceConnector resources.
class VoiceConnectorState {
  /// ARN (Amazon Resource Name) of the Amazon Chime Voice Connector.
  final pulumi.Input<String>? arn;
  /// The AWS Region in which the Amazon Chime Voice Connector is created. Default value: `us-east-1`
  final pulumi.Input<String>? awsRegion;
  /// The name of the Amazon Chime Voice Connector.
  final pulumi.Input<String>? name;
  /// The outbound host name for the Amazon Chime Voice Connector.
  final pulumi.Input<String>? outboundHostName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// When enabled, requires encryption for the Amazon Chime Voice Connector.
  ///
  /// The following arguments are optional:
  final pulumi.Input<bool>? requireEncryption;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [VoiceConnectorState].
  /// [arn] ARN (Amazon Resource Name) of the Amazon Chime Voice Connector.
  /// [awsRegion] The AWS Region in which the Amazon Chime Voice Connector is created. Default value: `us-east-1`
  /// [name] The name of the Amazon Chime Voice Connector.
  /// [outboundHostName] The outbound host name for the Amazon Chime Voice Connector.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requireEncryption] When enabled, requires encryption for the Amazon Chime Voice Connector.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  VoiceConnectorState({
    this.arn,
    this.awsRegion,
    this.name,
    this.outboundHostName,
    this.region,
    this.requireEncryption,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsRegion': ?awsRegion,
      'name': ?name,
      'outboundHostName': ?outboundHostName,
      'region': ?region,
      'requireEncryption': ?requireEncryption,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory VoiceConnectorState.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      awsRegion: map['awsRegion'] == null ? null : ((map['awsRegion'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      outboundHostName: map['outboundHostName'] == null ? null : ((map['outboundHostName'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      requireEncryption: map['requireEncryption'] == null ? null : ((map['requireEncryption'] as bool).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

