// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_routing_config.dart';

/// {@template pulumi_lambda_alias_alias_args_doc}
/// The set of arguments for Alias.
/// {@endtemplate}
/// {@macro pulumi_lambda_alias_alias_args_doc}
class AliasArgs {
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

  /// Creates a new [AliasArgs].
  /// [description] Description of the alias.
  /// [functionName] Name or ARN of the Lambda function.
  /// [functionVersion] Lambda function version for which you are creating the alias. Pattern: `(\$LATEST|[0-9]+)`.
  /// [name] Name for the alias. Pattern: `(?!^[0-9]+$)([a-zA-Z0-9-_]+)`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingConfig] Lambda alias' route configuration settings. See below.
  AliasArgs({
    String? description,
    required String functionName,
    required String functionVersion,
    String? name,
    String? region,
    AliasRoutingConfig? routingConfig,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        functionName = pulumi.Input.asInput<String>(functionName),
        functionVersion = pulumi.Input.asInput<String>(functionVersion),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        routingConfig =
            pulumi.Input.asOptionalInput<AliasRoutingConfig>(routingConfig);

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

  factory AliasArgs.fromMap(Map<String, dynamic> map) {
    return AliasArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      functionName: map['functionName'] as String,
      functionVersion: map['functionVersion'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      routingConfig: map['routingConfig'] == null
          ? null
          : AliasRoutingConfig.fromMap(
              (map['routingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
