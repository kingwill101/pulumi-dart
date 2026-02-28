import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_url_args.dart';
import 'function_url_cors.dart';

/// Manages a Lambda function URL. Creates a dedicated HTTP(S) endpoint for a Lambda function to enable direct invocation via HTTP requests.
///
/// > **NOTE:** When [`authorization_type` is `"NONE"`](https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html#urls-auth-none) the `lambda:InvokeFunctionUrl` permission allowing a public endpoint and `lambda:InvokeFunction` permission with the `InvokedViaFunctionUrl` flag set to `true` are automatically added to the Lambda function on creation. These policies are NOT removed from AWS when the resource is destroyed.
///
/// ## Example Usage
///
/// ### Basic Function URL with No Authentication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.FunctionUrl("example", {
///     functionName: exampleAwsLambdaFunction.functionName,
///     authorizationType: "NONE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.FunctionUrl("example",
///     function_name=example_aws_lambda_function["functionName"],
///     authorization_type="NONE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.FunctionUrl("example", new()
///     {
///         FunctionName = exampleAwsLambdaFunction.FunctionName,
///         AuthorizationType = "NONE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambda.NewFunctionUrl(ctx, "example", &lambda.FunctionUrlArgs{
/// 			FunctionName:      pulumi.Any(exampleAwsLambdaFunction.FunctionName),
/// 			AuthorizationType: pulumi.String("NONE"),
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
/// import com.pulumi.aws.lambda.FunctionUrl;
/// import com.pulumi.aws.lambda.FunctionUrlArgs;
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
///         var example = new FunctionUrl("example", FunctionUrlArgs.builder()
///             .functionName(exampleAwsLambdaFunction.functionName())
///             .authorizationType("NONE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:FunctionUrl
///     properties:
///       functionName: ${exampleAwsLambdaFunction.functionName}
///       authorizationType: NONE
/// ```
///
///
/// ### Function URL with IAM Authentication and CORS Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.FunctionUrl("example", {
///     functionName: exampleAwsLambdaFunction.functionName,
///     qualifier: "my_alias",
///     authorizationType: "AWS_IAM",
///     invokeMode: "RESPONSE_STREAM",
///     cors: {
///         allowCredentials: true,
///         allowOrigins: ["https://example.com"],
///         allowMethods: [
///             "GET",
///             "POST",
///         ],
///         allowHeaders: [
///             "date",
///             "keep-alive",
///         ],
///         exposeHeaders: [
///             "keep-alive",
///             "date",
///         ],
///         maxAge: 86400,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.FunctionUrl("example",
///     function_name=example_aws_lambda_function["functionName"],
///     qualifier="my_alias",
///     authorization_type="AWS_IAM",
///     invoke_mode="RESPONSE_STREAM",
///     cors={
///         "allow_credentials": True,
///         "allow_origins": ["https://example.com"],
///         "allow_methods": [
///             "GET",
///             "POST",
///         ],
///         "allow_headers": [
///             "date",
///             "keep-alive",
///         ],
///         "expose_headers": [
///             "keep-alive",
///             "date",
///         ],
///         "max_age": 86400,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.FunctionUrl("example", new()
///     {
///         FunctionName = exampleAwsLambdaFunction.FunctionName,
///         Qualifier = "my_alias",
///         AuthorizationType = "AWS_IAM",
///         InvokeMode = "RESPONSE_STREAM",
///         Cors = new Aws.Lambda.Inputs.FunctionUrlCorsArgs
///         {
///             AllowCredentials = true,
///             AllowOrigins = new[]
///             {
///                 "https://example.com",
///             },
///             AllowMethods = new[]
///             {
///                 "GET",
///                 "POST",
///             },
///             AllowHeaders = new[]
///             {
///                 "date",
///                 "keep-alive",
///             },
///             ExposeHeaders = new[]
///             {
///                 "keep-alive",
///                 "date",
///             },
///             MaxAge = 86400,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambda.NewFunctionUrl(ctx, "example", &lambda.FunctionUrlArgs{
/// 			FunctionName:      pulumi.Any(exampleAwsLambdaFunction.FunctionName),
/// 			Qualifier:         pulumi.String("my_alias"),
/// 			AuthorizationType: pulumi.String("AWS_IAM"),
/// 			InvokeMode:        pulumi.String("RESPONSE_STREAM"),
/// 			Cors: &lambda.FunctionUrlCorsArgs{
/// 				AllowCredentials: pulumi.Bool(true),
/// 				AllowOrigins: pulumi.StringArray{
/// 					pulumi.String("https://example.com"),
/// 				},
/// 				AllowMethods: pulumi.StringArray{
/// 					pulumi.String("GET"),
/// 					pulumi.String("POST"),
/// 				},
/// 				AllowHeaders: pulumi.StringArray{
/// 					pulumi.String("date"),
/// 					pulumi.String("keep-alive"),
/// 				},
/// 				ExposeHeaders: pulumi.StringArray{
/// 					pulumi.String("keep-alive"),
/// 					pulumi.String("date"),
/// 				},
/// 				MaxAge: pulumi.Int(86400),
/// 			},
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
/// import com.pulumi.aws.lambda.FunctionUrl;
/// import com.pulumi.aws.lambda.FunctionUrlArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionUrlCorsArgs;
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
///         var example = new FunctionUrl("example", FunctionUrlArgs.builder()
///             .functionName(exampleAwsLambdaFunction.functionName())
///             .qualifier("my_alias")
///             .authorizationType("AWS_IAM")
///             .invokeMode("RESPONSE_STREAM")
///             .cors(FunctionUrlCorsArgs.builder()
///                 .allowCredentials(true)
///                 .allowOrigins("https://example.com")
///                 .allowMethods(
///                     "GET",
///                     "POST")
///                 .allowHeaders(
///                     "date",
///                     "keep-alive")
///                 .exposeHeaders(
///                     "keep-alive",
///                     "date")
///                 .maxAge(86400)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:FunctionUrl
///     properties:
///       functionName: ${exampleAwsLambdaFunction.functionName}
///       qualifier: my_alias
///       authorizationType: AWS_IAM
///       invokeMode: RESPONSE_STREAM
///       cors:
///         allowCredentials: true
///         allowOrigins:
///           - https://example.com
///         allowMethods:
///           - GET
///           - POST
///         allowHeaders:
///           - date
///           - keep-alive
///         exposeHeaders:
///           - keep-alive
///           - date
///         maxAge: 86400
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Lambda function URLs using the `function_name` or `function_name/qualifier`. For example:
///
/// ```sh
/// $ pulumi import aws:lambda/functionUrl:FunctionUrl example example
/// ```
class FunctionUrl extends pulumi.CustomResource {
  /// Type of authentication that the function URL uses. Valid values are `AWS_IAM` and `NONE`.
  late final pulumi.Output<String> authorizationType;

