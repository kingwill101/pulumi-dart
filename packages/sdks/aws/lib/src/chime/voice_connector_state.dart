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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsRegion,
    pulumi.Output<String>? name,
    pulumi.Output<String>? outboundHostName,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? requireEncryption,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsRegion = pulumi.Input.asOptionalInput<String>(awsRegion),
      name = pulumi.Input.asOptionalInput<String>(name),
      outboundHostName = pulumi.Input.asOptionalInput<String>(outboundHostName),
      region = pulumi.Input.asOptionalInput<String>(region),
      requireEncryption = pulumi.Input.asOptionalInput<bool>(requireEncryption),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsRegion: map['awsRegion'] == null ? null : pulumi.Output.create<String>(map['awsRegion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outboundHostName: map['outboundHostName'] == null ? null : pulumi.Output.create<String>(map['outboundHostName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      requireEncryption: map['requireEncryption'] == null ? null : pulumi.Output.create<bool>(map['requireEncryption'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

