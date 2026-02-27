import 'package:pulumi/pulumi.dart';
import '../alias_routing_config/alias_routing_config.dart';
import 'alias_args3.dart';

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
class Alias3 extends CustomResource {
  /// ARN identifying your Lambda function alias.
  late final Output<String> arn;

  /// Description of the alias.
  late final Output<String?> description;

  /// Name or ARN of the Lambda function.
  late final Output<String> functionName;

  /// Lambda function version for which you are creating the alias. Pattern: `(\$LATEST|[0-9]+)`.
  late final Output<String> functionVersion;

  /// ARN to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  late final Output<String> invokeArn;

  /// Name for the alias. Pattern: `(?!^[0-9]+$)([a-zA-Z0-9-_]+)`.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Lambda alias' route configuration settings. See below.
  late final Output<AliasRoutingConfig?> routingConfig;

  Alias3(
    String name, {
    AliasArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lambda/alias:Alias',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
