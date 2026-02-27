// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Configuration.
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

  ConfigurationArgs({
    this.authenticationStrategy,
    required this.data,
    this.description,
    required this.engineType,
    required this.engineVersion,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authenticationStrategyValue = authenticationStrategy;
    if (authenticationStrategyValue != null) {
      map['authenticationStrategy'] = authenticationStrategyValue;
    }
    map['data'] = data;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['engineType'] = engineType;
    map['engineVersion'] = engineVersion;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationArgs(
      authenticationStrategy:
          pulumi.Input.asOptionalInput<String>(map['authenticationStrategy']),
      data: pulumi.Input.asInput<String>(map['data']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      engineType: pulumi.Input.asInput<String>(map['engineType']),
      engineVersion: pulumi.Input.asInput<String>(map['engineVersion']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
