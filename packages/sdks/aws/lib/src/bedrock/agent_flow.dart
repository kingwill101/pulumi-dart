import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_args.dart';
import 'agent_flow_definition.dart';
import 'agent_flow_state.dart';
import 'agent_flow_timeouts.dart';

/// Resource for managing an AWS Bedrock Agents Flow.
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
/// const example = new aws.bedrock.AgentFlow("example", {
///     name: "example-flow",
///     executionRoleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentFlow("example",
///     name="example-flow",
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
///     var example = new Aws.Bedrock.AgentFlow("example", new()
///     {
///         Name = "example-flow",
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
/// 		_, err := bedrock.NewAgentFlow(ctx, "example", &bedrock.AgentFlowArgs{
/// 			Name:             pulumi.String("example-flow"),
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
/// resource "aws_bedrock_agentflow" "example" {
///   name               = "example-flow"
///   execution_role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentFlow;
/// import com.pulumi.aws.bedrock.AgentFlowArgs;
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
///         var example = new AgentFlow("example", AgentFlowArgs.builder()
///             .name("example-flow")
///             .executionRoleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentFlow
///     properties:
///       name: example-flow
///       executionRoleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### Default definition
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentFlow("example", {
///     definition: {
///         connections: [
///             {
///                 configuration: {
///                     data: {
///                         sourceOutput: "document",
///                         targetInput: "topic",
///                     },
///                 },
///                 name: "FlowInputNodeFlowInputNode0ToPrompt_1PromptsNode0",
///                 source: "FlowInputNode",
///                 target: "Prompt_1",
///                 type: "Data",
///             },
///             {
///                 configuration: {
///                     data: {
///                         sourceOutput: "modelCompletion",
///                         targetInput: "document",
///                     },
///                 },
///                 name: "Prompt_1PromptsNode0ToFlowOutputNodeFlowOutputNode0",
///                 source: "Prompt_1",
///                 target: "FlowOutputNode",
///                 type: "Data",
///             },
///         ],
///         nodes: [
///             {
///                 configuration: {
///                     input: {},
///                 },
///                 outputs: [{
///                     name: "document",
///                     type: "String",
///                 }],
///                 name: "FlowInputNode",
///                 type: "Input",
///             },
///             {
///                 configuration: {
///                     prompt: {
///                         sourceConfiguration: {
///                             inline: {
///                                 inferenceConfiguration: {
///                                     text: {
///                                         maxTokens: 2048,
///                                         stopSequences: ["User:"],
///                                         temperature: 0,
///                                         topP: 0.8999999761581421,
///                                     },
///                                 },
///                                 templateConfiguration: {
///                                     text: {
///                                         inputVariables: [{
///                                             name: "topic",
///                                         }],
///                                         text: "Write a paragraph about {{topic}}.",
///                                     },
///                                 },
///                                 modelId: "amazon.titan-text-express-v1",
///                                 templateType: "TEXT",
///                             },
///                         },
///                     },
///                 },
///                 inputs: [{
///                     expression: "$.data",
///                     name: "topic",
///                     type: "String",
///                 }],
///                 outputs: [{
///                     name: "modelCompletion",
///                     type: "String",
///                 }],
///                 name: "Prompt_1",
///                 type: "Prompt",
///             },
///             {
///                 configuration: {
///                     output: {},
///                 },
///                 inputs: [{
///                     expression: "$.data",
///                     name: "document",
///                     type: "String",
///                 }],
///                 name: "FlowOutputNode",
///                 type: "Output",
///             },
///         ],
///     },
///     name: "example",
///     executionRoleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentFlow("example",
///     definition={
///         "connections": [
///             {
///                 "configuration": {
///                     "data": {
///                         "source_output": "document",
///                         "target_input": "topic",
///                     },
///                 },
///                 "name": "FlowInputNodeFlowInputNode0ToPrompt_1PromptsNode0",
///                 "source": "FlowInputNode",
///                 "target": "Prompt_1",
///                 "type": "Data",
///             },
///             {
///                 "configuration": {
///                     "data": {
///                         "source_output": "modelCompletion",
///                         "target_input": "document",
///                     },
///                 },
///                 "name": "Prompt_1PromptsNode0ToFlowOutputNodeFlowOutputNode0",
///                 "source": "Prompt_1",
///                 "target": "FlowOutputNode",
///                 "type": "Data",
///             },
///         ],
///         "nodes": [
///             {
///                 "configuration": {
///                     "input": {},
///                 },
///                 "outputs": [{
///                     "name": "document",
///                     "type": "String",
///                 }],
///                 "name": "FlowInputNode",
///                 "type": "Input",
///             },
///             {
///                 "configuration": {
///                     "prompt": {
///                         "source_configuration": {
///                             "inline": {
///                                 "inference_configuration": {
///                                     "text": {
///                                         "max_tokens": 2048,
///                                         "stop_sequences": ["User:"],
///                                         "temperature": float(0),
///                                         "top_p": 0.8999999761581421,
///                                     },
///                                 },
///                                 "template_configuration": {
///                                     "text": {
///                                         "input_variables": [{
///                                             "name": "topic",
///                                         }],
///                                         "text": "Write a paragraph about {{topic}}.",
///                                     },
///                                 },
///                                 "model_id": "amazon.titan-text-express-v1",
///                                 "template_type": "TEXT",
///                             },
///                         },
///                     },
///                 },
///                 "inputs": [{
///                     "expression": "$.data",
///                     "name": "topic",
///                     "type": "String",
///                 }],
///                 "outputs": [{
///                     "name": "modelCompletion",
///                     "type": "String",
///                 }],
///                 "name": "Prompt_1",
///                 "type": "Prompt",
///             },
///             {
///                 "configuration": {
///                     "output": {},
///                 },
///                 "inputs": [{
///                     "expression": "$.data",
///                     "name": "document",
///                     "type": "String",
///                 }],
///                 "name": "FlowOutputNode",
///                 "type": "Output",
///             },
///         ],
///     },
///     name="example",
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
///     var example = new Aws.Bedrock.AgentFlow("example", new()
///     {
///         Definition = new Aws.Bedrock.Inputs.AgentFlowDefinitionArgs
///         {
///             Connections = new[]
///             {
///                 new Aws.Bedrock.Inputs.AgentFlowDefinitionConnectionArgs
///                 {
///                     Configuration = new Aws.Bedrock.Inputs.AgentFlowDefinitionConnectionConfigurationArgs
///                     {
///                         Data = new Aws.Bedrock.Inputs.AgentFlowDefinitionConnectionConfigurationDataArgs
///                         {
///                             SourceOutput = "document",
///                             TargetInput = "topic",
///                         },
///                     },
///                     Name = "FlowInputNodeFlowInputNode0ToPrompt_1PromptsNode0",
///                     Source = "FlowInputNode",
///                     Target = "Prompt_1",
///                     Type = "Data",
///                 },
///                 new Aws.Bedrock.Inputs.AgentFlowDefinitionConnectionArgs
///                 {
///                     Configuration = new Aws.Bedrock.Inputs.AgentFlowDefinitionConnectionConfigurationArgs
///                     {
///                         Data = new Aws.Bedrock.Inputs.AgentFlowDefinitionConnectionConfigurationDataArgs
///                         {
///                             SourceOutput = "modelCompletion",
///                             TargetInput = "document",
///                         },
///                     },
///                     Name = "Prompt_1PromptsNode0ToFlowOutputNodeFlowOutputNode0",
///                     Source = "Prompt_1",
///                     Target = "FlowOutputNode",
///                     Type = "Data",
///                 },
///             },
///             Nodes = new[]
///             {
///                 new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeArgs
///                 {
///                     Configuration = new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeConfigurationArgs
///                     {
///                         Input = null,
///                     },
///                     Outputs = new[]
///                     {
///                         new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeOutputArgs
///                         {
///                             Name = "document",
///                             Type = "String",
///                         },
///                     },
///                     Name = "FlowInputNode",
///                     Type = "Input",
///                 },
///                 new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeArgs
///                 {
///                     Configuration = new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeConfigurationArgs
///                     {
///                         Prompt = new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeConfigurationPromptArgs
///                         {
///                             SourceConfiguration = new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationArgs
///                             {
///                                 Inline = new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineArgs
///                                 {
///                                     InferenceConfiguration = new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationArgs
///                                     {
///                                         Text = new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationTextArgs
///                                         {
///                                             MaxTokens = 2048,
///                                             StopSequences = new[]
///                                             {
///                                                 "User:",
///                                             },
///                                             Temperature = 0,
///                                             TopP = 0.8999999761581421,
///                                         },
///                                     },
///                                     TemplateConfiguration = new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationArgs
///                                     {
///                                         Text = new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextArgs
///                                         {
///                                             InputVariables = new[]
///                                             {
///                                                 new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariableArgs
///                                                 {
///                                                     Name = "topic",
///                                                 },
///                                             },
///                                             Text = "Write a paragraph about {{topic}}.",
///                                         },
///                                     },
///                                     ModelId = "amazon.titan-text-express-v1",
///                                     TemplateType = "TEXT",
///                                 },
///                             },
///                         },
///                     },
///                     Inputs = new[]
///                     {
///                         new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeInputArgs
///                         {
///                             Expression = "$.data",
///                             Name = "topic",
///                             Type = "String",
///                         },
///                     },
///                     Outputs = new[]
///                     {
///                         new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeOutputArgs
///                         {
///                             Name = "modelCompletion",
///                             Type = "String",
///                         },
///                     },
///                     Name = "Prompt_1",
///                     Type = "Prompt",
///                 },
///                 new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeArgs
///                 {
///                     Configuration = new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeConfigurationArgs
///                     {
///                         Output = null,
///                     },
///                     Inputs = new[]
///                     {
///                         new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeInputArgs
///                         {
///                             Expression = "$.data",
///                             Name = "document",
///                             Type = "String",
///                         },
///                     },
///                     Name = "FlowOutputNode",
///                     Type = "Output",
///                 },
///             },
///         },
///         Name = "example",
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
/// 		_, err := bedrock.NewAgentFlow(ctx, "example", &bedrock.AgentFlowArgs{
/// 			Definition: &bedrock.AgentFlowDefinitionArgs{
/// 				Connections: bedrock.AgentFlowDefinitionConnectionArray{
/// 					&bedrock.AgentFlowDefinitionConnectionArgs{
/// 						Configuration: &bedrock.AgentFlowDefinitionConnectionConfigurationArgs{
/// 							Data: &bedrock.AgentFlowDefinitionConnectionConfigurationDataArgs{
/// 								SourceOutput: pulumi.String("document"),
/// 								TargetInput:  pulumi.String("topic"),
/// 							},
/// 						},
/// 						Name:   pulumi.String("FlowInputNodeFlowInputNode0ToPrompt_1PromptsNode0"),
/// 						Source: pulumi.String("FlowInputNode"),
/// 						Target: pulumi.String("Prompt_1"),
/// 						Type:   pulumi.String("Data"),
/// 					},
/// 					&bedrock.AgentFlowDefinitionConnectionArgs{
/// 						Configuration: &bedrock.AgentFlowDefinitionConnectionConfigurationArgs{
/// 							Data: &bedrock.AgentFlowDefinitionConnectionConfigurationDataArgs{
/// 								SourceOutput: pulumi.String("modelCompletion"),
/// 								TargetInput:  pulumi.String("document"),
/// 							},
/// 						},
/// 						Name:   pulumi.String("Prompt_1PromptsNode0ToFlowOutputNodeFlowOutputNode0"),
/// 						Source: pulumi.String("Prompt_1"),
/// 						Target: pulumi.String("FlowOutputNode"),
/// 						Type:   pulumi.String("Data"),
/// 					},
/// 				},
/// 				Nodes: bedrock.AgentFlowDefinitionNodeArray{
/// 					&bedrock.AgentFlowDefinitionNodeArgs{
/// 						Configuration: &bedrock.AgentFlowDefinitionNodeConfigurationArgs{
/// 							Input: &bedrock.AgentFlowDefinitionNodeConfigurationInputTypeArgs{},
/// 						},
/// 						Outputs: bedrock.AgentFlowDefinitionNodeOutputTypeArray{
/// 							&bedrock.AgentFlowDefinitionNodeOutputTypeArgs{
/// 								Name: pulumi.String("document"),
/// 								Type: pulumi.String("String"),
/// 							},
/// 						},
/// 						Name: pulumi.String("FlowInputNode"),
/// 						Type: pulumi.String("Input"),
/// 					},
/// 					&bedrock.AgentFlowDefinitionNodeArgs{
/// 						Configuration: &bedrock.AgentFlowDefinitionNodeConfigurationArgs{
/// 							Prompt: &bedrock.AgentFlowDefinitionNodeConfigurationPromptArgs{
/// 								SourceConfiguration: &bedrock.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationArgs{
/// 									Inline: &bedrock.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineArgs{
/// 										InferenceConfiguration: &bedrock.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationArgs{
/// 											Text: &bedrock.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationTextArgs{
/// 												MaxTokens: pulumi.Int(2048),
/// 												StopSequences: pulumi.StringArray{
/// 													pulumi.String("User:"),
/// 												},
/// 												Temperature: pulumi.Float64(0),
/// 												TopP:        pulumi.Float64(0.8999999761581421),
/// 											},
/// 										},
/// 										TemplateConfiguration: &bedrock.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationArgs{
/// 											Text: &bedrock.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextArgs{
/// 												InputVariables: bedrock.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariableArray{
/// 													&bedrock.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariableArgs{
/// 														Name: pulumi.String("topic"),
/// 													},
/// 												},
/// 												Text: pulumi.String("Write a paragraph about {{topic}}."),
/// 											},
/// 										},
/// 										ModelId:      pulumi.String("amazon.titan-text-express-v1"),
/// 										TemplateType: pulumi.String("TEXT"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						Inputs: bedrock.AgentFlowDefinitionNodeInputTypeArray{
/// 							&bedrock.AgentFlowDefinitionNodeInputTypeArgs{
/// 								Expression: pulumi.String("$.data"),
/// 								Name:       pulumi.String("topic"),
/// 								Type:       pulumi.String("String"),
/// 							},
/// 						},
/// 						Outputs: bedrock.AgentFlowDefinitionNodeOutputTypeArray{
/// 							&bedrock.AgentFlowDefinitionNodeOutputTypeArgs{
/// 								Name: pulumi.String("modelCompletion"),
/// 								Type: pulumi.String("String"),
/// 							},
/// 						},
/// 						Name: pulumi.String("Prompt_1"),
/// 						Type: pulumi.String("Prompt"),
/// 					},
/// 					&bedrock.AgentFlowDefinitionNodeArgs{
/// 						Configuration: &bedrock.AgentFlowDefinitionNodeConfigurationArgs{
/// 							Output: &bedrock.AgentFlowDefinitionNodeConfigurationOutputTypeArgs{},
/// 						},
/// 						Inputs: bedrock.AgentFlowDefinitionNodeInputTypeArray{
/// 							&bedrock.AgentFlowDefinitionNodeInputTypeArgs{
/// 								Expression: pulumi.String("$.data"),
/// 								Name:       pulumi.String("document"),
/// 								Type:       pulumi.String("String"),
/// 							},
/// 						},
/// 						Name: pulumi.String("FlowOutputNode"),
/// 						Type: pulumi.String("Output"),
/// 					},
/// 				},
/// 			},
/// 			Name:             pulumi.String("example"),
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
/// resource "aws_bedrock_agentflow" "example" {
///   definition = {
///     connections = [{
///       "configuration" = {
///         "data" = {
///           "sourceOutput" = "document"
///           "targetInput"  = "topic"
///         }
///       }
///       "name"   = "FlowInputNodeFlowInputNode0ToPrompt_1PromptsNode0"
///       "source" = "FlowInputNode"
///       "target" = "Prompt_1"
///       "type"   = "Data"
///       }, {
///       "configuration" = {
///         "data" = {
///           "sourceOutput" = "modelCompletion"
///           "targetInput"  = "document"
///         }
///       }
///       "name"   = "Prompt_1PromptsNode0ToFlowOutputNodeFlowOutputNode0"
///       "source" = "Prompt_1"
///       "target" = "FlowOutputNode"
///       "type"   = "Data"
///     }]
///     nodes = [{
///       "configuration" = {
///         "input" = {}
///       }
///       "outputs" = [{
///         "name" = "document"
///         "type" = "String"
///       }]
///       "name" = "FlowInputNode"
///       "type" = "Input"
///       }, {
///       "configuration" = {
///         "prompt" = {
///           "sourceConfiguration" = {
///             "inline" = {
///               "inferenceConfiguration" = {
///                 "text" = {
///                   "maxTokens"     = 2048
///                   "stopSequences" = ["User:"]
///                   "temperature"   = 0
///                   "topP"          = 0.8999999761581421
///                 }
///               }
///               "templateConfiguration" = {
///                 "text" = {
///                   "inputVariables" = [{
///                     "name" = "topic"
///                   }]
///                   "text" = "Write a paragraph about {{topic}}."
///                 }
///               }
///               "modelId"      = "amazon.titan-text-express-v1"
///               "templateType" = "TEXT"
///             }
///           }
///         }
///       }
///       "inputs" = [{
///         "expression" = "$.data"
///         "name"       = "topic"
///         "type"       = "String"
///       }]
///       "outputs" = [{
///         "name" = "modelCompletion"
///         "type" = "String"
///       }]
///       "name" = "Prompt_1"
///       "type" = "Prompt"
///       }, {
///       "configuration" = {
///         "output" = {}
///       }
///       "inputs" = [{
///         "expression" = "$.data"
///         "name"       = "document"
///         "type"       = "String"
///       }]
///       "name" = "FlowOutputNode"
///       "type" = "Output"
///     }]
///   }
///   name               = "example"
///   execution_role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentFlow;
/// import com.pulumi.aws.bedrock.AgentFlowArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionConnectionArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionConnectionConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionConnectionConfigurationDataArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionNodeArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionNodeConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionNodeConfigurationInputArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionNodeOutputArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionNodeConfigurationPromptArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationTextArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariableArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionNodeInputArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionNodeConfigurationOutputArgs;
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
///         var example = new AgentFlow("example", AgentFlowArgs.builder()
///             .definition(AgentFlowDefinitionArgs.builder()
///                 .connections(
///                     AgentFlowDefinitionConnectionArgs.builder()
///                         .configuration(AgentFlowDefinitionConnectionConfigurationArgs.builder()
///                             .data(AgentFlowDefinitionConnectionConfigurationDataArgs.builder()
///                                 .sourceOutput("document")
///                                 .targetInput("topic")
///                                 .build())
///                             .build())
///                         .name("FlowInputNodeFlowInputNode0ToPrompt_1PromptsNode0")
///                         .source("FlowInputNode")
///                         .target("Prompt_1")
///                         .type("Data")
///                         .build(),
///                     AgentFlowDefinitionConnectionArgs.builder()
///                         .configuration(AgentFlowDefinitionConnectionConfigurationArgs.builder()
///                             .data(AgentFlowDefinitionConnectionConfigurationDataArgs.builder()
///                                 .sourceOutput("modelCompletion")
///                                 .targetInput("document")
///                                 .build())
///                             .build())
///                         .name("Prompt_1PromptsNode0ToFlowOutputNodeFlowOutputNode0")
///                         .source("Prompt_1")
///                         .target("FlowOutputNode")
///                         .type("Data")
///                         .build())
///                 .nodes(
///                     AgentFlowDefinitionNodeArgs.builder()
///                         .configuration(AgentFlowDefinitionNodeConfigurationArgs.builder()
///                             .input(AgentFlowDefinitionNodeConfigurationInputArgs.builder()
///                                 .build())
///                             .build())
///                         .outputs(AgentFlowDefinitionNodeOutputArgs.builder()
///                             .name("document")
///                             .type("String")
///                             .build())
///                         .name("FlowInputNode")
///                         .type("Input")
///                         .build(),
///                     AgentFlowDefinitionNodeArgs.builder()
///                         .configuration(AgentFlowDefinitionNodeConfigurationArgs.builder()
///                             .prompt(AgentFlowDefinitionNodeConfigurationPromptArgs.builder()
///                                 .sourceConfiguration(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationArgs.builder()
///                                     .inline(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineArgs.builder()
///                                         .inferenceConfiguration(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationArgs.builder()
///                                             .text(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationTextArgs.builder()
///                                                 .maxTokens(2048)
///                                                 .stopSequences("User:")
///                                                 .temperature(0.0)
///                                                 .topP(0.8999999761581421)
///                                                 .build())
///                                             .build())
///                                         .templateConfiguration(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationArgs.builder()
///                                             .text(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextArgs.builder()
///                                                 .inputVariables(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariableArgs.builder()
///                                                     .name("topic")
///                                                     .build())
///                                                 .text("Write a paragraph about {{topic}}.")
///                                                 .build())
///                                             .build())
///                                         .modelId("amazon.titan-text-express-v1")
///                                         .templateType("TEXT")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .inputs(AgentFlowDefinitionNodeInputArgs.builder()
///                             .expression("$.data")
///                             .name("topic")
///                             .type("String")
///                             .build())
///                         .outputs(AgentFlowDefinitionNodeOutputArgs.builder()
///                             .name("modelCompletion")
///                             .type("String")
///                             .build())
///                         .name("Prompt_1")
///                         .type("Prompt")
///                         .build(),
///                     AgentFlowDefinitionNodeArgs.builder()
///                         .configuration(AgentFlowDefinitionNodeConfigurationArgs.builder()
///                             .output(AgentFlowDefinitionNodeConfigurationOutputArgs.builder()
///                                 .build())
///                             .build())
///                         .inputs(AgentFlowDefinitionNodeInputArgs.builder()
///                             .expression("$.data")
///                             .name("document")
///                             .type("String")
///                             .build())
///                         .name("FlowOutputNode")
///                         .type("Output")
///                         .build())
///                 .build())
///             .name("example")
///             .executionRoleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentFlow
///     properties:
///       definition:
///         connections:
///           - configuration:
///               data:
///                 sourceOutput: document
///                 targetInput: topic
///             name: FlowInputNodeFlowInputNode0ToPrompt_1PromptsNode0
///             source: FlowInputNode
///             target: Prompt_1
///             type: Data
///           - configuration:
///               data:
///                 sourceOutput: modelCompletion
///                 targetInput: document
///             name: Prompt_1PromptsNode0ToFlowOutputNodeFlowOutputNode0
///             source: Prompt_1
///             target: FlowOutputNode
///             type: Data
///         nodes:
///           - configuration:
///               input: {}
///             outputs:
///               - name: document
///                 type: String
///             name: FlowInputNode
///             type: Input
///           - configuration:
///               prompt:
///                 sourceConfiguration:
///                   inline:
///                     inferenceConfiguration:
///                       text:
///                         maxTokens: 2048
///                         stopSequences:
///                           - 'User:'
///                         temperature: 0
///                         topP: 0.8999999761581421
///                     templateConfiguration:
///                       text:
///                         inputVariables:
///                           - name: topic
///                         text: Write a paragraph about {{topic}}.
///                     modelId: amazon.titan-text-express-v1
///                     templateType: TEXT
///             inputs:
///               - expression: $.data
///                 name: topic
///                 type: String
///             outputs:
///               - name: modelCompletion
///                 type: String
///             name: Prompt_1
///             type: Prompt
///           - configuration:
///               output: {}
///             inputs:
///               - expression: $.data
///                 name: document
///                 type: String
///             name: FlowOutputNode
///             type: Output
///       name: example
///       executionRoleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock Agents Flow using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentFlow:AgentFlow example ABCDEFGHIJ
/// ```
class AgentFlow extends pulumi.CustomResource {
  /// ARN of the flow.
  late final pulumi.Output<String> arn;
  /// The time at which the flow was created.
  late final pulumi.Output<String> createdAt;
  /// ARN of the KMS key to encrypt the flow.
  late final pulumi.Output<String?> customerEncryptionKeyArn;
  /// A definition of the nodes and connections between nodes in the flow. See Definition for more information.
  late final pulumi.Output<AgentFlowDefinition?> definition;
  /// A description for the flow.
  late final pulumi.Output<String?> description;
  /// ARN of the service role with permissions to create and manage a flow. For more information, see [Create a service role for flows in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html) in the Amazon Bedrock User Guide.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> executionRoleArn;
  /// A name for the flow.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The status of the flow.
  late final pulumi.Output<String> status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentFlowTimeouts?> timeouts;
  /// The time at which the flow was last updated.
  late final pulumi.Output<String> updatedAt;
  /// The version of the flow.
  late final pulumi.Output<String> version;

  /// Creates a new [AgentFlow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentFlow]. {@macro pulumi_bedrock_agent_flow_agent_flow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentFlow(
    String name, {
    AgentFlowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentFlow:AgentFlow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    customerEncryptionKeyArn = registerOutput<String?>('customerEncryptionKeyArn');
    definition = registerOutput<AgentFlowDefinition?>('definition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentFlowDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    executionRoleArn = registerOutput<String>('executionRoleArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentFlowTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentFlowTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [AgentFlow] resource's state with the given [name] and [id].
  static AgentFlow get(
    String name,
    pulumi.Input<String> id, {
    AgentFlowState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentFlow._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentFlow._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentFlow:AgentFlow',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    customerEncryptionKeyArn = registerOutput<String?>('customerEncryptionKeyArn');
    definition = registerOutput<AgentFlowDefinition?>('definition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentFlowDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    executionRoleArn = registerOutput<String>('executionRoleArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentFlowTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentFlowTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [AgentFlow] resource.
  AgentFlow.reference(String urn)
    : super(
        'aws:bedrock/agentFlow:AgentFlow',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    customerEncryptionKeyArn = registerOutput<String?>('customerEncryptionKeyArn');
    definition = registerOutput<AgentFlowDefinition?>('definition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentFlowDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    executionRoleArn = registerOutput<String>('executionRoleArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentFlowTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentFlowTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<String>('version');
  }
}
