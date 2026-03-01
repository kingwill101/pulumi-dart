import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_action_group_action_group_executor.dart';
import 'agent_agent_action_group_api_schema.dart';
import 'agent_agent_action_group_args.dart';
import 'agent_agent_action_group_function_schema.dart';
import 'agent_agent_action_group_timeouts.dart';

/// Resource for managing an AWS Agents for Amazon Bedrock Agent Action Group.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.bedrock.AgentAgentActionGroup("example", {
///     actionGroupName: "example",
///     agentId: "GGRRAED6JP",
///     agentVersion: "DRAFT",
///     skipResourceInUseCheck: true,
///     actionGroupExecutor: {
///         lambda: "arn:aws:lambda:us-west-2:123456789012:function:example-function",
///     },
///     apiSchema: {
///         payload: std.file({
///             input: "path/to/schema.yaml",
///         }).then(invoke => invoke.result),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.bedrock.AgentAgentActionGroup("example",
///     action_group_name="example",
///     agent_id="GGRRAED6JP",
///     agent_version="DRAFT",
///     skip_resource_in_use_check=True,
///     action_group_executor={
///         "lambda_": "arn:aws:lambda:us-west-2:123456789012:function:example-function",
///     },
///     api_schema={
///         "payload": std.file(input="path/to/schema.yaml").result,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentAgentActionGroup("example", new()
///     {
///         ActionGroupName = "example",
///         AgentId = "GGRRAED6JP",
///         AgentVersion = "DRAFT",
///         SkipResourceInUseCheck = true,
///         ActionGroupExecutor = new Aws.Bedrock.Inputs.AgentAgentActionGroupActionGroupExecutorArgs
///         {
///             Lambda = "arn:aws:lambda:us-west-2:123456789012:function:example-function",
///         },
///         ApiSchema = new Aws.Bedrock.Inputs.AgentAgentActionGroupApiSchemaArgs
///         {
///             Payload = Std.File.Invoke(new()
///             {
///                 Input = "path/to/schema.yaml",
///             }).Apply(invoke => invoke.Result),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "path/to/schema.yaml",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentAgentActionGroup(ctx, "example", &bedrock.AgentAgentActionGroupArgs{
/// 			ActionGroupName:        pulumi.String("example"),
/// 			AgentId:                pulumi.String("GGRRAED6JP"),
/// 			AgentVersion:           pulumi.String("DRAFT"),
/// 			SkipResourceInUseCheck: pulumi.Bool(true),
/// 			ActionGroupExecutor: &bedrock.AgentAgentActionGroupActionGroupExecutorArgs{
/// 				Lambda: pulumi.String("arn:aws:lambda:us-west-2:123456789012:function:example-function"),
/// 			},
/// 			ApiSchema: &bedrock.AgentAgentActionGroupApiSchemaArgs{
/// 				Payload: pulumi.String(invokeFile.Result),
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
/// import com.pulumi.aws.bedrock.AgentAgentActionGroup;
/// import com.pulumi.aws.bedrock.AgentAgentActionGroupArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentAgentActionGroupActionGroupExecutorArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentAgentActionGroupApiSchemaArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var example = new AgentAgentActionGroup("example", AgentAgentActionGroupArgs.builder()
///             .actionGroupName("example")
///             .agentId("GGRRAED6JP")
///             .agentVersion("DRAFT")
///             .skipResourceInUseCheck(true)
///             .actionGroupExecutor(AgentAgentActionGroupActionGroupExecutorArgs.builder()
///                 .lambda("arn:aws:lambda:us-west-2:123456789012:function:example-function")
///                 .build())
///             .apiSchema(AgentAgentActionGroupApiSchemaArgs.builder()
///                 .payload(StdFunctions.file(FileArgs.builder()
///                     .input("path/to/schema.yaml")
///                     .build()).result())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentAgentActionGroup
///     properties:
///       actionGroupName: example
///       agentId: GGRRAED6JP
///       agentVersion: DRAFT
///       skipResourceInUseCheck: true
///       actionGroupExecutor:
///         lambda: arn:aws:lambda:us-west-2:123456789012:function:example-function
///       apiSchema:
///         payload:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: path/to/schema.yaml
///             return: result
/// ```
///
///
/// ### API Schema in S3 Bucket
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentAgentActionGroup("example", {
///     actionGroupName: "example",
///     agentId: "GGRRAED6JP",
///     agentVersion: "DRAFT",
///     skipResourceInUseCheck: true,
///     actionGroupExecutor: {
///         lambda: "arn:aws:lambda:us-west-2:123456789012:function:example-function",
///     },
///     apiSchema: {
///         s3: {
///             s3BucketName: "example-bucket",
///             s3ObjectKey: "path/to/schema.json",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentAgentActionGroup("example",
///     action_group_name="example",
///     agent_id="GGRRAED6JP",
///     agent_version="DRAFT",
///     skip_resource_in_use_check=True,
///     action_group_executor={
///         "lambda_": "arn:aws:lambda:us-west-2:123456789012:function:example-function",
///     },
///     api_schema={
///         "s3": {
///             "s3_bucket_name": "example-bucket",
///             "s3_object_key": "path/to/schema.json",
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
///     var example = new Aws.Bedrock.AgentAgentActionGroup("example", new()
///     {
///         ActionGroupName = "example",
///         AgentId = "GGRRAED6JP",
///         AgentVersion = "DRAFT",
///         SkipResourceInUseCheck = true,
///         ActionGroupExecutor = new Aws.Bedrock.Inputs.AgentAgentActionGroupActionGroupExecutorArgs
///         {
///             Lambda = "arn:aws:lambda:us-west-2:123456789012:function:example-function",
///         },
///         ApiSchema = new Aws.Bedrock.Inputs.AgentAgentActionGroupApiSchemaArgs
///         {
///             S3 = new Aws.Bedrock.Inputs.AgentAgentActionGroupApiSchemaS3Args
///             {
///                 S3BucketName = "example-bucket",
///                 S3ObjectKey = "path/to/schema.json",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentAgentActionGroup(ctx, "example", &bedrock.AgentAgentActionGroupArgs{
/// 			ActionGroupName:        pulumi.String("example"),
/// 			AgentId:                pulumi.String("GGRRAED6JP"),
/// 			AgentVersion:           pulumi.String("DRAFT"),
/// 			SkipResourceInUseCheck: pulumi.Bool(true),
/// 			ActionGroupExecutor: &bedrock.AgentAgentActionGroupActionGroupExecutorArgs{
/// 				Lambda: pulumi.String("arn:aws:lambda:us-west-2:123456789012:function:example-function"),
/// 			},
/// 			ApiSchema: &bedrock.AgentAgentActionGroupApiSchemaArgs{
/// 				S3: &bedrock.AgentAgentActionGroupApiSchemaS3Args{
/// 					S3BucketName: pulumi.String("example-bucket"),
/// 					S3ObjectKey:  pulumi.String("path/to/schema.json"),
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
/// import com.pulumi.aws.bedrock.AgentAgentActionGroup;
/// import com.pulumi.aws.bedrock.AgentAgentActionGroupArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentAgentActionGroupActionGroupExecutorArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentAgentActionGroupApiSchemaArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentAgentActionGroupApiSchemaS3Args;
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
///         var example = new AgentAgentActionGroup("example", AgentAgentActionGroupArgs.builder()
///             .actionGroupName("example")
///             .agentId("GGRRAED6JP")
///             .agentVersion("DRAFT")
///             .skipResourceInUseCheck(true)
///             .actionGroupExecutor(AgentAgentActionGroupActionGroupExecutorArgs.builder()
///                 .lambda("arn:aws:lambda:us-west-2:123456789012:function:example-function")
///                 .build())
///             .apiSchema(AgentAgentActionGroupApiSchemaArgs.builder()
///                 .s3(AgentAgentActionGroupApiSchemaS3Args.builder()
///                     .s3BucketName("example-bucket")
///                     .s3ObjectKey("path/to/schema.json")
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
///     type: aws:bedrock:AgentAgentActionGroup
///     properties:
///       actionGroupName: example
///       agentId: GGRRAED6JP
///       agentVersion: DRAFT
///       skipResourceInUseCheck: true
///       actionGroupExecutor:
///         lambda: arn:aws:lambda:us-west-2:123456789012:function:example-function
///       apiSchema:
///         s3:
///           s3BucketName: example-bucket
///           s3ObjectKey: path/to/schema.json
/// ```
///
///
/// ### Function Schema (Simplified Schema)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentAgentActionGroup("example", {
///     actionGroupName: "example",
///     agentId: "GGRRAED6JP",
///     agentVersion: "DRAFT",
///     skipResourceInUseCheck: true,
///     actionGroupExecutor: {
///         lambda: "arn:aws:lambda:us-west-2:123456789012:function:example-function",
///     },
///     functionSchema: {
///         memberFunctions: {
///             functions: [{
///                 name: "example-function",
///                 description: "Example function",
///                 parameters: [
///                     {
///                         mapBlockKey: "param1",
///                         type: "string",
///                         description: "The first parameter",
///                         required: true,
///                     },
///                     {
///                         mapBlockKey: "param2",
///                         type: "integer",
///                         description: "The second parameter",
///                         required: false,
///                     },
///                 ],
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentAgentActionGroup("example",
///     action_group_name="example",
///     agent_id="GGRRAED6JP",
///     agent_version="DRAFT",
///     skip_resource_in_use_check=True,
///     action_group_executor={
///         "lambda_": "arn:aws:lambda:us-west-2:123456789012:function:example-function",
///     },
///     function_schema={
///         "member_functions": {
///             "functions": [{
///                 "name": "example-function",
///                 "description": "Example function",
///                 "parameters": [
///                     {
///                         "map_block_key": "param1",
///                         "type": "string",
///                         "description": "The first parameter",
///                         "required": True,
///                     },
///                     {
///                         "map_block_key": "param2",
///                         "type": "integer",
///                         "description": "The second parameter",
///                         "required": False,
///                     },
///                 ],
///             }],
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
///     var example = new Aws.Bedrock.AgentAgentActionGroup("example", new()
///     {
///         ActionGroupName = "example",
///         AgentId = "GGRRAED6JP",
///         AgentVersion = "DRAFT",
///         SkipResourceInUseCheck = true,
///         ActionGroupExecutor = new Aws.Bedrock.Inputs.AgentAgentActionGroupActionGroupExecutorArgs
///         {
///             Lambda = "arn:aws:lambda:us-west-2:123456789012:function:example-function",
///         },
///         FunctionSchema = new Aws.Bedrock.Inputs.AgentAgentActionGroupFunctionSchemaArgs
///         {
///             MemberFunctions = new Aws.Bedrock.Inputs.AgentAgentActionGroupFunctionSchemaMemberFunctionsArgs
///             {
///                 Functions = new[]
///                 {
///                     new Aws.Bedrock.Inputs.AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionArgs
///                     {
///                         Name = "example-function",
///                         Description = "Example function",
///                         Parameters = new[]
///                         {
///                             new Aws.Bedrock.Inputs.AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameterArgs
///                             {
///                                 MapBlockKey = "param1",
///                                 Type = "string",
///                                 Description = "The first parameter",
///                                 Required = true,
///                             },
///                             new Aws.Bedrock.Inputs.AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameterArgs
///                             {
///                                 MapBlockKey = "param2",
///                                 Type = "integer",
///                                 Description = "The second parameter",
///                                 Required = false,
///                             },
///                         },
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentAgentActionGroup(ctx, "example", &bedrock.AgentAgentActionGroupArgs{
/// 			ActionGroupName:        pulumi.String("example"),
/// 			AgentId:                pulumi.String("GGRRAED6JP"),
/// 			AgentVersion:           pulumi.String("DRAFT"),
/// 			SkipResourceInUseCheck: pulumi.Bool(true),
/// 			ActionGroupExecutor: &bedrock.AgentAgentActionGroupActionGroupExecutorArgs{
/// 				Lambda: pulumi.String("arn:aws:lambda:us-west-2:123456789012:function:example-function"),
/// 			},
/// 			FunctionSchema: &bedrock.AgentAgentActionGroupFunctionSchemaArgs{
/// 				MemberFunctions: &bedrock.AgentAgentActionGroupFunctionSchemaMemberFunctionsArgs{
/// 					Functions: bedrock.AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionArray{
/// 						&bedrock.AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionArgs{
/// 							Name:        pulumi.String("example-function"),
/// 							Description: pulumi.String("Example function"),
/// 							Parameters: bedrock.AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameterArray{
/// 								&bedrock.AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameterArgs{
/// 									MapBlockKey: pulumi.String("param1"),
/// 									Type:        pulumi.String("string"),
/// 									Description: pulumi.String("The first parameter"),
/// 									Required:    pulumi.Bool(true),
/// 								},
/// 								&bedrock.AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameterArgs{
/// 									MapBlockKey: pulumi.String("param2"),
/// 									Type:        pulumi.String("integer"),
/// 									Description: pulumi.String("The second parameter"),
/// 									Required:    pulumi.Bool(false),
/// 								},
/// 							},
/// 						},
/// 					},
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
/// import com.pulumi.aws.bedrock.AgentAgentActionGroup;
/// import com.pulumi.aws.bedrock.AgentAgentActionGroupArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentAgentActionGroupActionGroupExecutorArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentAgentActionGroupFunctionSchemaArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentAgentActionGroupFunctionSchemaMemberFunctionsArgs;
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
///         var example = new AgentAgentActionGroup("example", AgentAgentActionGroupArgs.builder()
///             .actionGroupName("example")
///             .agentId("GGRRAED6JP")
///             .agentVersion("DRAFT")
///             .skipResourceInUseCheck(true)
///             .actionGroupExecutor(AgentAgentActionGroupActionGroupExecutorArgs.builder()
///                 .lambda("arn:aws:lambda:us-west-2:123456789012:function:example-function")
///                 .build())
///             .functionSchema(AgentAgentActionGroupFunctionSchemaArgs.builder()
///                 .memberFunctions(AgentAgentActionGroupFunctionSchemaMemberFunctionsArgs.builder()
///                     .functions(AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionArgs.builder()
///                         .name("example-function")
///                         .description("Example function")
///                         .parameters(
///                             AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameterArgs.builder()
///                                 .mapBlockKey("param1")
///                                 .type("string")
///                                 .description("The first parameter")
///                                 .required(true)
///                                 .build(),
///                             AgentAgentActionGroupFunctionSchemaMemberFunctionsFunctionParameterArgs.builder()
///                                 .mapBlockKey("param2")
///                                 .type("integer")
///                                 .description("The second parameter")
///                                 .required(false)
///                                 .build())
///                         .build())
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
///     type: aws:bedrock:AgentAgentActionGroup
///     properties:
///       actionGroupName: example
///       agentId: GGRRAED6JP
///       agentVersion: DRAFT
///       skipResourceInUseCheck: true
///       actionGroupExecutor:
///         lambda: arn:aws:lambda:us-west-2:123456789012:function:example-function
///       functionSchema:
///         memberFunctions:
///           functions:
///             - name: example-function
///               description: Example function
///               parameters:
///                 - mapBlockKey: param1
///                   type: string
///                   description: The first parameter
///                   required: true
///                 - mapBlockKey: param2
///                   type: integer
///                   description: The second parameter
///                   required: false
/// ```
///
///
/// ### Return of Control
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.bedrock.AgentAgentActionGroup("example", {
///     actionGroupName: "example",
///     agentId: "GGRRAED6JP",
///     agentVersion: "DRAFT",
///     skipResourceInUseCheck: true,
///     actionGroupExecutor: {
///         customControl: "RETURN_CONTROL",
///     },
///     apiSchema: {
///         payload: std.file({
///             input: "path/to/schema.yaml",
///         }).then(invoke => invoke.result),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.bedrock.AgentAgentActionGroup("example",
///     action_group_name="example",
///     agent_id="GGRRAED6JP",
///     agent_version="DRAFT",
///     skip_resource_in_use_check=True,
///     action_group_executor={
///         "custom_control": "RETURN_CONTROL",
///     },
///     api_schema={
///         "payload": std.file(input="path/to/schema.yaml").result,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentAgentActionGroup("example", new()
///     {
///         ActionGroupName = "example",
///         AgentId = "GGRRAED6JP",
///         AgentVersion = "DRAFT",
///         SkipResourceInUseCheck = true,
///         ActionGroupExecutor = new Aws.Bedrock.Inputs.AgentAgentActionGroupActionGroupExecutorArgs
///         {
///             CustomControl = "RETURN_CONTROL",
///         },
///         ApiSchema = new Aws.Bedrock.Inputs.AgentAgentActionGroupApiSchemaArgs
///         {
///             Payload = Std.File.Invoke(new()
///             {
///                 Input = "path/to/schema.yaml",
///             }).Apply(invoke => invoke.Result),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "path/to/schema.yaml",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentAgentActionGroup(ctx, "example", &bedrock.AgentAgentActionGroupArgs{
/// 			ActionGroupName:        pulumi.String("example"),
/// 			AgentId:                pulumi.String("GGRRAED6JP"),
/// 			AgentVersion:           pulumi.String("DRAFT"),
/// 			SkipResourceInUseCheck: pulumi.Bool(true),
/// 			ActionGroupExecutor: &bedrock.AgentAgentActionGroupActionGroupExecutorArgs{
/// 				CustomControl: pulumi.String("RETURN_CONTROL"),
/// 			},
/// 			ApiSchema: &bedrock.AgentAgentActionGroupApiSchemaArgs{
/// 				Payload: pulumi.String(invokeFile.Result),
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
/// import com.pulumi.aws.bedrock.AgentAgentActionGroup;
/// import com.pulumi.aws.bedrock.AgentAgentActionGroupArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentAgentActionGroupActionGroupExecutorArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentAgentActionGroupApiSchemaArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var example = new AgentAgentActionGroup("example", AgentAgentActionGroupArgs.builder()
///             .actionGroupName("example")
///             .agentId("GGRRAED6JP")
///             .agentVersion("DRAFT")
///             .skipResourceInUseCheck(true)
///             .actionGroupExecutor(AgentAgentActionGroupActionGroupExecutorArgs.builder()
///                 .customControl("RETURN_CONTROL")
///                 .build())
///             .apiSchema(AgentAgentActionGroupApiSchemaArgs.builder()
///                 .payload(StdFunctions.file(FileArgs.builder()
///                     .input("path/to/schema.yaml")
///                     .build()).result())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentAgentActionGroup
///     properties:
///       actionGroupName: example
///       agentId: GGRRAED6JP
///       agentVersion: DRAFT
///       skipResourceInUseCheck: true
///       actionGroupExecutor:
///         customControl: RETURN_CONTROL
///       apiSchema:
///         payload:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: path/to/schema.yaml
///             return: result
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Agents for Amazon Bedrock Agent Action Group the action group ID, the agent ID, and the agent version separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentAgentActionGroup:AgentAgentActionGroup example MMAUDBZTH4,GGRRAED6JP,DRAFT
/// ```
class AgentAgentActionGroup extends pulumi.CustomResource {
  /// ARN of the Lambda function containing the business logic that is carried out upon invoking the action or custom control method for handling the information elicited from the user. See `action_group_executor` Block for details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<AgentAgentActionGroupActionGroupExecutor?>
  actionGroupExecutor;

  /// Unique identifier of the action group.
  late final pulumi.Output<String> actionGroupId;

  /// Name of the action group.
  late final pulumi.Output<String> actionGroupName;

  /// Whether the action group is available for the agent to invoke or not when sending an [InvokeAgent](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html) request. Valid values: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> actionGroupState;

  /// The unique identifier of the agent for which to create the action group.
  late final pulumi.Output<String> agentId;

  /// Version of the agent for which to create the action group. Valid values: `DRAFT`.
  late final pulumi.Output<String> agentVersion;

  /// Either details about the S3 object containing the OpenAPI schema for the action group or the JSON or YAML-formatted payload defining the schema. For more information, see [Action group OpenAPI schemas](https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html). See `api_schema` Block for details.
  late final pulumi.Output<AgentAgentActionGroupApiSchema?> apiSchema;

  /// Description of the action group.
  late final pulumi.Output<String?> description;

  /// Describes the function schema for the action group.
  /// Each function represents an action in an action group.
  /// See `function_schema` Block for details.
  late final pulumi.Output<AgentAgentActionGroupFunctionSchema?> functionSchema;

  /// To allow your agent to request the user for additional information when trying to complete a task, set this argument to `AMAZON.UserInput`. You must leave the `description`, `api_schema`, and `action_group_executor` arguments blank for this action group. Valid values: `AMAZON.UserInput`.
  late final pulumi.Output<String?> parentActionGroupSignature;

  /// Whether or not to prepare the agent after creation or modification. Defaults to `true`.
  late final pulumi.Output<bool> prepareAgent;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Whether the in-use check is skipped when deleting the action group.
  late final pulumi.Output<bool> skipResourceInUseCheck;
  late final pulumi.Output<AgentAgentActionGroupTimeouts?> timeouts;

  /// Creates a new [AgentAgentActionGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentAgentActionGroup]. {@macro pulumi_bedrock_agent_agent_action_group_agent_agent_action_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentAgentActionGroup(
    String name, {
    AgentAgentActionGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:bedrock/agentAgentActionGroup:AgentAgentActionGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.actionGroupExecutor =
        registerOutput<AgentAgentActionGroupActionGroupExecutor?>(
          'actionGroupExecutor',
        );
    this.actionGroupId = registerOutput<String>('actionGroupId');
    this.actionGroupName = registerOutput<String>('actionGroupName');
    this.actionGroupState = registerOutput<String>('actionGroupState');
    this.agentId = registerOutput<String>('agentId');
    this.agentVersion = registerOutput<String>('agentVersion');
    this.apiSchema = registerOutput<AgentAgentActionGroupApiSchema?>(
      'apiSchema',
    );
    this.description = registerOutput<String?>('description');
    this.functionSchema = registerOutput<AgentAgentActionGroupFunctionSchema?>(
      'functionSchema',
    );
    this.parentActionGroupSignature = registerOutput<String?>(
      'parentActionGroupSignature',
    );
    this.prepareAgent = registerOutput<bool>('prepareAgent');
    this.region = registerOutput<String>('region');
    this.skipResourceInUseCheck = registerOutput<bool>(
      'skipResourceInUseCheck',
    );
    this.timeouts = registerOutput<AgentAgentActionGroupTimeouts?>('timeouts');
  }
}
