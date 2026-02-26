// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../alias_routing_config/alias_routing_config.dart';

/// The set of arguments for Alias.
class AliasArgs3 {
  /// Description of the alias.
  final Input<String>? description;

  /// Name or ARN of the Lambda function.
  final Input<String> functionName;

  /// Lambda function version for which you are creating the alias. Pattern: `(\$LATEST|[0-9]+)`.
  final Input<String> functionVersion;

  /// Name for the alias. Pattern: `(?!^[0-9]+$)([a-zA-Z0-9-_]+)`.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Lambda alias' route configuration settings. See below.
  final Input<AliasRoutingConfig>? routingConfig;

  AliasArgs3({
    this.description,
    required this.functionName,
    required this.functionVersion,
    this.name,
    this.region,
    this.routingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['functionName'] = functionName;
    map['functionVersion'] = functionVersion;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final routingConfigValue = routingConfig;
    if (routingConfigValue != null) {
      map['routingConfig'] =
          Input.mapOptionalInputValue<AliasRoutingConfig, Map<String, dynamic>>(
              routingConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory AliasArgs3.fromMap(Map<String, dynamic> map) {
    return AliasArgs3(
      description: Input.asOptionalInput<String>(map['description']),
      functionName: Input.asInput<String>(map['functionName']),
      functionVersion: Input.asInput<String>(map['functionVersion']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      routingConfig:
          Input.asOptionalInput<AliasRoutingConfig>(map['routingConfig']),
    );
  }
}
