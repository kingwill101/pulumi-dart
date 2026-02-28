import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_args.dart';
import 'agent_flow_definition.dart';
import 'agent_flow_timeouts.dart';

/// Resource for managing an AWS Bedrock Agents Flow.
///
/// ## Example Usage
///
/// The default definition:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentFlow("example", {
///     name: "example",
///     executionRoleArn: exampleAwsIamRole.arn,
///     definition: {
///         connections: [
///             {
///                 name: "FlowInputNodeFlowInputNode0ToPrompt_1PromptsNode0",
///                 source: "FlowInputNode",
///                 target: "Prompt_1",
///                 type: "Data",
///                 configuration: {
///                     data: {
///                         sourceOutput: "document",
///                         targetInput: "topic",
///                     },
///                 },
///             },
///             {
///                 name: "Prompt_1PromptsNode0ToFlowOutputNodeFlowOutputNode0",
///                 source: "Prompt_1",
///                 target: "FlowOutputNode",
///                 type: "Data",
///                 configuration: {
///                     data: {
///                         sourceOutput: "modelCompletion",
///                         targetInput: "document",
///                     },
///                 },
///             },
///         ],
///         nodes: [
///             {
///                 name: "FlowInputNode",
///                 type: "Input",
///                 configuration: {
///                     input: {},
///                 },
///                 outputs: [{
///                     name: "document",
///                     type: "String",
///                 }],
///             },
///             {
///                 name: "Prompt_1",
///                 type: "Prompt",
///                 configuration: {
///                     prompt: {
///                         sourceConfiguration: {
///                             inline: {
///                                 modelId: "amazon.titan-text-express-v1",
///                                 templateType: "TEXT",
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
///                                         text: "Write a paragraph about {{topic}}.",
///                                         inputVariables: [{
///                                             name: "topic",
///                                         }],
///                                     },
///                                 },
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
///             },
///             {
///                 name: "FlowOutputNode",
///                 type: "Output",
///                 configuration: {
///                     output: {},
///                 },
///                 inputs: [{
///                     expression: "$.data",
///                     name: "document",
///                     type: "String",
///                 }],
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentFlow("example",
///     name="example",
///     execution_role_arn=example_aws_iam_role["arn"],
///     definition={
///         "connections": [
///             {
///                 "name": "FlowInputNodeFlowInputNode0ToPrompt_1PromptsNode0",
///                 "source": "FlowInputNode",
///                 "target": "Prompt_1",
///                 "type": "Data",
///                 "configuration": {
///                     "data": {
///                         "source_output": "document",
///                         "target_input": "topic",
///                     },
///                 },
///             },
///             {
///                 "name": "Prompt_1PromptsNode0ToFlowOutputNodeFlowOutputNode0",
///                 "source": "Prompt_1",
///                 "target": "FlowOutputNode",
///                 "type": "Data",
///                 "configuration": {
///                     "data": {
///                         "source_output": "modelCompletion",
///                         "target_input": "document",
///                     },
///                 },
///             },
///         ],
///         "nodes": [
///             {
///                 "name": "FlowInputNode",
///                 "type": "Input",
///                 "configuration": {
///                     "input": {},
///                 },
///                 "outputs": [{
///                     "name": "document",
///                     "type": "String",
///                 }],
///             },
///             {
///                 "name": "Prompt_1",
///                 "type": "Prompt",
///                 "configuration": {
///                     "prompt": {
///                         "source_configuration": {
///                             "inline": {
///                                 "model_id": "amazon.titan-text-express-v1",
///                                 "template_type": "TEXT",
///                                 "inference_configuration": {
///                                     "text": {
///                                         "max_tokens": 2048,
///                                         "stop_sequences": ["User:"],
///                                         "temperature": 0,
///                                         "top_p": 0.8999999761581421,
///                                     },
///                                 },
///                                 "template_configuration": {
///                                     "text": {
///                                         "text": "Write a paragraph about {{topic}}.",
///                                         "input_variables": [{
///                                             "name": "topic",
///                                         }],
///                                     },
///                                 },
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
///             },
///             {
///                 "name": "FlowOutputNode",
///                 "type": "Output",
///                 "configuration": {
///                     "output": {},
///                 },
///                 "inputs": [{
///                     "expression": "$.data",
///                     "name": "document",
///                     "type": "String",
///                 }],
///             },
///         ],
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
///     var example = new Aws.Bedrock.AgentFlow("example", new()
///     {
///         Name = "example",
///         ExecutionRoleArn = exampleAwsIamRole.Arn,
///         Definition = new Aws.Bedrock.Inputs.AgentFlowDefinitionArgs
///         {
///             Connections = new[]
///             {
///                 new Aws.Bedrock.Inputs.AgentFlowDefinitionConnectionArgs
///                 {
///                     Name = "FlowInputNodeFlowInputNode0ToPrompt_1PromptsNode0",
///                     Source = "FlowInputNode",
///                     Target = "Prompt_1",
///                     Type = "Data",
///                     Configuration = new Aws.Bedrock.Inputs.AgentFlowDefinitionConnectionConfigurationArgs
///                     {
///                         Data = new Aws.Bedrock.Inputs.AgentFlowDefinitionConnectionConfigurationDataArgs
///                         {
///                             SourceOutput = "document",
///                             TargetInput = "topic",
///                         },
///                     },
///                 },
///                 new Aws.Bedrock.Inputs.AgentFlowDefinitionConnectionArgs
///                 {
///                     Name = "Prompt_1PromptsNode0ToFlowOutputNodeFlowOutputNode0",
///                     Source = "Prompt_1",
///                     Target = "FlowOutputNode",
///                     Type = "Data",
///                     Configuration = new Aws.Bedrock.Inputs.AgentFlowDefinitionConnectionConfigurationArgs
///                     {
///                         Data = new Aws.Bedrock.Inputs.AgentFlowDefinitionConnectionConfigurationDataArgs
///                         {
///                             SourceOutput = "modelCompletion",
///                             TargetInput = "document",
///                         },
///                     },
///                 },
///             },
///             Nodes = new[]
///             {
///                 new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeArgs
///                 {
///                     Name = "FlowInputNode",
///                     Type = "Input",
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
///                 },
///                 new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeArgs
///                 {
///                     Name = "Prompt_1",
///                     Type = "Prompt",
///                     Configuration = new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeConfigurationArgs
///                     {
///                         Prompt = new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeConfigurationPromptArgs
///                         {
///                             SourceConfiguration = new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationArgs
///                             {
///                                 Inline = new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineArgs
///                                 {
///                                     ModelId = "amazon.titan-text-express-v1",
///                                     TemplateType = "TEXT",
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
///                                             Text = "Write a paragraph about {{topic}}.",
///                                             InputVariables = new[]
///                                             {
///                                                 new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariableArgs
///                                                 {
///                                                     Name = "topic",
///                                                 },
///                                             },
///                                         },
///                                     },
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
///                 },
///                 new Aws.Bedrock.Inputs.AgentFlowDefinitionNodeArgs
///                 {
///                     Name = "FlowOutputNode",
///                     Type = "Output",
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
/// 		_, err := bedrock.NewAgentFlow(ctx, "example", &bedrock.AgentFlowArgs{
/// 			Name:             pulumi.String("example"),
/// 			ExecutionRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			Definition: &bedrock.AgentFlowDefinitionArgs{
/// 				Connections: bedrock.AgentFlowDefinitionConnectionArray{
/// 					&bedrock.AgentFlowDefinitionConnectionArgs{
/// 						Name:   pulumi.String("FlowInputNodeFlowInputNode0ToPrompt_1PromptsNode0"),
/// 						Source: pulumi.String("FlowInputNode"),
/// 						Target: pulumi.String("Prompt_1"),
/// 						Type:   pulumi.String("Data"),
/// 						Configuration: &bedrock.AgentFlowDefinitionConnectionConfigurationArgs{
/// 							Data: &bedrock.AgentFlowDefinitionConnectionConfigurationDataArgs{
/// 								SourceOutput: pulumi.String("document"),
/// 								TargetInput:  pulumi.String("topic"),
/// 							},
/// 						},
/// 					},
/// 					&bedrock.AgentFlowDefinitionConnectionArgs{
/// 						Name:   pulumi.String("Prompt_1PromptsNode0ToFlowOutputNodeFlowOutputNode0"),
/// 						Source: pulumi.String("Prompt_1"),
/// 						Target: pulumi.String("FlowOutputNode"),
/// 						Type:   pulumi.String("Data"),
/// 						Configuration: &bedrock.AgentFlowDefinitionConnectionConfigurationArgs{
/// 							Data: &bedrock.AgentFlowDefinitionConnectionConfigurationDataArgs{
/// 								SourceOutput: pulumi.String("modelCompletion"),
/// 								TargetInput:  pulumi.String("document"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Nodes: bedrock.AgentFlowDefinitionNodeArray{
/// 					&bedrock.AgentFlowDefinitionNodeArgs{
/// 						Name: pulumi.String("FlowInputNode"),
/// 						Type: pulumi.String("Input"),
/// 						Configuration: &bedrock.AgentFlowDefinitionNodeConfigurationArgs{
/// 							Input: &bedrock.AgentFlowDefinitionNodeConfigurationInputTypeArgs{},
/// 						},
/// 						Outputs: bedrock.AgentFlowDefinitionNodeOutputTypeArray{
/// 							&bedrock.AgentFlowDefinitionNodeOutputTypeArgs{
/// 								Name: pulumi.String("document"),
/// 								Type: pulumi.String("String"),
/// 							},
/// 						},
/// 					},
/// 					&bedrock.AgentFlowDefinitionNodeArgs{
/// 						Name: pulumi.String("Prompt_1"),
/// 						Type: pulumi.String("Prompt"),
/// 						Configuration: &bedrock.AgentFlowDefinitionNodeConfigurationArgs{
/// 							Prompt: &bedrock.AgentFlowDefinitionNodeConfigurationPromptArgs{
/// 								SourceConfiguration: &bedrock.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationArgs{
/// 									Inline: &bedrock.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineArgs{
/// 										ModelId:      pulumi.String("amazon.titan-text-express-v1"),
/// 										TemplateType: pulumi.String("TEXT"),
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
/// 												Text: pulumi.String("Write a paragraph about {{topic}}."),
/// 												InputVariables: bedrock.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariableArray{
/// 													&bedrock.AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariableArgs{
/// 														Name: pulumi.String("topic"),
/// 													},
/// 												},
/// 											},
/// 										},
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
/// 					},
/// 					&bedrock.AgentFlowDefinitionNodeArgs{
/// 						Name: pulumi.String("FlowOutputNode"),
/// 						Type: pulumi.String("Output"),
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
/// import com.pulumi.aws.bedrock.AgentFlow;
/// import com.pulumi.aws.bedrock.AgentFlowArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentFlowDefinitionArgs;
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
///         var example = new AgentFlow("example", AgentFlowArgs.builder()
///             .name("example")
///             .executionRoleArn(exampleAwsIamRole.arn())
///             .definition(AgentFlowDefinitionArgs.builder()
///                 .connections(
///                     AgentFlowDefinitionConnectionArgs.builder()
///                         .name("FlowInputNodeFlowInputNode0ToPrompt_1PromptsNode0")
///                         .source("FlowInputNode")
///                         .target("Prompt_1")
///                         .type("Data")
///                         .configuration(AgentFlowDefinitionConnectionConfigurationArgs.builder()
///                             .data(AgentFlowDefinitionConnectionConfigurationDataArgs.builder()
///                                 .sourceOutput("document")
///                                 .targetInput("topic")
///                                 .build())
///                             .build())
///                         .build(),
///                     AgentFlowDefinitionConnectionArgs.builder()
///                         .name("Prompt_1PromptsNode0ToFlowOutputNodeFlowOutputNode0")
///                         .source("Prompt_1")
///                         .target("FlowOutputNode")
///                         .type("Data")
///                         .configuration(AgentFlowDefinitionConnectionConfigurationArgs.builder()
///                             .data(AgentFlowDefinitionConnectionConfigurationDataArgs.builder()
///                                 .sourceOutput("modelCompletion")
///                                 .targetInput("document")
///                                 .build())
///                             .build())
///                         .build())
///                 .nodes(
///                     AgentFlowDefinitionNodeArgs.builder()
///                         .name("FlowInputNode")
///                         .type("Input")
///                         .configuration(AgentFlowDefinitionNodeConfigurationArgs.builder()
///                             .input(AgentFlowDefinitionNodeConfigurationInputArgs.builder()
///                                 .build())
///                             .build())
///                         .outputs(AgentFlowDefinitionNodeOutputArgs.builder()
///                             .name("document")
///                             .type("String")
///                             .build())
///                         .build(),
///                     AgentFlowDefinitionNodeArgs.builder()
///                         .name("Prompt_1")
///                         .type("Prompt")
///                         .configuration(AgentFlowDefinitionNodeConfigurationArgs.builder()
///                             .prompt(AgentFlowDefinitionNodeConfigurationPromptArgs.builder()
///                                 .sourceConfiguration(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationArgs.builder()
///                                     .inline(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineArgs.builder()
///                                         .modelId("amazon.titan-text-express-v1")
///                                         .templateType("TEXT")
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
///                                                 .text("Write a paragraph about {{topic}}.")
///                                                 .inputVariables(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariableArgs.builder()
///                                                     .name("topic")
///                                                     .build())
///                                                 .build())
///                                             .build())
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
///                         .build(),
///                     AgentFlowDefinitionNodeArgs.builder()
///                         .name("FlowOutputNode")
///                         .type("Output")
///                         .configuration(AgentFlowDefinitionNodeConfigurationArgs.builder()
///                             .output(AgentFlowDefinitionNodeConfigurationOutputArgs.builder()
///                                 .build())
///                             .build())
///                         .inputs(AgentFlowDefinitionNodeInputArgs.builder()
///                             .expression("$.data")
///                             .name("document")
///                             .type("String")
///                             .build())
///                         .build())
///                 .build())
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
///       name: example
///       executionRoleArn: ${exampleAwsIamRole.arn}
///       definition:
///         connections:
///           - name: FlowInputNodeFlowInputNode0ToPrompt_1PromptsNode0
///             source: FlowInputNode
///             target: Prompt_1
///             type: Data
///             configuration:
///               data:
///                 sourceOutput: document
///                 targetInput: topic
///           - name: Prompt_1PromptsNode0ToFlowOutputNodeFlowOutputNode0
///             source: Prompt_1
///             target: FlowOutputNode
///             type: Data
///             configuration:
///               data:
///                 sourceOutput: modelCompletion
///                 targetInput: document
///         nodes:
///           - name: FlowInputNode
///             type: Input
///             configuration:
///               input: {}
///             outputs:
///               - name: document
///                 type: String
///           - name: Prompt_1
///             type: Prompt
///             configuration:
///               prompt:
///                 sourceConfiguration:
///                   inline:
///                     modelId: amazon.titan-text-express-v1
///                     templateType: TEXT
///                     inferenceConfiguration:
///                       text:
///                         maxTokens: 2048
///                         stopSequences:
///                           - 'User:'
///                         temperature: 0
///                         topP: 0.8999999761581421
///                     templateConfiguration:
///                       text:
///                         text: Write a paragraph about {{topic}}.
///                         inputVariables:
///                           - name: topic
///             inputs:
///               - expression: $.data
///                 name: topic
///                 type: String
///             outputs:
///               - name: modelCompletion
///                 type: String
///           - name: FlowOutputNode
///             type: Output
///             configuration:
///               output: {}
///             inputs:
///               - expression: $.data
///                 name: document
///                 type: String
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
  /// The Amazon Resource Name (ARN) of the flow.
  late final pulumi.Output<String> arn;

  /// The time at which the flow was created.
  late final pulumi.Output<String> createdAt;

  /// The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.
  late final pulumi.Output<String?> customerEncryptionKeyArn;

  /// A definition of the nodes and connections between nodes in the flow. See Definition for more information.
  late final pulumi.Output<AgentFlowDefinition?> definition;

  /// A description for the flow.
  late final pulumi.Output<String?> description;

  /// The Amazon Resource Name (ARN) of the service role with permissions to create and manage a flow. For more information, see [Create a service role for flows in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html) in the Amazon Bedrock User Guide.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> executionRoleArn;

  /// A name for the flow.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The status of the flow.
  late final pulumi.Output<String> status;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.customerEncryptionKeyArn =
        registerOutput<String?>('customerEncryptionKeyArn');
    this.definition = registerOutput<AgentFlowDefinition?>('definition');
    this.description = registerOutput<String?>('description');
    this.executionRoleArn = registerOutput<String>('executionRoleArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<AgentFlowTimeouts?>('timeouts');
    this.updatedAt = registerOutput<String>('updatedAt');
    this.version = registerOutput<String>('version');
  }
}
