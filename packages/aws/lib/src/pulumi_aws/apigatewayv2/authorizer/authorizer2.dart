import 'package:pulumi/pulumi.dart';
import '../authorizer_jwt_configuration/authorizer_jwt_configuration.dart';
import 'authorizer_args2.dart';

/// Manages an Amazon API Gateway Version 2 authorizer.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api.html).
///
/// ## Example Usage
///
/// ### Basic WebSocket API
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.Authorizer("example", {
/// apiId: exampleAwsApigatewayv2Api.id,
/// authorizerType: "REQUEST",
/// authorizerUri: exampleAwsLambdaFunction.invokeArn,
/// identitySources: ["route.request.header.Auth"],
/// name: "example-authorizer",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Authorizer("example",
/// api_id=example_aws_apigatewayv2_api["id"],
/// authorizer_type="REQUEST",
/// authorizer_uri=example_aws_lambda_function["invokeArn"],
/// identity_sources=["route.request.header.Auth"],
/// name="example-authorizer")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ApiGatewayV2.Authorizer("example", new()
/// {
/// ApiId = exampleAwsApigatewayv2Api.Id,
/// AuthorizerType = "REQUEST",
/// AuthorizerUri = exampleAwsLambdaFunction.InvokeArn,
/// IdentitySources = new[]
/// {
/// "route.request.header.Auth",
/// },
/// Name = "example-authorizer",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigatewayv2.NewAuthorizer(ctx, "example", &apigatewayv2.AuthorizerArgs{
/// ApiId:          pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// AuthorizerType: pulumi.String("REQUEST"),
/// AuthorizerUri:  pulumi.Any(exampleAwsLambdaFunction.InvokeArn),
/// IdentitySources: pulumi.StringArray{
/// pulumi.String("route.request.header.Auth"),
/// },
/// Name: pulumi.String("example-authorizer"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigatewayv2.Authorizer;
/// import com.pulumi.aws.apigatewayv2.AuthorizerArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Authorizer("example", AuthorizerArgs.builder()
/// .apiId(exampleAwsApigatewayv2Api.id())
/// .authorizerType("REQUEST")
/// .authorizerUri(exampleAwsLambdaFunction.invokeArn())
/// .identitySources("route.request.header.Auth")
/// .name("example-authorizer")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apigatewayv2:Authorizer
/// properties:
/// apiId: ${exampleAwsApigatewayv2Api.id}
/// authorizerType: REQUEST
/// authorizerUri: ${exampleAwsLambdaFunction.invokeArn}
/// identitySources:
/// - route.request.header.Auth
/// name: example-authorizer
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Basic HTTP API
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.Authorizer("example", {
/// apiId: exampleAwsApigatewayv2Api.id,
/// authorizerType: "REQUEST",
/// authorizerUri: exampleAwsLambdaFunction.invokeArn,
/// identitySources: ["$request.header.Authorization"],
/// name: "example-authorizer",
/// authorizerPayloadFormatVersion: "2.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Authorizer("example",
/// api_id=example_aws_apigatewayv2_api["id"],
/// authorizer_type="REQUEST",
/// authorizer_uri=example_aws_lambda_function["invokeArn"],
/// identity_sources=["$request.header.Authorization"],
/// name="example-authorizer",
/// authorizer_payload_format_version="2.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ApiGatewayV2.Authorizer("example", new()
/// {
/// ApiId = exampleAwsApigatewayv2Api.Id,
/// AuthorizerType = "REQUEST",
/// AuthorizerUri = exampleAwsLambdaFunction.InvokeArn,
/// IdentitySources = new[]
/// {
/// "$request.header.Authorization",
/// },
/// Name = "example-authorizer",
/// AuthorizerPayloadFormatVersion = "2.0",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigatewayv2.NewAuthorizer(ctx, "example", &apigatewayv2.AuthorizerArgs{
/// ApiId:          pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// AuthorizerType: pulumi.String("REQUEST"),
/// AuthorizerUri:  pulumi.Any(exampleAwsLambdaFunction.InvokeArn),
/// IdentitySources: pulumi.StringArray{
/// pulumi.String("$request.header.Authorization"),
/// },
/// Name:                           pulumi.String("example-authorizer"),
/// AuthorizerPayloadFormatVersion: pulumi.String("2.0"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigatewayv2.Authorizer;
/// import com.pulumi.aws.apigatewayv2.AuthorizerArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Authorizer("example", AuthorizerArgs.builder()
/// .apiId(exampleAwsApigatewayv2Api.id())
/// .authorizerType("REQUEST")
/// .authorizerUri(exampleAwsLambdaFunction.invokeArn())
/// .identitySources("$request.header.Authorization")
/// .name("example-authorizer")
/// .authorizerPayloadFormatVersion("2.0")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apigatewayv2:Authorizer
/// properties:
/// apiId: ${exampleAwsApigatewayv2Api.id}
/// authorizerType: REQUEST
/// authorizerUri: ${exampleAwsLambdaFunction.invokeArn}
/// identitySources:
/// - $request.header.Authorization
/// name: example-authorizer
/// authorizerPayloadFormatVersion: '2.0'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.apigatewayv2.Authorizer`" pulumi-lang-dotnet="`aws.apigatewayv2.Authorizer`" pulumi-lang-go="`apigatewayv2.Authorizer`" pulumi-lang-python="`apigatewayv2.Authorizer`" pulumi-lang-yaml="`aws.apigatewayv2.Authorizer`" pulumi-lang-java="`aws.apigatewayv2.Authorizer`">`aws.apigatewayv2.Authorizer`</span> using the API identifier and authorizer identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/authorizer:Authorizer example aabbccddee/1122334
/// ```
class Authorizer2 extends CustomResource {
  /// API identifier.
  late final Output<String> apiId;

  /// Required credentials as an IAM role for API Gateway to invoke the authorizer.
  /// Supported only for `REQUEST` authorizers.
  late final Output<String?> authorizerCredentialsArn;

  /// Format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers.
  /// Valid values: `1.0`, `2.0`.
  late final Output<String?> authorizerPayloadFormatVersion;

  /// Time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled.
  /// If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Defaults to <span pulumi-lang-nodejs="`300`" pulumi-lang-dotnet="`300`" pulumi-lang-go="`300`" pulumi-lang-python="`300`" pulumi-lang-yaml="`300`" pulumi-lang-java="`300`">`300`</span>.
  /// Supported only for HTTP API Lambda authorizers.
  late final Output<int> authorizerResultTtlInSeconds;

  /// Authorizer type. Valid values: `JWT`, `REQUEST`.
  /// Specify `REQUEST` for a Lambda function using incoming request parameters.
  /// For HTTP APIs, specify `JWT` to use JSON Web Tokens.
  late final Output<String> authorizerType;

  /// Authorizer's Uniform Resource Identifier (URI).
  /// For `REQUEST` authorizers this must be a well-formed Lambda function URI, such as the <span pulumi-lang-nodejs="`invokeArn`" pulumi-lang-dotnet="`InvokeArn`" pulumi-lang-go="`invokeArn`" pulumi-lang-python="`invoke_arn`" pulumi-lang-yaml="`invokeArn`" pulumi-lang-java="`invokeArn`">`invoke_arn`</span> attribute of the <span pulumi-lang-nodejs="`aws.lambda.Function`" pulumi-lang-dotnet="`aws.lambda.Function`" pulumi-lang-go="`lambda.Function`" pulumi-lang-python="`lambda.Function`" pulumi-lang-yaml="`aws.lambda.Function`" pulumi-lang-java="`aws.lambda.Function`">`aws.lambda.Function`</span> resource.
  /// Supported only for `REQUEST` authorizers. Must be between 1 and 2048 characters in length.
  late final Output<String?> authorizerUri;

  /// Whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy.
  /// Supported only for HTTP APIs.
  late final Output<bool?> enableSimpleResponses;

  /// Identity sources for which authorization is requested.
  /// For `REQUEST` authorizers the value is a list of one or more mapping expressions of the specified request parameters.
  /// For `JWT` authorizers the single entry specifies where to extract the JSON Web Token (JWT) from inbound requests.
  late final Output<List<String>?> identitySources;

  /// Configuration of a JWT authorizer. Required for the `JWT` authorizer type.
  /// Supported only for HTTP APIs.
  late final Output<AuthorizerJwtConfiguration?> jwtConfiguration;

  /// Name of the authorizer. Must be between 1 and 128 characters in length.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Authorizer2(
    String name, {
    AuthorizerArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/authorizer:Authorizer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiId = Output.createUnknown<String>();
    this.authorizerCredentialsArn = Output.createUnknown<String?>();
    this.authorizerPayloadFormatVersion = Output.createUnknown<String?>();
    this.authorizerResultTtlInSeconds = Output.createUnknown<int>();
    this.authorizerType = Output.createUnknown<String>();
    this.authorizerUri = Output.createUnknown<String?>();
    this.enableSimpleResponses = Output.createUnknown<bool?>();
    this.identitySources = Output.createUnknown<List<String>?>();
    this.jwtConfiguration = Output.createUnknown<AuthorizerJwtConfiguration?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
