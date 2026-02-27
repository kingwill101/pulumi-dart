// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Configuration.
class ConfigurationArgs {
  /// Authentication strategy associated with the configuration. Valid values are `simple` and `ldap`. `ldap` is not supported for RabbitMQ engine type.
  final Input<String>? authenticationStrategy;

  /// Broker configuration in XML format for ActiveMQ or Cuttlefish format for RabbitMQ. See [AWS documentation](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/amazon-mq-broker-configuration-parameters.html) for supported parameters and format of the XML.
  final Input<String> data;

  /// Description of the configuration.
  final Input<String>? description;

  /// Type of broker engine. Valid values are `ActiveMQ` and `RabbitMQ`.
  final Input<String> engineType;

  /// Version of the broker engine.
  final Input<String> engineVersion;

  /// Name of the configuration.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
          Input.asOptionalInput<String>(map['authenticationStrategy']),
      data: Input.asInput<String>(map['data']),
      description: Input.asOptionalInput<String>(map['description']),
      engineType: Input.asInput<String>(map['engineType']),
      engineVersion: Input.asInput<String>(map['engineVersion']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
