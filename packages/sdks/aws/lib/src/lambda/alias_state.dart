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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? functionName,
    pulumi.Output<String>? functionVersion,
    pulumi.Output<String>? invokeArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<AliasRoutingConfig>? routingConfig,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      functionName = pulumi.Input.asOptionalInput<String>(functionName),
      functionVersion = pulumi.Input.asOptionalInput<String>(functionVersion),
      invokeArn = pulumi.Input.asOptionalInput<String>(invokeArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      routingConfig = pulumi.Input.asOptionalInput<AliasRoutingConfig>(routingConfig);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      functionName: map['functionName'] == null ? null : pulumi.Output.create<String>(map['functionName'] as String),
      functionVersion: map['functionVersion'] == null ? null : pulumi.Output.create<String>(map['functionVersion'] as String),
      invokeArn: map['invokeArn'] == null ? null : pulumi.Output.create<String>(map['invokeArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routingConfig: map['routingConfig'] == null ? null : pulumi.Output.create<AliasRoutingConfig>(AliasRoutingConfig.fromMap((map['routingConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

