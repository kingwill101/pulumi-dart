import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_recursion_config_args.dart';

/// Manages an AWS Lambda Function Recursion Config. Use this resource to control how Lambda handles recursive function invocations to prevent infinite loops.
///
/// > **Note:** Destruction of this resource will return the `recursive_loop` configuration back to the default value of `Terminate`.
///
/// ## Example Usage
///
/// ### Allow Recursive Invocations
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Lambda function that may need to call itself
/// const example = new aws.lambda.Function("example", {
///     code: new pulumi.asset.FileArchive("function.zip"),
///     name: "recursive_processor",
///     role: lambdaRole.arn,
///     handler: "index.handler",
///     runtime: aws.lambda.Runtime.Python3d12,
/// });
/// // Allow the function to invoke itself recursively
/// const exampleFunctionRecursionConfig = new aws.lambda.FunctionRecursionConfig("example", {
///     functionName: example.name,
///     recursiveLoop: "Allow",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Lambda function that may need to call itself
/// example = aws.lambda_.Function("example",
///     code=pulumi.FileArchive("function.zip"),
///     name="recursive_processor",
///     role=lambda_role["arn"],
///     handler="index.handler",
///     runtime=aws.lambda_.Runtime.PYTHON3D12)
/// # Allow the function to invoke itself recursively
/// example_function_recursion_config = aws.lambda_.FunctionRecursionConfig("example",
///     function_name=example.name,
///     recursive_loop="Allow")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Lambda function that may need to call itself
///     var example = new Aws.Lambda.Function("example", new()
///     {
///         Code = new FileArchive("function.zip"),
///         Name = "recursive_processor",
///         Role = lambdaRole.Arn,
///         Handler = "index.handler",
///         Runtime = Aws.Lambda.Runtime.Python3d12,
///     });
///
///     // Allow the function to invoke itself recursively
///     var exampleFunctionRecursionConfig = new Aws.Lambda.FunctionRecursionConfig("example", new()
///     {
///         FunctionName = example.Name,
///         RecursiveLoop = "Allow",
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
/// 		// Lambda function that may need to call itself
/// 		example, err := lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// 			Code:    pulumi.NewFileArchive("function.zip"),
/// 			Name:    pulumi.String("recursive_processor"),
/// 			Role:    pulumi.Any(lambdaRole.Arn),
/// 			Handler: pulumi.String("index.handler"),
/// 			Runtime: pulumi.String(lambda.RuntimePython3d12),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Allow the function to invoke itself recursively
/// 		_, err = lambda.NewFunctionRecursionConfig(ctx, "example", &lambda.FunctionRecursionConfigArgs{
/// 			FunctionName:  example.Name,
/// 			RecursiveLoop: pulumi.String("Allow"),
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
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.lambda.FunctionRecursionConfig;
/// import com.pulumi.aws.lambda.FunctionRecursionConfigArgs;
/// import com.pulumi.asset.FileArchive;
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
///         // Lambda function that may need to call itself
///         var example = new Function("example", FunctionArgs.builder()
///             .code(new FileArchive("function.zip"))
///             .name("recursive_processor")
///             .role(lambdaRole.arn())
///             .handler("index.handler")
///             .runtime("python3.12")
///             .build());
///
///         // Allow the function to invoke itself recursively
///         var exampleFunctionRecursionConfig = new FunctionRecursionConfig("exampleFunctionRecursionConfig", FunctionRecursionConfigArgs.builder()
///             .functionName(example.name())
///             .recursiveLoop("Allow")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Lambda function that may need to call itself
///   example:
///     type: aws:lambda:Function
///     properties:
///       code:
///         fn::FileArchive: function.zip
///       name: recursive_processor
///       role: ${lambdaRole.arn}
///       handler: index.handler
///       runtime: python3.12
///   # Allow the function to invoke itself recursively
///   exampleFunctionRecursionConfig:
///     type: aws:lambda:FunctionRecursionConfig
///     name: example
///     properties:
///       functionName: ${example.name}
///       recursiveLoop: Allow
/// ```
///
///
/// ### Production Safety Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Production function with recursion protection
/// const productionProcessor = new aws.lambda.Function("production_processor", {
///     code: new pulumi.asset.FileArchive("processor.zip"),
///     name: "production-data-processor",
///     role: lambdaRole.arn,
///     handler: "app.handler",
///     runtime: aws.lambda.Runtime.NodeJS20dX,
///     tags: {
///         Environment: "production",
///         Purpose: "data-processing",
///     },
/// });
/// // Prevent infinite loops in production
/// const example = new aws.lambda.FunctionRecursionConfig("example", {
///     functionName: productionProcessor.name,
///     recursiveLoop: "Terminate",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Production function with recursion protection
/// production_processor = aws.lambda_.Function("production_processor",
///     code=pulumi.FileArchive("processor.zip"),
///     name="production-data-processor",
///     role=lambda_role["arn"],
///     handler="app.handler",
///     runtime=aws.lambda_.Runtime.NODE_JS20D_X,
///     tags={
///         "Environment": "production",
///         "Purpose": "data-processing",
///     })
/// # Prevent infinite loops in production
/// example = aws.lambda_.FunctionRecursionConfig("example",
///     function_name=production_processor.name,
///     recursive_loop="Terminate")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Production function with recursion protection
///     var productionProcessor = new Aws.Lambda.Function("production_processor", new()
///     {
///         Code = new FileArchive("processor.zip"),
///         Name = "production-data-processor",
///         Role = lambdaRole.Arn,
///         Handler = "app.handler",
///         Runtime = Aws.Lambda.Runtime.NodeJS20dX,
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Purpose", "data-processing" },
///         },
///     });
///
///     // Prevent infinite loops in production
///     var example = new Aws.Lambda.FunctionRecursionConfig("example", new()
///     {
///         FunctionName = productionProcessor.Name,
///         RecursiveLoop = "Terminate",
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
/// 		// Production function with recursion protection
/// 		productionProcessor, err := lambda.NewFunction(ctx, "production_processor", &lambda.FunctionArgs{
/// 			Code:    pulumi.NewFileArchive("processor.zip"),
/// 			Name:    pulumi.String("production-data-processor"),
/// 			Role:    pulumi.Any(lambdaRole.Arn),
/// 			Handler: pulumi.String("app.handler"),
/// 			Runtime: pulumi.String(lambda.RuntimeNodeJS20dX),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Purpose":     pulumi.String("data-processing"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Prevent infinite loops in production
/// 		_, err = lambda.NewFunctionRecursionConfig(ctx, "example", &lambda.FunctionRecursionConfigArgs{
/// 			FunctionName:  productionProcessor.Name,
/// 			RecursiveLoop: pulumi.String("Terminate"),
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
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.lambda.FunctionRecursionConfig;
/// import com.pulumi.aws.lambda.FunctionRecursionConfigArgs;
/// import com.pulumi.asset.FileArchive;
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
///         // Production function with recursion protection
///         var productionProcessor = new Function("productionProcessor", FunctionArgs.builder()
///             .code(new FileArchive("processor.zip"))
///             .name("production-data-processor")
///             .role(lambdaRole.arn())
///             .handler("app.handler")
///             .runtime("nodejs20.x")
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Purpose", "data-processing")
///             ))
///             .build());
///
///         // Prevent infinite loops in production
///         var example = new FunctionRecursionConfig("example", FunctionRecursionConfigArgs.builder()
///             .functionName(productionProcessor.name())
///             .recursiveLoop("Terminate")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Production function with recursion protection
///   productionProcessor:
///     type: aws:lambda:Function
///     name: production_processor
///     properties:
///       code:
///         fn::FileArchive: processor.zip
///       name: production-data-processor
///       role: ${lambdaRole.arn}
///       handler: app.handler
///       runtime: nodejs20.x
///       tags:
///         Environment: production
///         Purpose: data-processing
///   # Prevent infinite loops in production
///   example:
///     type: aws:lambda:FunctionRecursionConfig
///     properties:
///       functionName: ${productionProcessor.name}
///       recursiveLoop: Terminate
/// ```
///
///
/// ## Import
///
/// For backwards compatibility, the following legacy `pulumi import` command is also supported:
///
/// ```sh
/// $ pulumi import aws:lambda/functionRecursionConfig:FunctionRecursionConfig example recursive_processor
/// ```
class FunctionRecursionConfig extends pulumi.CustomResource {
  /// Name of the Lambda function.
  late final pulumi.Output<String> functionName;

  /// Lambda function recursion configuration. Valid values are `Allow` or `Terminate`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> recursiveLoop;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [FunctionRecursionConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionRecursionConfig]. {@macro pulumi_lambda_function_recursion_config_function_recursion_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionRecursionConfig(
    String name, {
    FunctionRecursionConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/functionRecursionConfig:FunctionRecursionConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.functionName = registerOutput<String>('functionName');
    this.recursiveLoop = registerOutput<String>('recursiveLoop');
    this.region = registerOutput<String>('region');
  }
}
