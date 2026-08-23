import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_args.dart';
import 'invocation_state.dart';

/// Manages an AWS Lambda Function invocation. Use this resource to invoke a Lambda function with the [RequestResponse](https://docs.aws.amazon.com/lambda/latest/dg/API_Invoke.html#API_Invoke_RequestSyntax) invocation type.
///
/// &gt; **Note:** By default this resource _only_ invokes the function when the arguments call for a create or replace. After an initial invocation on _apply_, if the arguments do not change, a subsequent _apply_ does not invoke the function again. To dynamically invoke the function, see the `triggers` example below. To always invoke a function on each _apply_, see the `aws.lambda.Invocation` data source. To invoke the Lambda function when the Pulumi resource is updated and deleted, see the CRUD Lifecycle Management example below.
///
/// &gt; **Note:** If you get a `KMSAccessDeniedException: Lambda was unable to decrypt the environment variables because KMS access was denied` error when invoking a Lambda function with environment variables, the IAM role associated with the function may have been deleted and recreated after the function was created. You can fix the problem two ways: 1) updating the function's role to another role and then updating it back again to the recreated role. (When you create a function, Lambda grants permissions on the KMS key to the function's IAM role. If the IAM role is recreated, the grant is no longer valid. Changing the function's role or recreating the function causes Lambda to update the grant.)
///
/// ## Example Usage
///
/// ### Basic Invocation
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// // Lambda function to invoke
/// const example = new aws.lambda.Function("example", {
///     code: new pulumi.asset.FileArchive("function.zip"),
///     name: "data_processor",
///     role: lambdaRole.arn,
///     handler: "index.handler",
///     runtime: aws.lambda.Runtime.Python3d12,
/// });
/// // Invoke the function once during resource creation
/// const exampleInvocation = new aws.lambda.Invocation("example", {
///     functionName: example.name,
///     input: JSON.stringify({
///         operation: "initialize",
///         config: {
///             environment: "production",
///             debug: false,
///         },
///     }),
/// });
/// export const initializationResult = std.jsondecodeOutput({
///     input: exampleInvocation.result,
/// }).apply(invoke => invoke.result?.status);
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// # Lambda function to invoke
/// example = aws.lambda_.Function("example",
///     code=pulumi.FileArchive("function.zip"),
///     name="data_processor",
///     role=lambda_role["arn"],
///     handler="index.handler",
///     runtime=aws.lambda_.Runtime.PYTHON3D12)
/// # Invoke the function once during resource creation
/// example_invocation = aws.lambda_.Invocation("example",
///     function_name=example.name,
///     input=json.dumps({
///         "operation": "initialize",
///         "config": {
///             "environment": "production",
///             "debug": False,
///         },
///     }))
/// pulumi.export("initializationResult", std.jsondecode_output(input=example_invocation.result).result["status"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Lambda function to invoke
///     var example = new Aws.Lambda.Function("example", new()
///     {
///         Code = new FileArchive("function.zip"),
///         Name = "data_processor",
///         Role = lambdaRole.Arn,
///         Handler = "index.handler",
///         Runtime = Aws.Lambda.Runtime.Python3d12,
///     });
///
///     // Invoke the function once during resource creation
///     var exampleInvocation = new Aws.Lambda.Invocation("example", new()
///     {
///         FunctionName = example.Name,
///         Input = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["operation"] = "initialize",
///             ["config"] = new Dictionary<string, object?>
///             {
///                 ["environment"] = "production",
///                 ["debug"] = false,
///             },
///         }),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["initializationResult"] = Std.Jsondecode.Invoke(new()
///         {
///             Input = exampleInvocation.Result,
///         }).Apply(invoke => invoke.Result?.Status),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Lambda function to invoke
/// example, err := lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// Code: pulumi.NewFileArchive("function.zip"),
/// Name: pulumi.String("data_processor"),
/// Role: pulumi.Any(lambdaRole.Arn),
/// Handler: pulumi.String("index.handler"),
/// Runtime: pulumi.String(lambda.RuntimePython3d12),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "operation": "initialize",
/// "config": map[string]interface{}{
/// "environment": "production",
/// "debug": false,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// // Invoke the function once during resource creation
/// exampleInvocation, err := lambda.NewInvocation(ctx, "example", &lambda.InvocationArgs{
/// FunctionName: example.Name,
/// Input: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// ctx.Export("initializationResult", std.JsondecodeOutput(ctx, std.JsondecodeOutputArgs{
/// Input: exampleInvocation.Result,
/// }, nil).ApplyT(func(invoke std.JsondecodeResult) (*interface{}, error) {
/// val := invoke.Result.Status
/// return &val, nil
/// }).(pulumi.Interface{}PtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// # Lambda function to invoke
/// resource "aws_lambda_function" "example" {
///   code    = fileArchive("function.zip")
///   name    = "data_processor"
///   role    = lambdaRole.arn
///   handler = "index.handler"
///   runtime = "python3.12"
/// }
/// # Invoke the function once during resource creation
/// resource "aws_lambda_invocation" "example" {
///   function_name = aws_lambda_function.example.name
///   input = jsonencode({
///     "operation" = "initialize"
///     "config" = {
///       "environment" = "production"
///       "debug"       = false
///     }
///   })
/// }
/// # Use the result in other resources
/// output "initializationResult" {
///   value = jsondecode(aws_lambda_invocation.example.result)["status"]
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
/// import com.pulumi.aws.lambda.Invocation;
/// import com.pulumi.aws.lambda.InvocationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JsondecodeArgs;
/// import com.pulumi.asset.FileArchive;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         // Lambda function to invoke
///         var example = new Function("example", FunctionArgs.builder()
///             .code(new FileArchive("function.zip"))
///             .name("data_processor")
///             .role(lambdaRole.arn())
///             .handler("index.handler")
///             .runtime("python3.12")
///             .build());
///
///         // Invoke the function once during resource creation
///         var exampleInvocation = new Invocation("exampleInvocation", InvocationArgs.builder()
///             .functionName(example.name())
///             .input(serializeJson(
///                 jsonObject(
///                     jsonProperty("operation", "initialize"),
///                     jsonProperty("config", jsonObject(
///                         jsonProperty("environment", "production"),
///                         jsonProperty("debug", false)
///                     ))
///                 )))
///             .build());
///
///         ctx.export("initializationResult", StdFunctions.jsondecode(JsondecodeArgs.builder()
///             .input(exampleInvocation.result())
///             .build()).applyValue(_invoke -> _invoke.result().status()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Lambda function to invoke
///   example:
///     type: aws:lambda:Function
///     properties:
///       code:
///         fn::fileArchive: function.zip
///       name: data_processor
///       role: ${lambdaRole.arn}
///       handler: index.handler
///       runtime: python3.12
///   # Invoke the function once during resource creation
///   exampleInvocation:
///     type: aws:lambda:Invocation
///     name: example
///     properties:
///       functionName: ${example.name}
///       input:
///         fn::toJSON:
///           operation: initialize
///           config:
///             environment: production
///             debug: false
/// outputs:
///   # Use the result in other resources
///   initializationResult:
///     fn::invoke:
///       function: std:jsondecode
///       arguments:
///         input: ${exampleInvocation.result}
///       return: result.status
/// ```
///
///
/// ### Dynamic Invocation with Triggers
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.lambda.Invocation("example", {
///     functionName: exampleAwsLambdaFunction.functionName,
///     triggers: {
///         function_version: exampleAwsLambdaFunction.version,
///         config_hash: std.sha256Output({
///             input: JSON.stringify({
///                 environment: environment,
///                 timestamp: std.timestamp({}).then(invoke => invoke.result),
///             }),
///         }).result,
///     },
///     input: JSON.stringify({
///         operation: "process_data",
///         environment: environment,
///         batch_id: batchId.result,
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.lambda_.Invocation("example",
///     function_name=example_aws_lambda_function["functionName"],
///     triggers={
///         "function_version": example_aws_lambda_function["version"],
///         "config_hash": std.sha256_output(input=json.dumps({
///             "environment": environment,
///             "timestamp": std.timestamp().result,
///         })).result,
///     },
///     input=json.dumps({
///         "operation": "process_data",
///         "environment": environment,
///         "batch_id": batch_id["result"],
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.Invocation("example", new()
///     {
///         FunctionName = exampleAwsLambdaFunction.FunctionName,
///         Triggers =
///         {
///             { "function_version", exampleAwsLambdaFunction.Version },
///             { "config_hash", Std.Sha256.Invoke(new()
///             {
///                 Input = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["environment"] = environment,
///                     ["timestamp"] = Std.Timestamp.Invoke().Apply(invoke => invoke.Result),
///                 }),
///             }).Apply(invoke => invoke.Result) },
///         },
///         Input = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["operation"] = "process_data",
///             ["environment"] = environment,
///             ["batch_id"] = batchId.Result,
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"environment": environment,
/// 			"timestamp":   std.Timestamp(ctx, &std.TimestampArgs{}, nil).Result,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"operation":   "process_data",
/// 			"environment": environment,
/// 			"batch_id":    batchId.Result,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = lambda.NewInvocation(ctx, "example", &lambda.InvocationArgs{
/// 			FunctionName: pulumi.Any(exampleAwsLambdaFunction.FunctionName),
/// 			Triggers: pulumi.StringMap{
/// 				"function_version": pulumi.Any(exampleAwsLambdaFunction.Version),
/// 				"config_hash": std.Sha256Output(ctx, std.Sha256OutputArgs{
/// 					Input: json0,
/// 				}, nil).Result(),
/// 			},
/// 			Input: pulumi.String(json1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "aws_lambda_invocation" "example" {
///   function_name = exampleAwsLambdaFunction.functionName
///   triggers = {
///     "function_version" = exampleAwsLambdaFunction.version
///     "config_hash" = sha256(jsonencode({
///       "environment" = environment
///       "timestamp"   = timestamp()
///     }))
///   }
///   input = jsonencode({
///     "operation"   = "process_data"
///     "environment" = environment
///     "batch_id"    = batchId.result
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.Invocation;
/// import com.pulumi.aws.lambda.InvocationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.TimestampArgs;
/// import com.pulumi.std.inputs.Sha256Args;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Invocation("example", InvocationArgs.builder()
///             .functionName(exampleAwsLambdaFunction.functionName())
///             .triggers(Map.ofEntries(
///                 Map.entry("function_version", exampleAwsLambdaFunction.version()),
///                 Map.entry("config_hash", StdFunctions.sha256(Sha256Args.builder()
///                     .input(serializeJson(
///                         jsonObject(
///                             jsonProperty("environment", environment),
///                             jsonProperty("timestamp", StdFunctions.timestamp(TimestampArgs.builder()
///                                 .build()).result())
///                         )))
///                     .build()).applyValue(_invoke -> _invoke.result()))
///             ))
///             .input(serializeJson(
///                 jsonObject(
///                     jsonProperty("operation", "process_data"),
///                     jsonProperty("environment", environment),
///                     jsonProperty("batch_id", batchId.result())
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:Invocation
///     properties:
///       functionName: ${exampleAwsLambdaFunction.functionName}
///       triggers:
///         function_version: ${exampleAwsLambdaFunction.version}
///         config_hash:
///           fn::invoke:
///             function: std:sha256
///             arguments:
///               input:
///                 fn::toJSON:
///                   environment: ${environment}
///                   timestamp:
///                     fn::invoke:
///                       function: std:timestamp
///                       arguments: {}
///                       return: result
///             return: result
///       input:
///         fn::toJSON:
///           operation: process_data
///           environment: ${environment}
///           batch_id: ${batchId.result}
/// ```
///
///
/// ### CRUD Lifecycle Management
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.Invocation("example", {
///     functionName: exampleAwsLambdaFunction.functionName,
///     input: JSON.stringify({
///         resource_name: "database_setup",
///         database_url: exampleAwsDbInstance.endpoint,
///         credentials: {
///             username: dbUsername,
///             password: dbPassword,
///         },
///     }),
///     lifecycleScope: "CRUD",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.lambda_.Invocation("example",
///     function_name=example_aws_lambda_function["functionName"],
///     input=json.dumps({
///         "resource_name": "database_setup",
///         "database_url": example_aws_db_instance["endpoint"],
///         "credentials": {
///             "username": db_username,
///             "password": db_password,
///         },
///     }),
///     lifecycle_scope="CRUD")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.Invocation("example", new()
///     {
///         FunctionName = exampleAwsLambdaFunction.FunctionName,
///         Input = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["resource_name"] = "database_setup",
///             ["database_url"] = exampleAwsDbInstance.Endpoint,
///             ["credentials"] = new Dictionary<string, object?>
///             {
///                 ["username"] = dbUsername,
///                 ["password"] = dbPassword,
///             },
///         }),
///         LifecycleScope = "CRUD",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"resource_name": "database_setup",
/// 			"database_url":  exampleAwsDbInstance.Endpoint,
/// 			"credentials": map[string]interface{}{
/// 				"username": dbUsername,
/// 				"password": dbPassword,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = lambda.NewInvocation(ctx, "example", &lambda.InvocationArgs{
/// 			FunctionName:   pulumi.Any(exampleAwsLambdaFunction.FunctionName),
/// 			Input:          pulumi.String(json0),
/// 			LifecycleScope: pulumi.String("CRUD"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_lambda_invocation" "example" {
///   function_name = exampleAwsLambdaFunction.functionName
///   input = jsonencode({
///     "resource_name" = "database_setup"
///     "database_url"  = exampleAwsDbInstance.endpoint
///     "credentials" = {
///       "username" = dbUsername
///       "password" = dbPassword
///     }
///   })
///   lifecycle_scope = "CRUD"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.Invocation;
/// import com.pulumi.aws.lambda.InvocationArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Invocation("example", InvocationArgs.builder()
///             .functionName(exampleAwsLambdaFunction.functionName())
///             .input(serializeJson(
///                 jsonObject(
///                     jsonProperty("resource_name", "database_setup"),
///                     jsonProperty("database_url", exampleAwsDbInstance.endpoint()),
///                     jsonProperty("credentials", jsonObject(
///                         jsonProperty("username", dbUsername),
///                         jsonProperty("password", dbPassword)
///                     ))
///                 )))
///             .lifecycleScope("CRUD")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:Invocation
///     properties:
///       functionName: ${exampleAwsLambdaFunction.functionName}
///       input:
///         fn::toJSON:
///           resource_name: database_setup
///           database_url: ${exampleAwsDbInstance.endpoint}
///           credentials:
///             username: ${dbUsername}
///             password: ${dbPassword}
///       lifecycleScope: CRUD
/// ```
///
///
/// &gt; **Note:** `lifecycleScope = "CRUD"` will inject a key `tf` in the input event to pass lifecycle information! This allows the Lambda function to handle different lifecycle transitions uniquely. If you need to use a key `tf` in your own input JSON, the default key name can be overridden with the `pulumiKey` argument.
///
/// The lifecycle key gets added with subkeys:
///
/// * `action` - Action Pulumi performs on the resource. Values are `create`, `update`, or `delete`.
/// * `prevInput` - Input JSON payload from the previous invocation. This can be used to handle update and delete events.
///
/// When the resource from the CRUD example above is created, the Lambda will receive the following JSON payload:
///
/// ```json
/// {
///   "resource_name": "database_setup",
///   "database_url": "mydb.cluster-xyz.us-west-2.rds.amazonaws.com:5432",
///   "credentials": {
///     "username": "admin",
///     "password": "secret123"
///   },
///   "tf": {
///     "action": "create",
///     "prev_input": null
///   }
/// }
/// ```
///
/// If the `databaseUrl` changes, the Lambda will be invoked again with:
///
/// ```json
/// {
///   "resource_name": "database_setup",
///   "database_url": "mydb-new.cluster-abc.us-west-2.rds.amazonaws.com:5432",
///   "credentials": {
///     "username": "admin",
///     "password": "secret123"
///   },
///   "tf": {
///     "action": "update",
///     "prev_input": {
///       "resource_name": "database_setup",
///       "database_url": "mydb.cluster-xyz.us-west-2.rds.amazonaws.com:5432",
///       "credentials": {
///         "username": "admin",
///         "password": "secret123"
///       }
///     }
///   }
/// }
/// ```
///
/// When the invocation resource is removed, the final invocation will have:
///
/// ```json
/// {
///   "resource_name": "database_setup",
///   "database_url": "mydb-new.cluster-abc.us-west-2.rds.amazonaws.com:5432",
///   "credentials": {
///     "username": "admin",
///     "password": "secret123"
///   },
///   "tf": {
///     "action": "delete",
///     "prev_input": {
///       "resource_name": "database_setup",
///       "database_url": "mydb-new.cluster-abc.us-west-2.rds.amazonaws.com:5432",
///       "credentials": {
///         "username": "admin",
///         "password": "secret123"
///       }
///     }
///   }
/// }
/// ```
///
/// ## Import
///
/// Using `pulumi import`, import Lambda Invocation using the `function_name,qualifier,result_hash`. For example:
///
/// ```sh
/// $ pulumi import aws:lambda/invocation:Invocation test_lambda my_test_lambda_function,$LATEST,b326b5062b2f0e69046810717534cb09
/// ```
///
/// Because it is not possible to retrieve previous invocations, during the next update Pulumi will update the resource calling again the function.
/// To compute the `resultHash`, it is necessary to hash it with the standard `md5` hash function.
class Invocation extends pulumi.CustomResource {
  /// Name of the Lambda function.
  late final pulumi.Output<String> functionName;
  /// JSON payload to the Lambda function.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> input;
  /// Lifecycle scope of the resource to manage. Valid values are `CREATE_ONLY` and `CRUD`. Defaults to `CREATE_ONLY`. `CREATE_ONLY` will invoke the function only on creation or replacement. `CRUD` will invoke the function on each lifecycle event, and augment the input JSON payload with additional lifecycle information.
  late final pulumi.Output<String?> lifecycleScope;
  /// Qualifier (i.e., version) of the Lambda function. Defaults to `$LATEST`.
  late final pulumi.Output<String?> qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// String result of the Lambda function invocation.
  late final pulumi.Output<String> result;
  /// Tenant Id to serve invocations from specified tenant.
  late final pulumi.Output<String?> tenantId;
  late final pulumi.Output<String?> terraformKey;
  /// Map of arbitrary keys and values that, when changed, will trigger a re-invocation.
  late final pulumi.Output<Map<String, String>?> triggers;

  /// Creates a new [Invocation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Invocation]. {@macro pulumi_lambda_invocation_invocation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Invocation(
    String name, {
    InvocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/invocation:Invocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    functionName = registerOutput<String>('functionName');
    input = registerOutput<String>('input');
    lifecycleScope = registerOutput<String?>('lifecycleScope');
    qualifier = registerOutput<String?>('qualifier');
    region = registerOutput<String>('region');
    result = registerOutput<String>('result');
    tenantId = registerOutput<String?>('tenantId');
    terraformKey = registerOutput<String?>('terraformKey');
    triggers = registerOutput<Map<String, String>?>('triggers');
  }

  /// Gets an existing [Invocation] resource's state with the given [name] and [id].
  static Invocation get(
    String name,
    pulumi.Input<String> id, {
    InvocationState? state,
  }) {
    return Invocation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Invocation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/invocation:Invocation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    functionName = registerOutput<String>('functionName');
    input = registerOutput<String>('input');
    lifecycleScope = registerOutput<String?>('lifecycleScope');
    qualifier = registerOutput<String?>('qualifier');
    region = registerOutput<String>('region');
    result = registerOutput<String>('result');
    tenantId = registerOutput<String?>('tenantId');
    terraformKey = registerOutput<String?>('terraformKey');
    triggers = registerOutput<Map<String, String>?>('triggers');
  }
}