  /// Cross-origin resource sharing (CORS) settings for the function URL. See below.
  late final pulumi.Output<FunctionUrlCors?> cors;

  /// ARN of the Lambda function.
  late final pulumi.Output<String> functionArn;

  /// Name or ARN of the Lambda function.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> functionName;

  /// HTTP URL endpoint for the function in the format `https://<url_id>.lambda-url.<region>.on.aws/`.
  late final pulumi.Output<String> functionUrl;

  /// How the Lambda function responds to an invocation. Valid values are `BUFFERED` (default) and `RESPONSE_STREAM`.
  late final pulumi.Output<String?> invokeMode;

  /// Alias name or `$LATEST`.
  late final pulumi.Output<String?> qualifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Generated ID for the endpoint.
  late final pulumi.Output<String> urlId;

  /// Creates a new [FunctionUrl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionUrl]. {@macro pulumi_lambda_function_url_function_url_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionUrl(
    String name, {
    FunctionUrlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/functionUrl:FunctionUrl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authorizationType = registerOutput<String>('authorizationType');
    this.cors = registerOutput<FunctionUrlCors?>('cors');
    this.functionArn = registerOutput<String>('functionArn');
    this.functionName = registerOutput<String>('functionName');
    this.functionUrl = registerOutput<String>('functionUrl');
    this.invokeMode = registerOutput<String?>('invokeMode');
    this.qualifier = registerOutput<String?>('qualifier');
    this.region = registerOutput<String>('region');
    this.urlId = registerOutput<String>('urlId');
  }
}
