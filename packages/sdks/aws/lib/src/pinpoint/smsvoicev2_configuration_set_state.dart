// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Smsvoicev2ConfigurationSet resources.
class Smsvoicev2ConfigurationSetState {
  /// ARN of the configuration set.
  final pulumi.Input<String>? arn;
  /// The default message type. Must either be "TRANSACTIONAL" or "PROMOTIONAL"
  final pulumi.Input<String>? defaultMessageType;
  /// The default sender ID to use for this configuration set.
  final pulumi.Input<String>? defaultSenderId;
  /// The name of the configuration set.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [Smsvoicev2ConfigurationSetState].
  /// [arn] ARN of the configuration set.
  /// [defaultMessageType] The default message type. Must either be "TRANSACTIONAL" or "PROMOTIONAL"
  /// [defaultSenderId] The default sender ID to use for this configuration set.
  /// [name] The name of the configuration set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  Smsvoicev2ConfigurationSetState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? defaultMessageType,
    pulumi.Output<String>? defaultSenderId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      defaultMessageType = pulumi.Input.asOptionalInput<String>(defaultMessageType),
      defaultSenderId = pulumi.Input.asOptionalInput<String>(defaultSenderId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'defaultMessageType': ?defaultMessageType,
      'defaultSenderId': ?defaultSenderId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory Smsvoicev2ConfigurationSetState.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2ConfigurationSetState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      defaultMessageType: map['defaultMessageType'] == null ? null : pulumi.Output.create<String>(map['defaultMessageType'] as String),
      defaultSenderId: map['defaultSenderId'] == null ? null : pulumi.Output.create<String>(map['defaultSenderId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

