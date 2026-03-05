import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_event_invoke_config_args.dart';
import 'function_event_invoke_config_destination_config.dart';
import 'function_event_invoke_config_state.dart';

/// Manages an AWS Lambda Function Event Invoke Config. Use this resource to configure error handling and destinations for asynchronous Lambda function invocations.
///
/// More information about asynchronous invocations and the configurable values can be found in the [Lambda Developer Guide](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html).
///
/// ## Example Usage
///
/// ### Complete Error Handling and Destinations
///
/// &gt; **Note:** Ensure the Lambda Function IAM Role has necessary permissions for the destination, such as `sqs:SendMessage` or `sns:Publish`, otherwise the API will return a generic `InvalidParameterValueException: The destination ARN arn:PARTITION:SERVICE:REGION:ACCOUNT:RESOURCE is invalid.` error.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // SQS queue for failed invocations
/// const dlq = new aws.sqs.Queue("dlq", {
///     name: "lambda-dlq",
///     tags: {
///         Environment: "production",
///         Purpose: "lambda-error-handling",
///     },
/// });
/// // SNS topic for successful invocations
/// const success = new aws.sns.Topic("success", {
///     name: "lambda-success-notifications",
///     tags: {
///         Environment: "production",
///         Purpose: "lambda-success-notifications",
///     },
/// });
/// // Complete event invoke configuration
/// const example = new aws.lambda.FunctionEventInvokeConfig("example", {
///     functionName: exampleAwsLambdaFunction.functionName,
///     maximumEventAgeInSeconds: 300,
///     maximumRetryAttempts: 1,
///     destinationConfig: {
///         onFailure: {
///             destination: dlq.arn,
///         },
///         onSuccess: {
///             destination: success.arn,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # SQS queue for failed invocations
/// dlq = aws.sqs.Queue("dlq",
///     name="lambda-dlq",
///     tags={
///         "Environment": "production",
///         "Purpose": "lambda-error-handling",
///     })
/// # SNS topic for successful invocations
/// success = aws.sns.Topic("success",
///     name="lambda-success-notifications",
///     tags={
///         "Environment": "production",
///         "Purpose": "lambda-success-notifications",
///     })
/// # Complete event invoke configuration
/// example = aws.lambda_.FunctionEventInvokeConfig("example",
///     function_name=example_aws_lambda_function["functionName"],
///     maximum_event_age_in_seconds=300,
///     maximum_retry_attempts=1,
///     destination_config={
///         "on_failure": {
///             "destination": dlq.arn,
///         },
///         "on_success": {
///             "destination": success.arn,
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
///     // SQS queue for failed invocations
///     var dlq = new Aws.Sqs.Queue("dlq", new()
///     {
///         Name = "lambda-dlq",
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Purpose", "lambda-error-handling" },
///         },
///     });
///
///     // SNS topic for successful invocations
///     var success = new Aws.Sns.Topic("success", new()
///     {
///         Name = "lambda-success-notifications",
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Purpose", "lambda-success-notifications" },
///         },
///     });
///
///     // Complete event invoke configuration
///     var example = new Aws.Lambda.FunctionEventInvokeConfig("example", new()
///     {
///         FunctionName = exampleAwsLambdaFunction.FunctionName,
///         MaximumEventAgeInSeconds = 300,
///         MaximumRetryAttempts = 1,
///         DestinationConfig = new Aws.Lambda.Inputs.FunctionEventInvokeConfigDestinationConfigArgs
///         {
///             OnFailure = new Aws.Lambda.Inputs.FunctionEventInvokeConfigDestinationConfigOnFailureArgs
///             {
///                 Destination = dlq.Arn,
///             },
///             OnSuccess = new Aws.Lambda.Inputs.FunctionEventInvokeConfigDestinationConfigOnSuccessArgs
///             {
///                 Destination = success.Arn,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// SQS queue for failed invocations
/// 		dlq, err := sqs.NewQueue(ctx, "dlq", &sqs.QueueArgs{
/// 			Name: pulumi.String("lambda-dlq"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Purpose":     pulumi.String("lambda-error-handling"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// SNS topic for successful invocations
/// 		success, err := sns.NewTopic(ctx, "success", &sns.TopicArgs{
/// 			Name: pulumi.String("lambda-success-notifications"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Purpose":     pulumi.String("lambda-success-notifications"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Complete event invoke configuration
/// 		_, err = lambda.NewFunctionEventInvokeConfig(ctx, "example", &lambda.FunctionEventInvokeConfigArgs{
/// 			FunctionName:             pulumi.Any(exampleAwsLambdaFunction.FunctionName),
/// 			MaximumEventAgeInSeconds: pulumi.Int(300),
/// 			MaximumRetryAttempts:     pulumi.Int(1),
/// 			DestinationConfig: &lambda.FunctionEventInvokeConfigDestinationConfigArgs{
/// 				OnFailure: &lambda.FunctionEventInvokeConfigDestinationConfigOnFailureArgs{
/// 					Destination: dlq.Arn,
/// 				},
/// 				OnSuccess: &lambda.FunctionEventInvokeConfigDestinationConfigOnSuccessArgs{
/// 					Destination: success.Arn,
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
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.lambda.FunctionEventInvokeConfig;
/// import com.pulumi.aws.lambda.FunctionEventInvokeConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEventInvokeConfigDestinationConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEventInvokeConfigDestinationConfigOnFailureArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEventInvokeConfigDestinationConfigOnSuccessArgs;
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
///         // SQS queue for failed invocations
///         var dlq = new Queue("dlq", QueueArgs.builder()
///             .name("lambda-dlq")
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Purpose", "lambda-error-handling")
///             ))
///             .build());
///
///         // SNS topic for successful invocations
///         var success = new Topic("success", TopicArgs.builder()
///             .name("lambda-success-notifications")
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Purpose", "lambda-success-notifications")
///             ))
///             .build());
///
///         // Complete event invoke configuration
///         var example = new FunctionEventInvokeConfig("example", FunctionEventInvokeConfigArgs.builder()
///             .functionName(exampleAwsLambdaFunction.functionName())
///             .maximumEventAgeInSeconds(300)
///             .maximumRetryAttempts(1)
///             .destinationConfig(FunctionEventInvokeConfigDestinationConfigArgs.builder()
///                 .onFailure(FunctionEventInvokeConfigDestinationConfigOnFailureArgs.builder()
///                     .destination(dlq.arn())
///                     .build())
///                 .onSuccess(FunctionEventInvokeConfigDestinationConfigOnSuccessArgs.builder()
///                     .destination(success.arn())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # SQS queue for failed invocations
///   dlq:
///     type: aws:sqs:Queue
///     properties:
///       name: lambda-dlq
///       tags:
///         Environment: production
///         Purpose: lambda-error-handling
///   # SNS topic for successful invocations
///   success:
///     type: aws:sns:Topic
///     properties:
///       name: lambda-success-notifications
///       tags:
///         Environment: production
///         Purpose: lambda-success-notifications
///   # Complete event invoke configuration
///   example:
///     type: aws:lambda:FunctionEventInvokeConfig
///     properties:
///       functionName: ${exampleAwsLambdaFunction.functionName}
///       maximumEventAgeInSeconds: 300 # 5 minutes
///       maximumRetryAttempts: 1 # Retry once on failure
///       destinationConfig:
///         onFailure:
///           destination: ${dlq.arn}
///         onSuccess:
///           destination: ${success.arn}
/// ```
///
///
/// ### Error Handling Only
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.FunctionEventInvokeConfig("example", {
///     functionName: exampleAwsLambdaFunction.functionName,
///     maximumEventAgeInSeconds: 60,
///     maximumRetryAttempts: 0,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.FunctionEventInvokeConfig("example",
///     function_name=example_aws_lambda_function["functionName"],
///     maximum_event_age_in_seconds=60,
///     maximum_retry_attempts=0)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.FunctionEventInvokeConfig("example", new()
///     {
///         FunctionName = exampleAwsLambdaFunction.FunctionName,
///         MaximumEventAgeInSeconds = 60,
///         MaximumRetryAttempts = 0,
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
/// 		_, err := lambda.NewFunctionEventInvokeConfig(ctx, "example", &lambda.FunctionEventInvokeConfigArgs{
/// 			FunctionName:             pulumi.Any(exampleAwsLambdaFunction.FunctionName),
/// 			MaximumEventAgeInSeconds: pulumi.Int(60),
/// 			MaximumRetryAttempts:     pulumi.Int(0),
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
/// import com.pulumi.aws.lambda.FunctionEventInvokeConfig;
/// import com.pulumi.aws.lambda.FunctionEventInvokeConfigArgs;
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
///         var example = new FunctionEventInvokeConfig("example", FunctionEventInvokeConfigArgs.builder()
///             .functionName(exampleAwsLambdaFunction.functionName())
///             .maximumEventAgeInSeconds(60)
///             .maximumRetryAttempts(0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:FunctionEventInvokeConfig
///     properties:
///       functionName: ${exampleAwsLambdaFunction.functionName}
///       maximumEventAgeInSeconds: 60 # 1 minute - fail fast
///       maximumRetryAttempts: 0 # No retries
/// ```
///
///
/// ### Configuration for Lambda Alias
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.Alias("example", {
///     name: "production",
///     description: "Production alias",
///     functionName: exampleAwsLambdaFunction.functionName,
///     functionVersion: exampleAwsLambdaFunction.version,
/// });
/// const exampleFunctionEventInvokeConfig = new aws.lambda.FunctionEventInvokeConfig("example", {
///     functionName: exampleAwsLambdaFunction.functionName,
///     qualifier: example.name,
///     maximumEventAgeInSeconds: 1800,
///     maximumRetryAttempts: 2,
///     destinationConfig: {
///         onFailure: {
///             destination: productionDlq.arn,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.Alias("example",
///     name="production",
///     description="Production alias",
///     function_name=example_aws_lambda_function["functionName"],
///     function_version=example_aws_lambda_function["version"])
/// example_function_event_invoke_config = aws.lambda_.FunctionEventInvokeConfig("example",
///     function_name=example_aws_lambda_function["functionName"],
///     qualifier=example.name,
///     maximum_event_age_in_seconds=1800,
///     maximum_retry_attempts=2,
///     destination_config={
///         "on_failure": {
///             "destination": production_dlq["arn"],
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
///         Name = "production",
///         Description = "Production alias",
///         FunctionName = exampleAwsLambdaFunction.FunctionName,
///         FunctionVersion = exampleAwsLambdaFunction.Version,
///     });
///
///     var exampleFunctionEventInvokeConfig = new Aws.Lambda.FunctionEventInvokeConfig("example", new()
///     {
///         FunctionName = exampleAwsLambdaFunction.FunctionName,
///         Qualifier = example.Name,
///         MaximumEventAgeInSeconds = 1800,
///         MaximumRetryAttempts = 2,
///         DestinationConfig = new Aws.Lambda.Inputs.FunctionEventInvokeConfigDestinationConfigArgs
///         {
///             OnFailure = new Aws.Lambda.Inputs.FunctionEventInvokeConfigDestinationConfigOnFailureArgs
///             {
///                 Destination = productionDlq.Arn,
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
/// 		example, err := lambda.NewAlias(ctx, "example", &lambda.AliasArgs{
/// 			Name:            pulumi.String("production"),
/// 			Description:     pulumi.String("Production alias"),
/// 			FunctionName:    pulumi.Any(exampleAwsLambdaFunction.FunctionName),
/// 			FunctionVersion: pulumi.Any(exampleAwsLambdaFunction.Version),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lambda.NewFunctionEventInvokeConfig(ctx, "example", &lambda.FunctionEventInvokeConfigArgs{
/// 			FunctionName:             pulumi.Any(exampleAwsLambdaFunction.FunctionName),
/// 			Qualifier:                example.Name,
/// 			MaximumEventAgeInSeconds: pulumi.Int(1800),
/// 			MaximumRetryAttempts:     pulumi.Int(2),
/// 			DestinationConfig: &lambda.FunctionEventInvokeConfigDestinationConfigArgs{
/// 				OnFailure: &lambda.FunctionEventInvokeConfigDestinationConfigOnFailureArgs{
/// 					Destination: pulumi.Any(productionDlq.Arn),
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
/// import com.pulumi.aws.lambda.FunctionEventInvokeConfig;
/// import com.pulumi.aws.lambda.FunctionEventInvokeConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEventInvokeConfigDestinationConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEventInvokeConfigDestinationConfigOnFailureArgs;
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
///             .description("Production alias")
///             .functionName(exampleAwsLambdaFunction.functionName())
///             .functionVersion(exampleAwsLambdaFunction.version())
///             .build());
///
///         var exampleFunctionEventInvokeConfig = new FunctionEventInvokeConfig("exampleFunctionEventInvokeConfig", FunctionEventInvokeConfigArgs.builder()
///             .functionName(exampleAwsLambdaFunction.functionName())
///             .qualifier(example.name())
///             .maximumEventAgeInSeconds(1800)
///             .maximumRetryAttempts(2)
///             .destinationConfig(FunctionEventInvokeConfigDestinationConfigArgs.builder()
///                 .onFailure(FunctionEventInvokeConfigDestinationConfigOnFailureArgs.builder()
///                     .destination(productionDlq.arn())
///                     .build())
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
///       name: production
///       description: Production alias
///       functionName: ${exampleAwsLambdaFunction.functionName}
///       functionVersion: ${exampleAwsLambdaFunction.version}
///   exampleFunctionEventInvokeConfig:
///     type: aws:lambda:FunctionEventInvokeConfig
///     name: example
///     properties:
///       functionName: ${exampleAwsLambdaFunction.functionName}
///       qualifier: ${example.name}
///       maximumEventAgeInSeconds: 1800 # 30 minutes for production
///       maximumRetryAttempts: 2 # Default retry behavior
///       destinationConfig:
///         onFailure:
///           destination: ${productionDlq.arn}
/// ```
///
///
/// ### Configuration for Published Version
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.FunctionEventInvokeConfig("example", {
///     functionName: exampleAwsLambdaFunction.functionName,
///     qualifier: exampleAwsLambdaFunction.version,
///     maximumEventAgeInSeconds: 21600,
///     maximumRetryAttempts: 2,
///     destinationConfig: {
///         onFailure: {
///             destination: versionDlq.arn,
///         },
///         onSuccess: {
///             destination: versionSuccess.arn,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.FunctionEventInvokeConfig("example",
///     function_name=example_aws_lambda_function["functionName"],
///     qualifier=example_aws_lambda_function["version"],
///     maximum_event_age_in_seconds=21600,
///     maximum_retry_attempts=2,
///     destination_config={
///         "on_failure": {
///             "destination": version_dlq["arn"],
///         },
///         "on_success": {
///             "destination": version_success["arn"],
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
///     var example = new Aws.Lambda.FunctionEventInvokeConfig("example", new()
///     {
///         FunctionName = exampleAwsLambdaFunction.FunctionName,
///         Qualifier = exampleAwsLambdaFunction.Version,
///         MaximumEventAgeInSeconds = 21600,
///         MaximumRetryAttempts = 2,
///         DestinationConfig = new Aws.Lambda.Inputs.FunctionEventInvokeConfigDestinationConfigArgs
///         {
///             OnFailure = new Aws.Lambda.Inputs.FunctionEventInvokeConfigDestinationConfigOnFailureArgs
///             {
///                 Destination = versionDlq.Arn,
///             },
///             OnSuccess = new Aws.Lambda.Inputs.FunctionEventInvokeConfigDestinationConfigOnSuccessArgs
///             {
///                 Destination = versionSuccess.Arn,
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
/// 		_, err := lambda.NewFunctionEventInvokeConfig(ctx, "example", &lambda.FunctionEventInvokeConfigArgs{
/// 			FunctionName:             pulumi.Any(exampleAwsLambdaFunction.FunctionName),
/// 			Qualifier:                pulumi.Any(exampleAwsLambdaFunction.Version),
/// 			MaximumEventAgeInSeconds: pulumi.Int(21600),
/// 			MaximumRetryAttempts:     pulumi.Int(2),
/// 			DestinationConfig: &lambda.FunctionEventInvokeConfigDestinationConfigArgs{
/// 				OnFailure: &lambda.FunctionEventInvokeConfigDestinationConfigOnFailureArgs{
/// 					Destination: pulumi.Any(versionDlq.Arn),
/// 				},
/// 				OnSuccess: &lambda.FunctionEventInvokeConfigDestinationConfigOnSuccessArgs{
/// 					Destination: pulumi.Any(versionSuccess.Arn),
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
/// import com.pulumi.aws.lambda.FunctionEventInvokeConfig;
/// import com.pulumi.aws.lambda.FunctionEventInvokeConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEventInvokeConfigDestinationConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEventInvokeConfigDestinationConfigOnFailureArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEventInvokeConfigDestinationConfigOnSuccessArgs;
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
///         var example = new FunctionEventInvokeConfig("example", FunctionEventInvokeConfigArgs.builder()
///             .functionName(exampleAwsLambdaFunction.functionName())
///             .qualifier(exampleAwsLambdaFunction.version())
///             .maximumEventAgeInSeconds(21600)
///             .maximumRetryAttempts(2)
///             .destinationConfig(FunctionEventInvokeConfigDestinationConfigArgs.builder()
///                 .onFailure(FunctionEventInvokeConfigDestinationConfigOnFailureArgs.builder()
///                     .destination(versionDlq.arn())
///                     .build())
///                 .onSuccess(FunctionEventInvokeConfigDestinationConfigOnSuccessArgs.builder()
///                     .destination(versionSuccess.arn())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:FunctionEventInvokeConfig
///     properties:
///       functionName: ${exampleAwsLambdaFunction.functionName}
///       qualifier: ${exampleAwsLambdaFunction.version}
///       maximumEventAgeInSeconds: 21600 # 6 hours maximum
///       maximumRetryAttempts: 2
///       destinationConfig:
///         onFailure:
///           destination: ${versionDlq.arn}
///         onSuccess:
///           destination: ${versionSuccess.arn}
/// ```
///
///
/// ### Configuration for Latest Version
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.FunctionEventInvokeConfig("example", {
///     functionName: exampleAwsLambdaFunction.functionName,
///     qualifier: "$LATEST",
///     maximumEventAgeInSeconds: 120,
///     maximumRetryAttempts: 0,
///     destinationConfig: {
///         onFailure: {
///             destination: devDlq.arn,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.FunctionEventInvokeConfig("example",
///     function_name=example_aws_lambda_function["functionName"],
///     qualifier="$LATEST",
///     maximum_event_age_in_seconds=120,
///     maximum_retry_attempts=0,
///     destination_config={
///         "on_failure": {
///             "destination": dev_dlq["arn"],
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
///     var example = new Aws.Lambda.FunctionEventInvokeConfig("example", new()
///     {
///         FunctionName = exampleAwsLambdaFunction.FunctionName,
///         Qualifier = "$LATEST",
///         MaximumEventAgeInSeconds = 120,
///         MaximumRetryAttempts = 0,
///         DestinationConfig = new Aws.Lambda.Inputs.FunctionEventInvokeConfigDestinationConfigArgs
///         {
///             OnFailure = new Aws.Lambda.Inputs.FunctionEventInvokeConfigDestinationConfigOnFailureArgs
///             {
///                 Destination = devDlq.Arn,
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
/// 		_, err := lambda.NewFunctionEventInvokeConfig(ctx, "example", &lambda.FunctionEventInvokeConfigArgs{
/// 			FunctionName:             pulumi.Any(exampleAwsLambdaFunction.FunctionName),
/// 			Qualifier:                pulumi.String("$LATEST"),
/// 			MaximumEventAgeInSeconds: pulumi.Int(120),
/// 			MaximumRetryAttempts:     pulumi.Int(0),
/// 			DestinationConfig: &lambda.FunctionEventInvokeConfigDestinationConfigArgs{
/// 				OnFailure: &lambda.FunctionEventInvokeConfigDestinationConfigOnFailureArgs{
/// 					Destination: pulumi.Any(devDlq.Arn),
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
/// import com.pulumi.aws.lambda.FunctionEventInvokeConfig;
/// import com.pulumi.aws.lambda.FunctionEventInvokeConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEventInvokeConfigDestinationConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEventInvokeConfigDestinationConfigOnFailureArgs;
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
///         var example = new FunctionEventInvokeConfig("example", FunctionEventInvokeConfigArgs.builder()
///             .functionName(exampleAwsLambdaFunction.functionName())
///             .qualifier("$LATEST")
///             .maximumEventAgeInSeconds(120)
///             .maximumRetryAttempts(0)
///             .destinationConfig(FunctionEventInvokeConfigDestinationConfigArgs.builder()
///                 .onFailure(FunctionEventInvokeConfigDestinationConfigOnFailureArgs.builder()
///                     .destination(devDlq.arn())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:FunctionEventInvokeConfig
///     properties:
///       functionName: ${exampleAwsLambdaFunction.functionName}
///       qualifier: $LATEST
///       maximumEventAgeInSeconds: 120 # 2 minutes
///       maximumRetryAttempts: 0 # No retries in development
///       destinationConfig:
///         onFailure:
///           destination: ${devDlq.arn}
/// ```
///
///
/// ### Multiple Destination Types
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // S3 bucket for archiving successful events
/// const lambdaSuccessArchive = new aws.s3.Bucket("lambda_success_archive", {bucket: `lambda-success-archive-${bucketSuffix.hex}`});
/// // EventBridge custom bus for failed events
/// const lambdaFailures = new aws.cloudwatch.EventBus("lambda_failures", {name: "lambda-failure-events"});
/// const example = new aws.lambda.FunctionEventInvokeConfig("example", {
///     functionName: exampleAwsLambdaFunction.functionName,
///     destinationConfig: {
///         onFailure: {
///             destination: lambdaFailures.arn,
///         },
///         onSuccess: {
///             destination: lambdaSuccessArchive.arn,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # S3 bucket for archiving successful events
/// lambda_success_archive = aws.s3.Bucket("lambda_success_archive", bucket=f"lambda-success-archive-{bucket_suffix['hex']}")
/// # EventBridge custom bus for failed events
/// lambda_failures = aws.cloudwatch.EventBus("lambda_failures", name="lambda-failure-events")
/// example = aws.lambda_.FunctionEventInvokeConfig("example",
///     function_name=example_aws_lambda_function["functionName"],
///     destination_config={
///         "on_failure": {
///             "destination": lambda_failures.arn,
///         },
///         "on_success": {
///             "destination": lambda_success_archive.arn,
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
///     // S3 bucket for archiving successful events
///     var lambdaSuccessArchive = new Aws.S3.Bucket("lambda_success_archive", new()
///     {
///         BucketName = $"lambda-success-archive-{bucketSuffix.Hex}",
///     });
///
///     // EventBridge custom bus for failed events
///     var lambdaFailures = new Aws.CloudWatch.EventBus("lambda_failures", new()
///     {
///         Name = "lambda-failure-events",
///     });
///
///     var example = new Aws.Lambda.FunctionEventInvokeConfig("example", new()
///     {
///         FunctionName = exampleAwsLambdaFunction.FunctionName,
///         DestinationConfig = new Aws.Lambda.Inputs.FunctionEventInvokeConfigDestinationConfigArgs
///         {
///             OnFailure = new Aws.Lambda.Inputs.FunctionEventInvokeConfigDestinationConfigOnFailureArgs
///             {
///                 Destination = lambdaFailures.Arn,
///             },
///             OnSuccess = new Aws.Lambda.Inputs.FunctionEventInvokeConfigDestinationConfigOnSuccessArgs
///             {
///                 Destination = lambdaSuccessArchive.Arn,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// S3 bucket for archiving successful events
/// 		lambdaSuccessArchive, err := s3.NewBucket(ctx, "lambda_success_archive", &s3.BucketArgs{
/// 			Bucket: pulumi.Sprintf("lambda-success-archive-%v", bucketSuffix.Hex),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// EventBridge custom bus for failed events
/// 		lambdaFailures, err := cloudwatch.NewEventBus(ctx, "lambda_failures", &cloudwatch.EventBusArgs{
/// 			Name: pulumi.String("lambda-failure-events"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lambda.NewFunctionEventInvokeConfig(ctx, "example", &lambda.FunctionEventInvokeConfigArgs{
/// 			FunctionName: pulumi.Any(exampleAwsLambdaFunction.FunctionName),
/// 			DestinationConfig: &lambda.FunctionEventInvokeConfigDestinationConfigArgs{
/// 				OnFailure: &lambda.FunctionEventInvokeConfigDestinationConfigOnFailureArgs{
/// 					Destination: lambdaFailures.Arn,
/// 				},
/// 				OnSuccess: &lambda.FunctionEventInvokeConfigDestinationConfigOnSuccessArgs{
/// 					Destination: lambdaSuccessArchive.Arn,
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.cloudwatch.EventBus;
/// import com.pulumi.aws.cloudwatch.EventBusArgs;
/// import com.pulumi.aws.lambda.FunctionEventInvokeConfig;
/// import com.pulumi.aws.lambda.FunctionEventInvokeConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEventInvokeConfigDestinationConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEventInvokeConfigDestinationConfigOnFailureArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEventInvokeConfigDestinationConfigOnSuccessArgs;
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
///         // S3 bucket for archiving successful events
///         var lambdaSuccessArchive = new Bucket("lambdaSuccessArchive", BucketArgs.builder()
///             .bucket(String.format("lambda-success-archive-%s", bucketSuffix.hex()))
///             .build());
///
///         // EventBridge custom bus for failed events
///         var lambdaFailures = new EventBus("lambdaFailures", EventBusArgs.builder()
///             .name("lambda-failure-events")
///             .build());
///
///         var example = new FunctionEventInvokeConfig("example", FunctionEventInvokeConfigArgs.builder()
///             .functionName(exampleAwsLambdaFunction.functionName())
///             .destinationConfig(FunctionEventInvokeConfigDestinationConfigArgs.builder()
///                 .onFailure(FunctionEventInvokeConfigDestinationConfigOnFailureArgs.builder()
///                     .destination(lambdaFailures.arn())
///                     .build())
///                 .onSuccess(FunctionEventInvokeConfigDestinationConfigOnSuccessArgs.builder()
///                     .destination(lambdaSuccessArchive.arn())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # S3 bucket for archiving successful events
///   lambdaSuccessArchive:
///     type: aws:s3:Bucket
///     name: lambda_success_archive
///     properties:
///       bucket: lambda-success-archive-${bucketSuffix.hex}
///   # EventBridge custom bus for failed events
///   lambdaFailures:
///     type: aws:cloudwatch:EventBus
///     name: lambda_failures
///     properties:
///       name: lambda-failure-events
///   example:
///     type: aws:lambda:FunctionEventInvokeConfig
///     properties:
///       functionName: ${exampleAwsLambdaFunction.functionName}
///       destinationConfig:
///         onFailure:
///           destination: ${lambdaFailures.arn}
///         onSuccess:
///           destination: ${lambdaSuccessArchive.arn}
/// ```
///
///
/// ## Import
///
/// ARN with qualifier:
///
///
/// Name without qualifier (all versions and aliases):
///
///
/// Name with qualifier:
///
///
/// For backwards compatibility, the following legacy `pulumi import` commands are also supported:
///
/// Using ARN without qualifier:
///
/// ```sh
/// $ pulumi import aws:lambda/functionEventInvokeConfig:FunctionEventInvokeConfig example arn:aws:lambda:us-east-1:123456789012:function:example
/// ```
///
/// Using ARN with qualifier:
///
/// ```sh
/// $ pulumi import aws:lambda/functionEventInvokeConfig:FunctionEventInvokeConfig example arn:aws:lambda:us-east-1:123456789012:function:example:production
/// ```
///
/// Name without qualifier (all versions and aliases):
///
/// ```sh
/// $ pulumi import aws:lambda/functionEventInvokeConfig:FunctionEventInvokeConfig example example
/// ```
///
/// Name with qualifier:
///
/// ```sh
/// $ pulumi import aws:lambda/functionEventInvokeConfig:FunctionEventInvokeConfig example example:production
/// ```
class FunctionEventInvokeConfig extends pulumi.CustomResource {
  /// Configuration block with destination configuration. See below.
  late final pulumi.Output<FunctionEventInvokeConfigDestinationConfig?> destinationConfig;
  /// Name or ARN of the Lambda Function, omitting any version or alias qualifier.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> functionName;
  /// Maximum age of a request that Lambda sends to a function for processing in seconds. Valid values between 60 and 21600.
  late final pulumi.Output<int?> maximumEventAgeInSeconds;
  /// Maximum number of times to retry when the function returns an error. Valid values between 0 and 2. Defaults to 2.
  late final pulumi.Output<int?> maximumRetryAttempts;
  /// Lambda Function published version, `$LATEST`, or Lambda Alias name.
  late final pulumi.Output<String?> qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [FunctionEventInvokeConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionEventInvokeConfig]. {@macro pulumi_lambda_function_event_invoke_config_function_event_invoke_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionEventInvokeConfig(
    String name, {
    FunctionEventInvokeConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/functionEventInvokeConfig:FunctionEventInvokeConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationConfig = registerOutput<FunctionEventInvokeConfigDestinationConfig?>('destinationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEventInvokeConfigDestinationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    functionName = registerOutput<String>('functionName');
    maximumEventAgeInSeconds = registerOutput<int?>('maximumEventAgeInSeconds');
    maximumRetryAttempts = registerOutput<int?>('maximumRetryAttempts');
    qualifier = registerOutput<String?>('qualifier');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [FunctionEventInvokeConfig] resource's state with the given [name] and [id].
  static FunctionEventInvokeConfig get(
    String name,
    pulumi.Input<String> id, {
    FunctionEventInvokeConfigState? state,
  }) {
    return FunctionEventInvokeConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FunctionEventInvokeConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/functionEventInvokeConfig:FunctionEventInvokeConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationConfig = registerOutput<FunctionEventInvokeConfigDestinationConfig?>('destinationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEventInvokeConfigDestinationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    functionName = registerOutput<String>('functionName');
    maximumEventAgeInSeconds = registerOutput<int?>('maximumEventAgeInSeconds');
    maximumRetryAttempts = registerOutput<int?>('maximumRetryAttempts');
    qualifier = registerOutput<String?>('qualifier');
    region = registerOutput<String>('region');
  }
}
