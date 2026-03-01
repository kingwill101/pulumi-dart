// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mq_configuration_configuration_args_doc}
/// The set of arguments for Configuration.
/// {@endtemplate}
/// {@macro pulumi_mq_configuration_configuration_args_doc}
class ConfigurationArgs {
  /// Authentication strategy associated with the configuration. Valid values are `simple` and `ldap`. `ldap` is not supported for RabbitMQ engine type.
  final pulumi.Input<String>? authenticationStrategy;
  /// Broker configuration in XML format for ActiveMQ or Cuttlefish format for RabbitMQ. See [AWS documentation](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/amazon-mq-broker-configuration-parameters.html) for supported parameters and format of the XML.
  final pulumi.Input<String> data;
  /// Description of the configuration.
  final pulumi.Input<String>? description;
  /// Type of broker engine. Valid values are `ActiveMQ` and `RabbitMQ`.
  final pulumi.Input<String> engineType;
  /// Version of the broker engine.
  final pulumi.Input<String> engineVersion;
  /// Name of the configuration.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConfigurationArgs].
  /// [authenticationStrategy] Authentication strategy associated with the configuration. Valid values are `simple` and `ldap`. `ldap` is not supported for RabbitMQ engine type.
  /// [data] Broker configuration in XML format for ActiveMQ or Cuttlefish format for RabbitMQ. See [AWS documentation](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/amazon-mq-broker-configuration-parameters.html) for supported parameters and format of the XML.
  /// [description] Description of the configuration.
  /// [engineType] Type of broker engine. Valid values are `ActiveMQ` and `RabbitMQ`.
  /// [engineVersion] Version of the broker engine.
  /// [name] Name of the configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ConfigurationArgs({
    pulumi.Output<String>? authenticationStrategy,
    required pulumi.Output<String> data,
    pulumi.Output<String>? description,
    required pulumi.Output<String> engineType,
    required pulumi.Output<String> engineVersion,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      authenticationStrategy = pulumi.Input.asOptionalInput<String>(authenticationStrategy),
      data = pulumi.Input.asInput<String>(data),
      description = pulumi.Input.asOptionalInput<String>(description),
      engineType = pulumi.Input.asInput<String>(engineType),
      engineVersion = pulumi.Input.asInput<String>(engineVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationStrategy': ?authenticationStrategy,
      'data': data,
      'description': ?description,
      'engineType': engineType,
      'engineVersion': engineVersion,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationArgs(
      authenticationStrategy: map['authenticationStrategy'] == null ? null : pulumi.Output.create<String>(map['authenticationStrategy'] as String),
      data: pulumi.Output.create<String>(map['data'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      engineType: pulumi.Output.create<String>(map['engineType'] as String),
      engineVersion: pulumi.Output.create<String>(map['engineVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

