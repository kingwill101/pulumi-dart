import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_args.dart';
import 'alias_routing_config.dart';

/// Manages an AWS Lambda Alias. Use this resource to create an alias that points to a specific Lambda function version for traffic management and deployment strategies.
///
/// For information about Lambda and how to use it, see [What is AWS Lambda?](http://docs.aws.amazon.com/lambda/latest/dg/welcome.html). For information about function aliases, see [CreateAlias](http://docs.aws.amazon.com/lambda/latest/dg/API_CreateAlias.html) and [AliasRoutingConfiguration](https://docs.aws.amazon.com/lambda/latest/dg/API_AliasRoutingConfiguration.html) in the API docs.
///
/// ## Example Usage
///
/// ### Basic Alias
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.Alias("example", {
///     name: "production",
///     description: "Production environment alias",
///     functionName: exampleAwsLambdaFunction.arn,
///     functionVersion: "1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.Alias("example",
///     name="production",
///     description="Production environment alias",
///     function_name=example_aws_lambda_function["arn"],
///     function_version="1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.Alias("example", new()
///     {
///         Name = "production",
///         Description = "Production environment alias",
///         FunctionName = exampleAwsLambdaFunction.Arn,
///         FunctionVersion = "1",
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
/// 		_, err := lambda.NewAlias(ctx, "example", &lambda.AliasArgs{
/// 			Name:            pulumi.String("production"),
/// 			Description:     pulumi.String("Production environment alias"),
/// 			FunctionName:    pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 			FunctionVersion: pulumi.String("1"),
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
/// import com.pulumi.aws.lambda.Alias;
/// import com.pulumi.aws.lambda.AliasArgs;
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
///         var example = new Alias("example", AliasArgs.builder()
///             .name("production")
///             .description("Production environment alias")
///             .functionName(exampleAwsLambdaFunction.arn())
///             .functionVersion("1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:Alias
///     properties:
///       name: production
///       description: Production environment alias
///       functionName: ${exampleAwsLambdaFunction.arn}
///       functionVersion: '1'
/// ```
///
///
/// ### Alias with Traffic Splitting
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.Alias("example", {
///     name: "staging",
///     description: "Staging environment with traffic splitting",
///     functionName: exampleAwsLambdaFunction.functionName,
///     functionVersion: "2",
///     routingConfig: {
///         additionalVersionWeights: {
///             "1": 0.1,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.Alias("example",
///     name="staging",
///     description="Staging environment with traffic splitting",
///     function_name=example_aws_lambda_function["functionName"],
///     function_version="2",
///     routing_config={
///         "additional_version_weights": {
///             "1": 0.1,
///         },
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
///     var example = new Aws.Lambda.Alias("example", new()
///     {
///         Name = "staging",
///         Description = "Staging environment with traffic splitting",
///         FunctionName = exampleAwsLambdaFunction.FunctionName,
///         FunctionVersion = "2",
///         RoutingConfig = new Aws.Lambda.Inputs.AliasRoutingConfigArgs
///         {
///             AdditionalVersionWeights =
///             {
///                 { "1", 0.1 },
///             },
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
/// 		_, err := lambda.NewAlias(ctx, "example", &lambda.AliasArgs{
/// 			Name:            pulumi.String("staging"),
/// 			Description:     pulumi.String("Staging environment with traffic splitting"),
/// 			FunctionName:    pulumi.Any(exampleAwsLambdaFunction.FunctionName),
/// 			FunctionVersion: pulumi.String("2"),
/// 			RoutingConfig: &lambda.AliasRoutingConfigArgs{
/// 				AdditionalVersionWeights: pulumi.Float64Map{
/// 					"1": pulumi.Float64(0.1),
/// 				},
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
/// import com.pulumi.aws.lambda.Alias;
/// import com.pulumi.aws.lambda.AliasArgs;
/// import com.pulumi.aws.lambda.inputs.AliasRoutingConfigArgs;
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
///         var example = new Alias("example", AliasArgs.builder()
///             .name("staging")
///             .description("Staging environment with traffic splitting")
///             .functionName(exampleAwsLambdaFunction.functionName())
///             .functionVersion("2")
///             .routingConfig(AliasRoutingConfigArgs.builder()
///                 .additionalVersionWeights(Map.of("1", 0.1))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:Alias
///     properties:
///       name: staging
///       description: Staging environment with traffic splitting
///       functionName: ${exampleAwsLambdaFunction.functionName}
///       functionVersion: '2'
///       routingConfig:
///         additionalVersionWeights:
///           '1': 0.1
/// ```
///
///
/// ### Blue-Green Deployment Alias
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Alias for gradual rollout
/// const example = new aws.lambda.Alias("example", {
///     name: "live",
///     description: "Live traffic with gradual rollout to new version",
///     functionName: exampleAwsLambdaFunction.functionName,
///     functionVersion: "5",
///     routingConfig: {
///         additionalVersionWeights: {
///             "6": 0.05,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Alias for gradual rollout
/// example = aws.lambda_.Alias("example",
///     name="live",
///     description="Live traffic with gradual rollout to new version",
///     function_name=example_aws_lambda_function["functionName"],
///     function_version="5",
///     routing_config={
///         "additional_version_weights": {
///             "6": 0.05,
///         },
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
///     // Alias for gradual rollout
///     var example = new Aws.Lambda.Alias("example", new()
///     {
///         Name = "live",
///         Description = "Live traffic with gradual rollout to new version",
///         FunctionName = exampleAwsLambdaFunction.FunctionName,
///         FunctionVersion = "5",
///         RoutingConfig = new Aws.Lambda.Inputs.AliasRoutingConfigArgs
///         {
///             AdditionalVersionWeights =
///             {
///                 { "6", 0.05 },
///             },
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
/// 		// Alias for gradual rollout
/// 		_, err := lambda.NewAlias(ctx, "example", &lambda.AliasArgs{
/// 			Name:            pulumi.String("live"),
/// 			Description:     pulumi.String("Live traffic with gradual rollout to new version"),
/// 			FunctionName:    pulumi.Any(exampleAwsLambdaFunction.FunctionName),
/// 			FunctionVersion: pulumi.String("5"),
/// 			RoutingConfig: &lambda.AliasRoutingConfigArgs{
/// 				AdditionalVersionWeights: pulumi.Float64Map{
/// 					"6": pulumi.Float64(0.05),
/// 				},
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
/// import com.pulumi.aws.lambda.Alias;
/// import com.pulumi.aws.lambda.AliasArgs;
/// import com.pulumi.aws.lambda.inputs.AliasRoutingConfigArgs;
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
///         // Alias for gradual rollout
///         var example = new Alias("example", AliasArgs.builder()
///             .name("live")
///             .description("Live traffic with gradual rollout to new version")
///             .functionName(exampleAwsLambdaFunction.functionName())
///             .functionVersion("5")
///             .routingConfig(AliasRoutingConfigArgs.builder()
///                 .additionalVersionWeights(Map.of("6", 0.05))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Alias for gradual rollout
///   example:
///     type: aws:lambda:Alias
///     properties:
///       name: live
///       description: Live traffic with gradual rollout to new version
///       functionName: ${exampleAwsLambdaFunction.functionName}
///       functionVersion: '5'
///       routingConfig:
///         additionalVersionWeights:
///           '6': 0.05
/// ```
///
///
/// ### Development Alias
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.Alias("example", {
///     name: "dev",
///     description: "Development environment - always points to latest",
///     functionName: exampleAwsLambdaFunction.functionName,
///     functionVersion: "$LATEST",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.Alias("example",
///     name="dev",
///     description="Development environment - always points to latest",
///     function_name=example_aws_lambda_function["functionName"],
///     function_version="$LATEST")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.Alias("example", new()
///     {
///         Name = "dev",
///         Description = "Development environment - always points to latest",
///         FunctionName = exampleAwsLambdaFunction.FunctionName,
///         FunctionVersion = "$LATEST",
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
/// 		_, err := lambda.NewAlias(ctx, "example", &lambda.AliasArgs{
/// 			Name:            pulumi.String("dev"),
/// 			Description:     pulumi.String("Development environment - always points to latest"),
/// 			FunctionName:    pulumi.Any(exampleAwsLambdaFunction.FunctionName),
/// 			FunctionVersion: pulumi.String("$LATEST"),
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
/// import com.pulumi.aws.lambda.Alias;
/// import com.pulumi.aws.lambda.AliasArgs;
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
///         var example = new Alias("example", AliasArgs.builder()
///             .name("dev")
///             .description("Development environment - always points to latest")
///             .functionName(exampleAwsLambdaFunction.functionName())
///             .functionVersion("$LATEST")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:Alias
///     properties:
///       name: dev
///       description: Development environment - always points to latest
///       functionName: ${exampleAwsLambdaFunction.functionName}
///       functionVersion: $LATEST
/// ```
///
///
/// ## Import
///
/// For backwards compatibility, the following legacy `pulumi import` command is also supported:
///
/// ```sh
/// $ pulumi import aws:lambda/alias:Alias example example/production
/// ```
class Alias extends pulumi.CustomResource {
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

  /// Creates a new [Alias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Alias]. {@macro pulumi_lambda_alias_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Alias(
    String name, {
    AliasArgs? args,
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
