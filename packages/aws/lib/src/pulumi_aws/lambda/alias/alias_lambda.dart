import 'package:pulumi/pulumi.dart' as pulumi;
import '../alias_routing_config/alias_routing_config.dart';
import 'alias_lambda_args.dart';

/// Manages an AWS Lambda Alias. Use this resource to create an alias that points to a specific Lambda function version for traffic management and deployment strategies.
///
/// For information about Lambda and how to use it, see [What is AWS Lambda?](http://docs.aws.amazon.com/lambda/latest/dg/welcome.html). For information about function aliases, see [CreateAlias](http://docs.aws.amazon.com/lambda/latest/dg/API_CreateAlias.html) and [AliasRoutingConfiguration](https://docs.aws.amazon.com/lambda/latest/dg/API_AliasRoutingConfiguration.html) in the API docs.
///
/// ## Example Usage
///
/// ### Basic Alias
///
///
///
/// ### Alias with Traffic Splitting
///
///
///
/// ### Blue-Green Deployment Alias
///
///
///
/// ### Development Alias
///
///
///
/// ## Import
///
/// For backwards compatibility, the following legacy `pulumi import` command is also supported:
///
/// ```sh
/// $ pulumi import aws:lambda/alias:Alias example example/production
/// ```
class AliasLambda extends pulumi.CustomResource {
  /// ARN identifying your Lambda function alias.
  late final pulumi.Output<String> arn;

  /// Description of the alias.
  late final pulumi.Output<String?> description;

  /// Name or ARN of the Lambda function.
  late final pulumi.Output<String> functionName;

  /// Lambda function version for which you are creating the alias. Pattern: `(\$LATEST|[0-9]+)`.
  late final pulumi.Output<String> functionVersion;

  /// ARN to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  late final pulumi.Output<String> invokeArn;

  /// Name for the alias. Pattern: `(?!^[0-9]+$)([a-zA-Z0-9-_]+)`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Lambda alias' route configuration settings. See below.
  late final pulumi.Output<AliasRoutingConfig?> routingConfig;

  AliasLambda(
    String name, {
    AliasLambdaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/alias:Alias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.functionName = registerOutput<String>('functionName');
    this.functionVersion = registerOutput<String>('functionVersion');
    this.invokeArn = registerOutput<String>('invokeArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.routingConfig = registerOutput<AliasRoutingConfig?>('routingConfig');
  }
}
