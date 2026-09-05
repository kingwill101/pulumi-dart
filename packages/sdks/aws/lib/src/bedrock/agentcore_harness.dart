import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_args.dart';
import 'agentcore_harness_authorizer_configuration.dart';
import 'agentcore_harness_environment.dart';
import 'agentcore_harness_environment_actual.dart';
import 'agentcore_harness_environment_artifact.dart';
import 'agentcore_harness_memory.dart';
import 'agentcore_harness_memory_actual.dart';
import 'agentcore_harness_model.dart';
import 'agentcore_harness_skill.dart';
import 'agentcore_harness_state.dart';
import 'agentcore_harness_system_prompt.dart';
import 'agentcore_harness_timeouts.dart';
import 'agentcore_harness_tool.dart';
import 'agentcore_harness_truncation.dart';

/// Manages an AWS Bedrock AgentCore Harness. A Harness is a managed agent loop that wraps model configuration, tools, skills, memory, and compute environment into a single deployable unit.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["bedrock-agentcore.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const example = new aws.iam.Role("example", {
///     name: "bedrock-agentcore-harness-role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const exampleRolePolicy = new aws.iam.RolePolicy("example", {
///     role: example.name,
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Action: [
///                 "bedrock:InvokeModel",
///                 "bedrock:InvokeModelWithResponseStream",
///             ],
///             Resource: "*",
///         }],
///     }),
/// });
/// const exampleAgentcoreHarness = new aws.bedrock.AgentcoreHarness("example", {
///     model: {
///         bedrockModelConfig: {
///             modelId: "anthropic.claude-sonnet-4-20250514",
///         },
///     },
///     systemPrompts: [{
///         text: "You are a helpful assistant.",
///     }],
///     harnessName: "example_harness",
///     executionRoleArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["bedrock-agentcore.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// example = aws.iam.Role("example",
///     name="bedrock-agentcore-harness-role",
///     assume_role_policy=assume_role.json)
/// example_role_policy = aws.iam.RolePolicy("example",
///     role=example.name,
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Action": [
///                 "bedrock:InvokeModel",
///                 "bedrock:InvokeModelWithResponseStream",
///             ],
///             "Resource": "*",
///         }],
///     }))
/// example_agentcore_harness = aws.bedrock.AgentcoreHarness("example",
///     model={
///         "bedrock_model_config": {
///             "model_id": "anthropic.claude-sonnet-4-20250514",
///         },
///     },
///     system_prompts=[{
///         "text": "You are a helpful assistant.",
///     }],
///     harness_name="example_harness",
///     execution_role_arn=example.arn)
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
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "bedrock-agentcore.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "bedrock-agentcore-harness-role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleRolePolicy = new Aws.Iam.RolePolicy("example", new()
///     {
///         Role = example.Name,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Action"] = new[]
///                     {
///                         "bedrock:InvokeModel",
///                         "bedrock:InvokeModelWithResponseStream",
///                     },
///                     ["Resource"] = "*",
///                 },
///             },
///         }),
///     });
///
///     var exampleAgentcoreHarness = new Aws.Bedrock.AgentcoreHarness("example", new()
///     {
///         Model = new Aws.Bedrock.Inputs.AgentcoreHarnessModelArgs
///         {
///             BedrockModelConfig = new Aws.Bedrock.Inputs.AgentcoreHarnessModelBedrockModelConfigArgs
///             {
///                 ModelId = "anthropic.claude-sonnet-4-20250514",
///             },
///         },
///         SystemPrompts = new[]
///         {
///             new Aws.Bedrock.Inputs.AgentcoreHarnessSystemPromptArgs
///             {
///                 Text = "You are a helpful assistant.",
///             },
///         },
///         HarnessName = "example_harness",
///         ExecutionRoleArn = example.Arn,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"bedrock-agentcore.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("bedrock-agentcore-harness-role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Effect": "Allow",
/// 					"Action": []string{
/// 						"bedrock:InvokeModel",
/// 						"bedrock:InvokeModelWithResponseStream",
/// 					},
/// 					"Resource": "*",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = iam.NewRolePolicy(ctx, "example", &iam.RolePolicyArgs{
/// 			Role:   example.Name,
/// 			Policy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentcoreHarness(ctx, "example", &bedrock.AgentcoreHarnessArgs{
/// 			Model: &bedrock.AgentcoreHarnessModelArgs{
/// 				BedrockModelConfig: &bedrock.AgentcoreHarnessModelBedrockModelConfigArgs{
/// 					ModelId: pulumi.String("anthropic.claude-sonnet-4-20250514"),
/// 				},
/// 			},
/// 			SystemPrompts: bedrock.AgentcoreHarnessSystemPromptArray{
/// 				&bedrock.AgentcoreHarnessSystemPromptArgs{
/// 					Text: pulumi.String("You are a helpful assistant."),
/// 				},
/// 			},
/// 			HarnessName:      pulumi.String("example_harness"),
/// 			ExecutionRoleArn: example.Arn,
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
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["bedrock-agentcore.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
///
/// resource "aws_iam_role" "example" {
///   name               = "bedrock-agentcore-harness-role"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_iam_rolepolicy" "example" {
///   role = aws_iam_role.example.name
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Effect"   = "Allow"
///       "Action"   = ["bedrock:InvokeModel", "bedrock:InvokeModelWithResponseStream"]
///       "Resource" = "*"
///     }]
///   })
/// }
/// resource "aws_bedrock_agentcoreharness" "example" {
///   model = {
///     bedrock_model_config = {
///       model_id = "anthropic.claude-sonnet-4-20250514"
///     }
///   }
///   system_prompts {
///     text = "You are a helpful assistant."
///   }
///   harness_name       = "example_harness"
///   execution_role_arn = aws_iam_role.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.bedrock.AgentcoreHarness;
/// import com.pulumi.aws.bedrock.AgentcoreHarnessArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreHarnessModelArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreHarnessModelBedrockModelConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreHarnessSystemPromptArgs;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("bedrock-agentcore.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .name("bedrock-agentcore-harness-role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var exampleRolePolicy = new RolePolicy("exampleRolePolicy", RolePolicyArgs.builder()
///             .role(example.name())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Action", jsonArray(
///                             "bedrock:InvokeModel",
///                             "bedrock:InvokeModelWithResponseStream"
///                         )),
///                         jsonProperty("Resource", "*")
///                     )))
///                 )))
///             .build());
///
///         var exampleAgentcoreHarness = new AgentcoreHarness("exampleAgentcoreHarness", AgentcoreHarnessArgs.builder()
///             .model(AgentcoreHarnessModelArgs.builder()
///                 .bedrockModelConfig(AgentcoreHarnessModelBedrockModelConfigArgs.builder()
///                     .modelId("anthropic.claude-sonnet-4-20250514")
///                     .build())
///                 .build())
///             .systemPrompts(AgentcoreHarnessSystemPromptArgs.builder()
///                 .text("You are a helpful assistant.")
///                 .build())
///             .harnessName("example_harness")
///             .executionRoleArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       name: bedrock-agentcore-harness-role
///       assumeRolePolicy: ${assumeRole.json}
///   exampleRolePolicy:
///     type: aws:iam:RolePolicy
///     name: example
///     properties:
///       role: ${example.name}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Action:
///                 - bedrock:InvokeModel
///                 - bedrock:InvokeModelWithResponseStream
///               Resource: '*'
///   exampleAgentcoreHarness:
///     type: aws:bedrock:AgentcoreHarness
///     name: example
///     properties:
///       model:
///         bedrockModelConfig:
///           modelId: anthropic.claude-sonnet-4-20250514
///       systemPrompts:
///         - text: You are a helpful assistant.
///       harnessName: example_harness
///       executionRoleArn: ${example.arn}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - bedrock-agentcore.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ### With Tools and Truncation
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreHarness("example", {
///     model: {
///         bedrockModelConfig: {
///             modelId: "anthropic.claude-sonnet-4-20250514",
///             temperature: 0.7,
///             topP: 0.9,
///         },
///     },
///     systemPrompts: [{
///         text: "You are a coding assistant.",
///     }],
///     tools: [{
///         config: {
///             inlineFunction: {
///                 description: "Get the current weather for a location",
///                 inputSchema: JSON.stringify({
///                     type: "object",
///                     properties: {
///                         location: {
///                             type: "string",
///                             description: "City name",
///                         },
///                     },
///                     required: ["location"],
///                 }),
///             },
///         },
///         type: "inline_function",
///         name: "get_weather",
///     }],
///     truncations: [{
///         config: [{
///             slidingWindow: [{
///                 messagesCount: 50,
///             }],
///         }],
///         strategy: "sliding_window",
///     }],
///     harnessName: "example_with_tools",
///     executionRoleArn: exampleAwsIamRole.arn,
///     allowedTools: ["*"],
///     maxIterations: 10,
///     maxTokens: 4096,
///     timeoutSeconds: 300,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreHarness("example",
///     model={
///         "bedrock_model_config": {
///             "model_id": "anthropic.claude-sonnet-4-20250514",
///             "temperature": 0.7,
///             "top_p": 0.9,
///         },
///     },
///     system_prompts=[{
///         "text": "You are a coding assistant.",
///     }],
///     tools=[{
///         "config": {
///             "inline_function": {
///                 "description": "Get the current weather for a location",
///                 "input_schema": json.dumps({
///                     "type": "object",
///                     "properties": {
///                         "location": {
///                             "type": "string",
///                             "description": "City name",
///                         },
///                     },
///                     "required": ["location"],
///                 }),
///             },
///         },
///         "type": "inline_function",
///         "name": "get_weather",
///     }],
///     truncations=[{
///         "config": [{
///             "slidingWindow": [{
///                 "messagesCount": 50,
///             }],
///         }],
///         "strategy": "sliding_window",
///     }],
///     harness_name="example_with_tools",
///     execution_role_arn=example_aws_iam_role["arn"],
///     allowed_tools=["*"],
///     max_iterations=10,
///     max_tokens=4096,
///     timeout_seconds=300)
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
///     var example = new Aws.Bedrock.AgentcoreHarness("example", new()
///     {
///         Model = new Aws.Bedrock.Inputs.AgentcoreHarnessModelArgs
///         {
///             BedrockModelConfig = new Aws.Bedrock.Inputs.AgentcoreHarnessModelBedrockModelConfigArgs
///             {
///                 ModelId = "anthropic.claude-sonnet-4-20250514",
///                 Temperature = 0.7,
///                 TopP = 0.9,
///             },
///         },
///         SystemPrompts = new[]
///         {
///             new Aws.Bedrock.Inputs.AgentcoreHarnessSystemPromptArgs
///             {
///                 Text = "You are a coding assistant.",
///             },
///         },
///         Tools = new[]
///         {
///             new Aws.Bedrock.Inputs.AgentcoreHarnessToolArgs
///             {
///                 Config = new Aws.Bedrock.Inputs.AgentcoreHarnessToolConfigArgs
///                 {
///                     InlineFunction = new Aws.Bedrock.Inputs.AgentcoreHarnessToolConfigInlineFunctionArgs
///                     {
///                         Description = "Get the current weather for a location",
///                         InputSchema = JsonSerializer.Serialize(new Dictionary<string, object?>
///                         {
///                             ["type"] = "object",
///                             ["properties"] = new Dictionary<string, object?>
///                             {
///                                 ["location"] = new Dictionary<string, object?>
///                                 {
///                                     ["type"] = "string",
///                                     ["description"] = "City name",
///                                 },
///                             },
///                             ["required"] = new[]
///                             {
///                                 "location",
///                             },
///                         }),
///                     },
///                 },
///                 Type = "inline_function",
///                 Name = "get_weather",
///             },
///         },
///         Truncations = new[]
///         {
///             new Aws.Bedrock.Inputs.AgentcoreHarnessTruncationArgs
///             {
///                 Config = new[]
///                 {
///
///                     {
///                         { "slidingWindow", new[]
///                         {
///
///                             {
///                                 { "messagesCount", 50 },
///                             },
///                         } },
///                     },
///                 },
///                 Strategy = "sliding_window",
///             },
///         },
///         HarnessName = "example_with_tools",
///         ExecutionRoleArn = exampleAwsIamRole.Arn,
///         AllowedTools = new[]
///         {
///             "*",
///         },
///         MaxIterations = 10,
///         MaxTokens = 4096,
///         TimeoutSeconds = 300,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"type": "object",
/// 			"properties": map[string]map[string]string{
/// 				"location": map[string]string{
/// 					"type":        "string",
/// 					"description": "City name",
/// 				},
/// 			},
/// 			"required": []string{
/// 				"location",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = bedrock.NewAgentcoreHarness(ctx, "example", &bedrock.AgentcoreHarnessArgs{
/// 			Model: &bedrock.AgentcoreHarnessModelArgs{
/// 				BedrockModelConfig: &bedrock.AgentcoreHarnessModelBedrockModelConfigArgs{
/// 					ModelId:     pulumi.String("anthropic.claude-sonnet-4-20250514"),
/// 					Temperature: pulumi.Float64(0.7),
/// 					TopP:        pulumi.Float64(0.9),
/// 				},
/// 			},
/// 			SystemPrompts: bedrock.AgentcoreHarnessSystemPromptArray{
/// 				&bedrock.AgentcoreHarnessSystemPromptArgs{
/// 					Text: pulumi.String("You are a coding assistant."),
/// 				},
/// 			},
/// 			Tools: bedrock.AgentcoreHarnessToolArray{
/// 				&bedrock.AgentcoreHarnessToolArgs{
/// 					Config: &bedrock.AgentcoreHarnessToolConfigArgs{
/// 						InlineFunction: &bedrock.AgentcoreHarnessToolConfigInlineFunctionArgs{
/// 							Description: pulumi.String("Get the current weather for a location"),
/// 							InputSchema: pulumi.String(json0),
/// 						},
/// 					},
/// 					Type: pulumi.String("inline_function"),
/// 					Name: pulumi.String("get_weather"),
/// 				},
/// 			},
/// 			Truncations: bedrock.AgentcoreHarnessTruncationArray{
/// 				&bedrock.AgentcoreHarnessTruncationArgs{
/// 					Config: []map[string][]map[string]int{
/// 						{
/// 							"slidingWindow": []map[string]int{
/// 								{
/// 									"messagesCount": 50,
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Strategy: pulumi.String("sliding_window"),
/// 				},
/// 			},
/// 			HarnessName:      pulumi.String("example_with_tools"),
/// 			ExecutionRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			AllowedTools: pulumi.StringArray{
/// 				pulumi.String("*"),
/// 			},
/// 			MaxIterations:  pulumi.Int(10),
/// 			MaxTokens:      pulumi.Int(4096),
/// 			TimeoutSeconds: pulumi.Int(300),
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
/// resource "aws_bedrock_agentcoreharness" "example" {
///   model = {
///     bedrock_model_config = {
///       model_id    = "anthropic.claude-sonnet-4-20250514"
///       temperature = 0.7
///       top_p       = 0.9
///     }
///   }
///   system_prompts {
///     text = "You are a coding assistant."
///   }
///   tools {
///     config = {
///       inline_function = {
///         description = "Get the current weather for a location"
///         input_schema = jsonencode({
///           "type" = "object"
///           "properties" = {
///             "location" = {
///               "type"        = "string"
///               "description" = "City name"
///             }
///           }
///           "required" = ["location"]
///         })
///       }
///     }
///     type = "inline_function"
///     name = "get_weather"
///   }
///   truncations {
///     config = [{
///       "slidingWindow" = [{
///         "messagesCount" = 50
///       }]
///     }]
///     strategy = "sliding_window"
///   }
///   harness_name       = "example_with_tools"
///   execution_role_arn = exampleAwsIamRole.arn
///   allowed_tools      = ["*"]
///   max_iterations     = 10
///   max_tokens         = 4096
///   timeout_seconds    = 300
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreHarness;
/// import com.pulumi.aws.bedrock.AgentcoreHarnessArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreHarnessModelArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreHarnessModelBedrockModelConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreHarnessSystemPromptArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreHarnessToolArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreHarnessToolConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreHarnessToolConfigInlineFunctionArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreHarnessTruncationArgs;
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
///         var example = new AgentcoreHarness("example", AgentcoreHarnessArgs.builder()
///             .model(AgentcoreHarnessModelArgs.builder()
///                 .bedrockModelConfig(AgentcoreHarnessModelBedrockModelConfigArgs.builder()
///                     .modelId("anthropic.claude-sonnet-4-20250514")
///                     .temperature(0.7)
///                     .topP(0.9)
///                     .build())
///                 .build())
///             .systemPrompts(AgentcoreHarnessSystemPromptArgs.builder()
///                 .text("You are a coding assistant.")
///                 .build())
///             .tools(AgentcoreHarnessToolArgs.builder()
///                 .config(AgentcoreHarnessToolConfigArgs.builder()
///                     .inlineFunction(AgentcoreHarnessToolConfigInlineFunctionArgs.builder()
///                         .description("Get the current weather for a location")
///                         .inputSchema(serializeJson(
///                             jsonObject(
///                                 jsonProperty("type", "object"),
///                                 jsonProperty("properties", jsonObject(
///                                     jsonProperty("location", jsonObject(
///                                         jsonProperty("type", "string"),
///                                         jsonProperty("description", "City name")
///                                     ))
///                                 )),
///                                 jsonProperty("required", jsonArray("location"))
///                             )))
///                         .build())
///                     .build())
///                 .type("inline_function")
///                 .name("get_weather")
///                 .build())
///             .truncations(AgentcoreHarnessTruncationArgs.builder()
///                 .config(Arrays.asList(Map.of("slidingWindow", Arrays.asList(Map.of("messagesCount", 50)))))
///                 .strategy("sliding_window")
///                 .build())
///             .harnessName("example_with_tools")
///             .executionRoleArn(exampleAwsIamRole.arn())
///             .allowedTools("*")
///             .maxIterations(10)
///             .maxTokens(4096)
///             .timeoutSeconds(300)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreHarness
///     properties:
///       model:
///         bedrockModelConfig:
///           modelId: anthropic.claude-sonnet-4-20250514
///           temperature: 0.7
///           topP: 0.9
///       systemPrompts:
///         - text: You are a coding assistant.
///       tools:
///         - config:
///             inlineFunction:
///               description: Get the current weather for a location
///               inputSchema:
///                 fn::toJSON:
///                   type: object
///                   properties:
///                     location:
///                       type: string
///                       description: City name
///                   required:
///                     - location
///           type: inline_function
///           name: get_weather
///       truncations:
///         - config:
///             - slidingWindow:
///                 - messagesCount: 50
///           strategy: sliding_window
///       harnessName: example_with_tools
///       executionRoleArn: ${exampleAwsIamRole.arn}
///       allowedTools:
///         - '*'
///       maxIterations: 10
///       maxTokens: 4096
///       timeoutSeconds: 300
/// ```
///
///
/// ### With Managed Memory
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreHarness("example", {
///     model: {
///         bedrockModelConfig: {
///             modelId: "anthropic.claude-sonnet-4-20250514",
///         },
///     },
///     memory: {
///         managedMemoryConfiguration: {
///             eventExpiryDuration: 14,
///             strategies: [
///                 "SEMANTIC",
///                 "SUMMARIZATION",
///             ],
///         },
///     },
///     systemPrompts: [{
///         text: "You are a helpful assistant.",
///     }],
///     harnessName: "my_harness",
///     executionRoleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreHarness("example",
///     model={
///         "bedrock_model_config": {
///             "model_id": "anthropic.claude-sonnet-4-20250514",
///         },
///     },
///     memory={
///         "managed_memory_configuration": {
///             "event_expiry_duration": 14,
///             "strategies": [
///                 "SEMANTIC",
///                 "SUMMARIZATION",
///             ],
///         },
///     },
///     system_prompts=[{
///         "text": "You are a helpful assistant.",
///     }],
///     harness_name="my_harness",
///     execution_role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreHarness("example", new()
///     {
///         Model = new Aws.Bedrock.Inputs.AgentcoreHarnessModelArgs
///         {
///             BedrockModelConfig = new Aws.Bedrock.Inputs.AgentcoreHarnessModelBedrockModelConfigArgs
///             {
///                 ModelId = "anthropic.claude-sonnet-4-20250514",
///             },
///         },
///         Memory = new Aws.Bedrock.Inputs.AgentcoreHarnessMemoryArgs
///         {
///             ManagedMemoryConfiguration = new Aws.Bedrock.Inputs.AgentcoreHarnessMemoryManagedMemoryConfigurationArgs
///             {
///                 EventExpiryDuration = 14,
///                 Strategies = new[]
///                 {
///                     "SEMANTIC",
///                     "SUMMARIZATION",
///                 },
///             },
///         },
///         SystemPrompts = new[]
///         {
///             new Aws.Bedrock.Inputs.AgentcoreHarnessSystemPromptArgs
///             {
///                 Text = "You are a helpful assistant.",
///             },
///         },
///         HarnessName = "my_harness",
///         ExecutionRoleArn = exampleAwsIamRole.Arn,
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
/// 		_, err := bedrock.NewAgentcoreHarness(ctx, "example", &bedrock.AgentcoreHarnessArgs{
/// 			Model: &bedrock.AgentcoreHarnessModelArgs{
/// 				BedrockModelConfig: &bedrock.AgentcoreHarnessModelBedrockModelConfigArgs{
/// 					ModelId: pulumi.String("anthropic.claude-sonnet-4-20250514"),
/// 				},
/// 			},
/// 			Memory: &bedrock.AgentcoreHarnessMemoryArgs{
/// 				ManagedMemoryConfiguration: &bedrock.AgentcoreHarnessMemoryManagedMemoryConfigurationArgs{
/// 					EventExpiryDuration: pulumi.Int(14),
/// 					Strategies: pulumi.StringArray{
/// 						pulumi.String("SEMANTIC"),
/// 						pulumi.String("SUMMARIZATION"),
/// 					},
/// 				},
/// 			},
/// 			SystemPrompts: bedrock.AgentcoreHarnessSystemPromptArray{
/// 				&bedrock.AgentcoreHarnessSystemPromptArgs{
/// 					Text: pulumi.String("You are a helpful assistant."),
/// 				},
/// 			},
/// 			HarnessName:      pulumi.String("my_harness"),
/// 			ExecutionRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_bedrock_agentcoreharness" "example" {
///   model = {
///     bedrock_model_config = {
///       model_id = "anthropic.claude-sonnet-4-20250514"
///     }
///   }
///   memory = {
///     managed_memory_configuration = {
///       event_expiry_duration = 14
///       strategies            = ["SEMANTIC", "SUMMARIZATION"]
///     }
///   }
///   system_prompts {
///     text = "You are a helpful assistant."
///   }
///   harness_name       = "my_harness"
///   execution_role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreHarness;
/// import com.pulumi.aws.bedrock.AgentcoreHarnessArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreHarnessModelArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreHarnessModelBedrockModelConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreHarnessMemoryArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreHarnessMemoryManagedMemoryConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreHarnessSystemPromptArgs;
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
///         var example = new AgentcoreHarness("example", AgentcoreHarnessArgs.builder()
///             .model(AgentcoreHarnessModelArgs.builder()
///                 .bedrockModelConfig(AgentcoreHarnessModelBedrockModelConfigArgs.builder()
///                     .modelId("anthropic.claude-sonnet-4-20250514")
///                     .build())
///                 .build())
///             .memory(AgentcoreHarnessMemoryArgs.builder()
///                 .managedMemoryConfiguration(AgentcoreHarnessMemoryManagedMemoryConfigurationArgs.builder()
///                     .eventExpiryDuration(14)
///                     .strategies(
///                         "SEMANTIC",
///                         "SUMMARIZATION")
///                     .build())
///                 .build())
///             .systemPrompts(AgentcoreHarnessSystemPromptArgs.builder()
///                 .text("You are a helpful assistant.")
///                 .build())
///             .harnessName("my_harness")
///             .executionRoleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreHarness
///     properties:
///       model:
///         bedrockModelConfig:
///           modelId: anthropic.claude-sonnet-4-20250514
///       memory:
///         managedMemoryConfiguration:
///           eventExpiryDuration: 14
///           strategies:
///             - SEMANTIC
///             - SUMMARIZATION
///       systemPrompts:
///         - text: You are a helpful assistant.
///       harnessName: my_harness
///       executionRoleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `harnessId` (String) ID of the harness.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Bedrock AgentCore Harnesses using `harnessId`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreHarness:AgentcoreHarness example example-Ab12Cd34Ef
/// ```
class AgentcoreHarness extends pulumi.CustomResource {
  /// List of tool names allowed for the harness. Use `["*"]` to allow all tools.
  late final pulumi.Output<List<String>> allowedTools;
  /// ARN of the Harness.
  late final pulumi.Output<String> arn;
  /// Authorization configuration for authenticating requests. See `authorizerConfiguration` Block below.
  late final pulumi.Output<AgentcoreHarnessAuthorizerConfiguration?> authorizerConfiguration;
  /// Actual deployed environment configuration.
  late final pulumi.Output<List<AgentcoreHarnessEnvironmentActual>> environmentActuals;
  /// Environment artifact configuration. See `environmentArtifact` Block below.
  late final pulumi.Output<AgentcoreHarnessEnvironmentArtifact?> environmentArtifact;
  /// Map of environment variables.
  late final pulumi.Output<Map<String, String>?> environmentVariables;
  /// Compute environment configuration. See `environment` Block below.If not specified, configured values can be found in `environmentActual`. Clearing this value will leave the environment configuration as is, but Terraform will not track changes.
  late final pulumi.Output<List<AgentcoreHarnessEnvironment>?> environments;
  /// ARN of the IAM role that the harness assumes to access AWS services.
  late final pulumi.Output<String> executionRoleArn;
  /// Unique identifier of the Harness.
  late final pulumi.Output<String> harnessId;
  /// Name of the harness. Must be 1-40 characters, alphanumeric and underscores only.
  late final pulumi.Output<String> harnessName;
  /// Maximum number of iterations the agent loop can perform.
  late final pulumi.Output<int> maxIterations;
  /// Maximum number of tokens in the model response.
  late final pulumi.Output<int?> maxTokens;
  /// Memory configuration. See `memory` Block below. If not specified, configured values can be found in `memoryActual`. Clearing this value will reset the memory configuration to default values.
  late final pulumi.Output<AgentcoreHarnessMemory?> memory;
  /// Actual deployed memory configuration.
  late final pulumi.Output<List<AgentcoreHarnessMemoryActual>> memoryActuals;
  /// Model configuration for the harness. See `model` Block below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<AgentcoreHarnessModel> model;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Skill configurations. See `skill` Block below.
  late final pulumi.Output<List<AgentcoreHarnessSkill>?> skills;
  /// System prompt blocks for the harness. See `systemPrompt` Block below.
  late final pulumi.Output<List<AgentcoreHarnessSystemPrompt>?> systemPrompts;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Timeout in seconds for the harness execution.
  late final pulumi.Output<int> timeoutSeconds;
  late final pulumi.Output<AgentcoreHarnessTimeouts?> timeouts;
  /// Tool configurations. See `tool` Block below.
  late final pulumi.Output<List<AgentcoreHarnessTool>?> tools;
  /// Truncation configuration for conversation history. See `truncation` Block below.
  late final pulumi.Output<List<AgentcoreHarnessTruncation>> truncations;

  /// Creates a new [AgentcoreHarness].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreHarness]. {@macro pulumi_bedrock_agentcore_harness_agentcore_harness_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreHarness(
    String name, {
    AgentcoreHarnessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreHarness:AgentcoreHarness',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
          additionalSecretOutputs: const ['environmentVariables'],
        ) {
    allowedTools = registerOutput<List<String>>('allowedTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    authorizerConfiguration = registerOutput<AgentcoreHarnessAuthorizerConfiguration?>('authorizerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreHarnessAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environmentActuals = registerOutput<List<AgentcoreHarnessEnvironmentActual>>('environmentActuals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessEnvironmentActual>(guardedValue, (value) => AgentcoreHarnessEnvironmentActual.fromMap((value as Map).cast<String, dynamic>())); });
    environmentArtifact = registerOutput<AgentcoreHarnessEnvironmentArtifact?>('environmentArtifact', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreHarnessEnvironmentArtifact.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environmentVariables = registerOutput<Map<String, String>?>('environmentVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    environments = registerOutput<List<AgentcoreHarnessEnvironment>?>('environments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessEnvironment>(guardedValue, (value) => AgentcoreHarnessEnvironment.fromMap((value as Map).cast<String, dynamic>())); });
    executionRoleArn = registerOutput<String>('executionRoleArn');
    harnessId = registerOutput<String>('harnessId');
    harnessName = registerOutput<String>('harnessName');
    maxIterations = registerOutput<int>('maxIterations');
    maxTokens = registerOutput<int?>('maxTokens');
    memory = registerOutput<AgentcoreHarnessMemory?>('memory', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreHarnessMemory.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memoryActuals = registerOutput<List<AgentcoreHarnessMemoryActual>>('memoryActuals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessMemoryActual>(guardedValue, (value) => AgentcoreHarnessMemoryActual.fromMap((value as Map).cast<String, dynamic>())); });
    model = registerOutput<AgentcoreHarnessModel>('model', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreHarnessModel.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    skills = registerOutput<List<AgentcoreHarnessSkill>?>('skills', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessSkill>(guardedValue, (value) => AgentcoreHarnessSkill.fromMap((value as Map).cast<String, dynamic>())); });
    systemPrompts = registerOutput<List<AgentcoreHarnessSystemPrompt>?>('systemPrompts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessSystemPrompt>(guardedValue, (value) => AgentcoreHarnessSystemPrompt.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeoutSeconds = registerOutput<int>('timeoutSeconds');
    timeouts = registerOutput<AgentcoreHarnessTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreHarnessTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tools = registerOutput<List<AgentcoreHarnessTool>?>('tools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessTool>(guardedValue, (value) => AgentcoreHarnessTool.fromMap((value as Map).cast<String, dynamic>())); });
    truncations = registerOutput<List<AgentcoreHarnessTruncation>>('truncations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessTruncation>(guardedValue, (value) => AgentcoreHarnessTruncation.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [AgentcoreHarness] resource's state with the given [name] and [id].
  static AgentcoreHarness get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreHarnessState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentcoreHarness._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentcoreHarness._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreHarness:AgentcoreHarness',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedTools = registerOutput<List<String>>('allowedTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    authorizerConfiguration = registerOutput<AgentcoreHarnessAuthorizerConfiguration?>('authorizerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreHarnessAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environmentActuals = registerOutput<List<AgentcoreHarnessEnvironmentActual>>('environmentActuals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessEnvironmentActual>(guardedValue, (value) => AgentcoreHarnessEnvironmentActual.fromMap((value as Map).cast<String, dynamic>())); });
    environmentArtifact = registerOutput<AgentcoreHarnessEnvironmentArtifact?>('environmentArtifact', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreHarnessEnvironmentArtifact.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environmentVariables = registerOutput<Map<String, String>?>('environmentVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    environments = registerOutput<List<AgentcoreHarnessEnvironment>?>('environments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessEnvironment>(guardedValue, (value) => AgentcoreHarnessEnvironment.fromMap((value as Map).cast<String, dynamic>())); });
    executionRoleArn = registerOutput<String>('executionRoleArn');
    harnessId = registerOutput<String>('harnessId');
    harnessName = registerOutput<String>('harnessName');
    maxIterations = registerOutput<int>('maxIterations');
    maxTokens = registerOutput<int?>('maxTokens');
    memory = registerOutput<AgentcoreHarnessMemory?>('memory', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreHarnessMemory.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memoryActuals = registerOutput<List<AgentcoreHarnessMemoryActual>>('memoryActuals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessMemoryActual>(guardedValue, (value) => AgentcoreHarnessMemoryActual.fromMap((value as Map).cast<String, dynamic>())); });
    model = registerOutput<AgentcoreHarnessModel>('model', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreHarnessModel.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    skills = registerOutput<List<AgentcoreHarnessSkill>?>('skills', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessSkill>(guardedValue, (value) => AgentcoreHarnessSkill.fromMap((value as Map).cast<String, dynamic>())); });
    systemPrompts = registerOutput<List<AgentcoreHarnessSystemPrompt>?>('systemPrompts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessSystemPrompt>(guardedValue, (value) => AgentcoreHarnessSystemPrompt.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeoutSeconds = registerOutput<int>('timeoutSeconds');
    timeouts = registerOutput<AgentcoreHarnessTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreHarnessTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tools = registerOutput<List<AgentcoreHarnessTool>?>('tools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessTool>(guardedValue, (value) => AgentcoreHarnessTool.fromMap((value as Map).cast<String, dynamic>())); });
    truncations = registerOutput<List<AgentcoreHarnessTruncation>>('truncations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessTruncation>(guardedValue, (value) => AgentcoreHarnessTruncation.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [AgentcoreHarness] resource.
  AgentcoreHarness.reference(String urn)
    : super(
        'aws:bedrock/agentcoreHarness:AgentcoreHarness',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['environmentVariables'],
        isResourceReference: true,
      ) {
    allowedTools = registerOutput<List<String>>('allowedTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    authorizerConfiguration = registerOutput<AgentcoreHarnessAuthorizerConfiguration?>('authorizerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreHarnessAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environmentActuals = registerOutput<List<AgentcoreHarnessEnvironmentActual>>('environmentActuals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessEnvironmentActual>(guardedValue, (value) => AgentcoreHarnessEnvironmentActual.fromMap((value as Map).cast<String, dynamic>())); });
    environmentArtifact = registerOutput<AgentcoreHarnessEnvironmentArtifact?>('environmentArtifact', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreHarnessEnvironmentArtifact.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environmentVariables = registerOutput<Map<String, String>?>('environmentVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    environments = registerOutput<List<AgentcoreHarnessEnvironment>?>('environments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessEnvironment>(guardedValue, (value) => AgentcoreHarnessEnvironment.fromMap((value as Map).cast<String, dynamic>())); });
    executionRoleArn = registerOutput<String>('executionRoleArn');
    harnessId = registerOutput<String>('harnessId');
    harnessName = registerOutput<String>('harnessName');
    maxIterations = registerOutput<int>('maxIterations');
    maxTokens = registerOutput<int?>('maxTokens');
    memory = registerOutput<AgentcoreHarnessMemory?>('memory', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreHarnessMemory.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memoryActuals = registerOutput<List<AgentcoreHarnessMemoryActual>>('memoryActuals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessMemoryActual>(guardedValue, (value) => AgentcoreHarnessMemoryActual.fromMap((value as Map).cast<String, dynamic>())); });
    model = registerOutput<AgentcoreHarnessModel>('model', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreHarnessModel.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    skills = registerOutput<List<AgentcoreHarnessSkill>?>('skills', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessSkill>(guardedValue, (value) => AgentcoreHarnessSkill.fromMap((value as Map).cast<String, dynamic>())); });
    systemPrompts = registerOutput<List<AgentcoreHarnessSystemPrompt>?>('systemPrompts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessSystemPrompt>(guardedValue, (value) => AgentcoreHarnessSystemPrompt.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeoutSeconds = registerOutput<int>('timeoutSeconds');
    timeouts = registerOutput<AgentcoreHarnessTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreHarnessTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tools = registerOutput<List<AgentcoreHarnessTool>?>('tools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessTool>(guardedValue, (value) => AgentcoreHarnessTool.fromMap((value as Map).cast<String, dynamic>())); });
    truncations = registerOutput<List<AgentcoreHarnessTruncation>>('truncations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreHarnessTruncation>(guardedValue, (value) => AgentcoreHarnessTruncation.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
