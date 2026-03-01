// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Configuration resources.
class ConfigurationState {
  /// ARN of the configuration.
  final pulumi.Input<String>? arn;
  /// Authentication strategy associated with the configuration. Valid values are `simple` and `ldap`. `ldap` is not supported for RabbitMQ engine type.
  final pulumi.Input<String>? authenticationStrategy;
  /// Broker configuration in XML format for ActiveMQ or Cuttlefish format for RabbitMQ. See [AWS documentation](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/amazon-mq-broker-configuration-parameters.html) for supported parameters and format of the XML.
  final pulumi.Input<String>? data;
  /// Description of the configuration.
  final pulumi.Input<String>? description;
  /// Type of broker engine. Valid values are `ActiveMQ` and `RabbitMQ`.
  final pulumi.Input<String>? engineType;
  /// Version of the broker engine.
  final pulumi.Input<String>? engineVersion;
  /// Latest revision of the configuration.
  final pulumi.Input<int>? latestRevision;
  /// Name of the configuration.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ConfigurationState].
  /// [arn] ARN of the configuration.
  /// [authenticationStrategy] Authentication strategy associated with the configuration. Valid values are `simple` and `ldap`. `ldap` is not supported for RabbitMQ engine type.
  /// [data] Broker configuration in XML format for ActiveMQ or Cuttlefish format for RabbitMQ. See [AWS documentation](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/amazon-mq-broker-configuration-parameters.html) for supported parameters and format of the XML.
  /// [description] Description of the configuration.
  /// [engineType] Type of broker engine. Valid values are `ActiveMQ` and `RabbitMQ`.
  /// [engineVersion] Version of the broker engine.
  /// [latestRevision] Latest revision of the configuration.
  /// [name] Name of the configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ConfigurationState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? authenticationStrategy,
    pulumi.Output<String>? data,
    pulumi.Output<String>? description,
    pulumi.Output<String>? engineType,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<int>? latestRevision,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      authenticationStrategy = pulumi.Input.asOptionalInput<String>(authenticationStrategy),
      data = pulumi.Input.asOptionalInput<String>(data),
      description = pulumi.Input.asOptionalInput<String>(description),
      engineType = pulumi.Input.asOptionalInput<String>(engineType),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      latestRevision = pulumi.Input.asOptionalInput<int>(latestRevision),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authenticationStrategy': ?authenticationStrategy,
      'data': ?data,
      'description': ?description,
      'engineType': ?engineType,
      'engineVersion': ?engineVersion,
      'latestRevision': ?latestRevision,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ConfigurationState.fromMap(Map<String, dynamic> map) {
    return ConfigurationState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      authenticationStrategy: map['authenticationStrategy'] == null ? null : pulumi.Output.create<String>(map['authenticationStrategy'] as String),
      data: map['data'] == null ? null : pulumi.Output.create<String>(map['data'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      engineType: map['engineType'] == null ? null : pulumi.Output.create<String>(map['engineType'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      latestRevision: map['latestRevision'] == null ? null : pulumi.Output.create<int>(map['latestRevision'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

