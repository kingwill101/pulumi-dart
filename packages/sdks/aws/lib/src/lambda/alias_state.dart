// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_routing_config.dart';

/// Input properties used for looking up and filtering Alias resources.
class AliasState {
  /// ARN identifying your Lambda function alias.
  final pulumi.Input<String>? arn;
  /// Description of the alias.
  final pulumi.Input<String>? description;
  /// Name or ARN of the Lambda function.
  final pulumi.Input<String>? functionName;
  /// Lambda function version for which you are creating the alias. Pattern: `(\$LATEST|[0-9]+)`.
  final pulumi.Input<String>? functionVersion;
  /// ARN to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  final pulumi.Input<String>? invokeArn;
  /// Name for the alias. Pattern: `(?!^[0-9]+$)([a-zA-Z0-9-_]+)`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Lambda alias' route configuration settings. See below.
  final pulumi.Input<AliasRoutingConfig>? routingConfig;

  /// Creates a new [AliasState].
  /// [arn] ARN identifying your Lambda function alias.
  /// [description] Description of the alias.
  /// [functionName] Name or ARN of the Lambda function.
  /// [functionVersion] Lambda function version for which you are creating the alias. Pattern: `(\$LATEST|[0-9]+)`.
  /// [invokeArn] ARN to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  /// [name] Name for the alias. Pattern: `(?!^[0-9]+$)([a-zA-Z0-9-_]+)`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingConfig] Lambda alias' route configuration settings. See below.
  AliasState({
    this.arn,
    this.description,
    this.functionName,
    this.functionVersion,
    this.invokeArn,
    this.name,
    this.region,
    this.routingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'functionName': ?functionName,
      'functionVersion': ?functionVersion,
      'invokeArn': ?invokeArn,
      'name': ?name,
      'region': ?region,
      'routingConfig': ?pulumi.Input.mapOptionalInputValue<AliasRoutingConfig, Map<String, dynamic>>(routingConfig, (value) => value.toMap()),
    };
  }

  factory AliasState.fromMap(Map<String, dynamic> map) {
    return AliasState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      functionName: map['functionName'] == null ? null : ((map['functionName'] as String).input()).input(),
      functionVersion: map['functionVersion'] == null ? null : ((map['functionVersion'] as String).input()).input(),
      invokeArn: map['invokeArn'] == null ? null : ((map['invokeArn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      routingConfig: map['routingConfig'] == null ? null : ((AliasRoutingConfig.fromMap((map['routingConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

