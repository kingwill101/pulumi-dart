import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorizer_args.dart';
import 'authorizer_jwt_configuration.dart';

/// Manages an Amazon API Gateway Version 2 authorizer.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api.html).
///
/// ## Example Usage
///
/// ### Basic WebSocket API
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.Authorizer("example", {
///     apiId: exampleAwsApigatewayv2Api.id,
///     authorizerType: "REQUEST",
///     authorizerUri: exampleAwsLambdaFunction.invokeArn,
///     identitySources: ["route.request.header.Auth"],
///     name: "example-authorizer",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Authorizer("example",
///     api_id=example_aws_apigatewayv2_api["id"],
///     authorizer_type="REQUEST",
///     authorizer_uri=example_aws_lambda_function["invokeArn"],
///     identity_sources=["route.request.header.Auth"],
///     name="example-authorizer")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ApiGatewayV2.Authorizer("example", new()
///     {
///         ApiId = exampleAwsApigatewayv2Api.Id,
///         AuthorizerType = "REQUEST",
///         AuthorizerUri = exampleAwsLambdaFunction.InvokeArn,
///         IdentitySources = new[]
///         {
///             "route.request.header.Auth",
///         },
///         Name = "example-authorizer",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigatewayv2.NewAuthorizer(ctx, "example", &apigatewayv2.AuthorizerArgs{
/// 			ApiId:          pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// 			AuthorizerType: pulumi.String("REQUEST"),
/// 			AuthorizerUri:  pulumi.Any(exampleAwsLambdaFunction.InvokeArn),
/// 			IdentitySources: pulumi.StringArray{
/// 				pulumi.String("route.request.header.Auth"),
/// 			},
/// 			Name: pulumi.String("example-authorizer"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Authorizer("example", AuthorizerArgs.builder()
///             .apiId(exampleAwsApigatewayv2Api.id())
///             .authorizerType("REQUEST")
///             .authorizerUri(exampleAwsLambdaFunction.invokeArn())
///             .identitySources("route.request.header.Auth")
///             .name("example-authorizer")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigatewayv2:Authorizer
///     properties:
///       apiId: ${exampleAwsApigatewayv2Api.id}
///       authorizerType: REQUEST
///       authorizerUri: ${exampleAwsLambdaFunction.invokeArn}
///       identitySources:
///         - route.request.header.Auth
///       name: example-authorizer
/// ```
///
///
/// ### Basic HTTP API
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.Authorizer("example", {
///     apiId: exampleAwsApigatewayv2Api.id,
///     authorizerType: "REQUEST",
///     authorizerUri: exampleAwsLambdaFunction.invokeArn,
///     identitySources: ["$request.header.Authorization"],
///     name: "example-authorizer",
///     authorizerPayloadFormatVersion: "2.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Authorizer("example",
///     api_id=example_aws_apigatewayv2_api["id"],
///     authorizer_type="REQUEST",
///     authorizer_uri=example_aws_lambda_function["invokeArn"],
///     identity_sources=["$request.header.Authorization"],
///     name="example-authorizer",
///     authorizer_payload_format_version="2.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ApiGatewayV2.Authorizer("example", new()
///     {
///         ApiId = exampleAwsApigatewayv2Api.Id,
///         AuthorizerType = "REQUEST",
///         AuthorizerUri = exampleAwsLambdaFunction.InvokeArn,
///         IdentitySources = new[]
///         {
///             "$request.header.Authorization",
///         },
///         Name = "example-authorizer",
///         AuthorizerPayloadFormatVersion = "2.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigatewayv2.NewAuthorizer(ctx, "example", &apigatewayv2.AuthorizerArgs{
/// 			ApiId:          pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// 			AuthorizerType: pulumi.String("REQUEST"),
/// 			AuthorizerUri:  pulumi.Any(exampleAwsLambdaFunction.InvokeArn),
/// 			IdentitySources: pulumi.StringArray{
/// 				pulumi.String("$request.header.Authorization"),
/// 			},
/// 			Name:                           pulumi.String("example-authorizer"),
/// 			AuthorizerPayloadFormatVersion: pulumi.String("2.0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Authorizer("example", AuthorizerArgs.builder()
///             .apiId(exampleAwsApigatewayv2Api.id())
///             .authorizerType("REQUEST")
///             .authorizerUri(exampleAwsLambdaFunction.invokeArn())
///             .identitySources("$request.header.Authorization")
///             .name("example-authorizer")
///             .authorizerPayloadFormatVersion("2.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigatewayv2:Authorizer
///     properties:
///       apiId: ${exampleAwsApigatewayv2Api.id}
///       authorizerType: REQUEST
///       authorizerUri: ${exampleAwsLambdaFunction.invokeArn}
///       identitySources:
///         - $request.header.Authorization
///       name: example-authorizer
///       authorizerPayloadFormatVersion: '2.0'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.Authorizer` using the API identifier and authorizer identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/authorizer:Authorizer example aabbccddee/1122334
/// ```
class Authorizer extends pulumi.CustomResource {
  /// API identifier.
  late final pulumi.Output<String> apiId;
  /// Required credentials as an IAM role for API Gateway to invoke the authorizer.
  /// Supported only for `REQUEST` authorizers.
  late final pulumi.Output<String?> authorizerCredentialsArn;
  /// Format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers.
  /// Valid values: `1.0`, `2.0`.
  late final pulumi.Output<String?> authorizerPayloadFormatVersion;
  /// Time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled.
  /// If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Defaults to `300`.
  /// Supported only for HTTP API Lambda authorizers.
  late final pulumi.Output<int> authorizerResultTtlInSeconds;
  /// Authorizer type. Valid values: `JWT`, `REQUEST`.
  /// Specify `REQUEST` for a Lambda function using incoming request parameters.
  /// For HTTP APIs, specify `JWT` to use JSON Web Tokens.
  late final pulumi.Output<String> authorizerType;
  /// Authorizer's Uniform Resource Identifier (URI).
  /// For `REQUEST` authorizers this must be a well-formed Lambda function URI, such as the `invoke_arn` attribute of the `aws.lambda.Function` resource.
  /// Supported only for `REQUEST` authorizers. Must be between 1 and 2048 characters in length.
  late final pulumi.Output<String?> authorizerUri;
  /// Whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy.
  /// Supported only for HTTP APIs.
  late final pulumi.Output<bool?> enableSimpleResponses;
  /// Identity sources for which authorization is requested.
  /// For `REQUEST` authorizers the value is a list of one or more mapping expressions of the specified request parameters.
  /// For `JWT` authorizers the single entry specifies where to extract the JSON Web Token (JWT) from inbound requests.
  late final pulumi.Output<List<String>?> identitySources;
  /// Configuration of a JWT authorizer. Required for the `JWT` authorizer type.
  /// Supported only for HTTP APIs.
  late final pulumi.Output<AuthorizerJwtConfiguration?> jwtConfiguration;
  /// Name of the authorizer. Must be between 1 and 128 characters in length.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [Authorizer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Authorizer]. {@macro pulumi_apigatewayv2_authorizer_authorizer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Authorizer(
    String name, {
    AuthorizerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/authorizer:Authorizer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.authorizerCredentialsArn = registerOutput<String?>('authorizerCredentialsArn');
    this.authorizerPayloadFormatVersion = registerOutput<String?>('authorizerPayloadFormatVersion');
    this.authorizerResultTtlInSeconds = registerOutput<int>('authorizerResultTtlInSeconds');
    this.authorizerType = registerOutput<String>('authorizerType');
    this.authorizerUri = registerOutput<String?>('authorizerUri');
    this.enableSimpleResponses = registerOutput<bool?>('enableSimpleResponses');
    this.identitySources = registerOutput<List<String>?>('identitySources');
    this.jwtConfiguration = registerOutput<AuthorizerJwtConfiguration?>('jwtConfiguration');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
