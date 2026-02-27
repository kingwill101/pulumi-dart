// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../alias_routing_config/alias_routing_config.dart';

/// The set of arguments for Alias.
class AliasLambdaArgs {
  /// Description of the alias.
  final pulumi.Input<String>? description;

  /// Name or ARN of the Lambda function.
  final pulumi.Input<String> functionName;

  /// Lambda function version for which you are creating the alias. Pattern: `(\$LATEST|[0-9]+)`.
  final pulumi.Input<String> functionVersion;

  /// Name for the alias. Pattern: `(?!^[0-9]+$)([a-zA-Z0-9-_]+)`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Lambda alias' route configuration settings. See below.
  final pulumi.Input<AliasRoutingConfig>? routingConfig;

  AliasLambdaArgs({
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
      map['routingConfig'] = pulumi.Input.mapOptionalInputValue<
          AliasRoutingConfig,
          Map<String, dynamic>>(routingConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory AliasLambdaArgs.fromMap(Map<String, dynamic> map) {
    return AliasLambdaArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      functionName: pulumi.Input.asInput<String>(map['functionName']),
      functionVersion: pulumi.Input.asInput<String>(map['functionVersion']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      routingConfig: pulumi.Input.asOptionalInput<AliasRoutingConfig>(
          map['routingConfig']),
    );
  }
}
