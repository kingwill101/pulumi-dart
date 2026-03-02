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
    this.description,
    required this.functionName,
    required this.functionVersion,
    this.name,
    this.region,
    this.routingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'functionName': functionName,
      'functionVersion': functionVersion,
      'name': ?name,
      'region': ?region,
      'routingConfig': ?pulumi.Input.mapOptionalInputValue<AliasRoutingConfig, Map<String, dynamic>>(routingConfig, (value) => value.toMap()),
    };
  }

  factory AliasArgs.fromMap(Map<String, dynamic> map) {
    return AliasArgs(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      functionName: (map['functionName'] as String).input(),
      functionVersion: (map['functionVersion'] as String).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      routingConfig: map['routingConfig'] == null ? null : ((AliasRoutingConfig.fromMap((map['routingConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

