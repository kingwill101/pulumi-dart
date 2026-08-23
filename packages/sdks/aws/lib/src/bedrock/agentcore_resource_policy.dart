import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_resource_policy_args.dart';
import 'agentcore_resource_policy_state.dart';

/// Manages an AWS Bedrock Agent Core Resource Policy. Resource-based policies in Amazon Bedrock Agent Core allow you to control which principals (AWS accounts, IAM users, or IAM roles) can invoke and manage your Amazon Bedrock Agent Core Runtime and Gateway resources.
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
/// const exampleAgentcoreAgentRuntime = new aws.bedrock.AgentcoreAgentRuntime("example", {});
/// const example = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         sid: "AllowOAuthFromVPC",
///         effect: "Allow",
///         actions: ["bedrock-agentcore:InvokeAgentRuntime"],
///         principals: [{
///             type: "*",
///             identifiers: ["*"],
///         }],
///         resources: [exampleAgentcoreAgentRuntime.agentRuntimeArn],
///         conditions: [{
///             test: "StringEquals",
///             variable: "aws:SourceVpc",
///             values: ["vpc-1a2b3c4d"],
///         }],
///     }],
/// });
/// const exampleAgentcoreResourcePolicy = new aws.bedrock.AgentcoreResourcePolicy("example", {
///     policy: example.json,
///     resourceArn: exampleAgentcoreAgentRuntime.agentRuntimeArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_agentcore_agent_runtime = aws.bedrock.AgentcoreAgentRuntime("example")
/// example = aws.iam.get_policy_document_output(statements=[{
///     "sid": "AllowOAuthFromVPC",
///     "effect": "Allow",
///     "actions": ["bedrock-agentcore:InvokeAgentRuntime"],
///     "principals": [{
///         "type": "*",
///         "identifiers": ["*"],
///     }],
///     "resources": [example_agentcore_agent_runtime.agent_runtime_arn],
///     "conditions": [{
///         "test": "StringEquals",
///         "variable": "aws:SourceVpc",
///         "values": ["vpc-1a2b3c4d"],
///     }],
/// }])
/// example_agentcore_resource_policy = aws.bedrock.AgentcoreResourcePolicy("example",
///     policy=example.json,
///     resource_arn=example_agentcore_agent_runtime.agent_runtime_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleAgentcoreAgentRuntime = new Aws.Bedrock.AgentcoreAgentRuntime("example");
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "AllowOAuthFromVPC",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "bedrock-agentcore:InvokeAgentRuntime",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "*",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Resources = new[]
///                 {
///                     exampleAgentcoreAgentRuntime.AgentRuntimeArn,
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "aws:SourceVpc",
///                         Values = new[]
///                         {
///                             "vpc-1a2b3c4d",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleAgentcoreResourcePolicy = new Aws.Bedrock.AgentcoreResourcePolicy("example", new()
///     {
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         ResourceArn = exampleAgentcoreAgentRuntime.AgentRuntimeArn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleAgentcoreAgentRuntime, err := bedrock.NewAgentcoreAgentRuntime(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Sid:    pulumi.String("AllowOAuthFromVPC"),
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("bedrock-agentcore:InvokeAgentRuntime"),
/// 					},
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("*"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 						},
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleAgentcoreAgentRuntime.AgentRuntimeArn,
/// 					},
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("StringEquals"),
/// 							Variable: pulumi.String("aws:SourceVpc"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("vpc-1a2b3c4d"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = bedrock.NewAgentcoreResourcePolicy(ctx, "example", &bedrock.AgentcoreResourcePolicyArgs{
/// 			Policy:      example.Json(),
/// 			ResourceArn: exampleAgentcoreAgentRuntime.AgentRuntimeArn,
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
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///     sid     = "AllowOAuthFromVPC"
///     effect  = "Allow"
///     actions = ["bedrock-agentcore:InvokeAgentRuntime"]
///     principals {
///       type        = "*"
///       identifiers = ["*"]
///     }
///     resources = [aws_bedrock_agentcoreagentruntime.example.agent_runtime_arn]
///     conditions {
///       test     = "StringEquals"
///       variable = "aws:SourceVpc"
///       values   = ["vpc-1a2b3c4d"]
///     }
///   }
/// }
///
/// resource "aws_bedrock_agentcoreagentruntime" "example" {
/// }
/// resource "aws_bedrock_agentcoreresourcepolicy" "example" {
///   policy       = data.aws_iam_getpolicydocument.example.json
///   resource_arn = aws_bedrock_agentcoreagentruntime.example.agent_runtime_arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreAgentRuntime;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.bedrock.AgentcoreResourcePolicy;
/// import com.pulumi.aws.bedrock.AgentcoreResourcePolicyArgs;
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
///         var exampleAgentcoreAgentRuntime = new AgentcoreAgentRuntime("exampleAgentcoreAgentRuntime");
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("AllowOAuthFromVPC")
///                 .effect("Allow")
///                 .actions("bedrock-agentcore:InvokeAgentRuntime")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("*")
///                     .identifiers("*")
///                     .build())
///                 .resources(exampleAgentcoreAgentRuntime.agentRuntimeArn())
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("StringEquals")
///                     .variable("aws:SourceVpc")
///                     .values("vpc-1a2b3c4d")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleAgentcoreResourcePolicy = new AgentcoreResourcePolicy("exampleAgentcoreResourcePolicy", AgentcoreResourcePolicyArgs.builder()
///             .policy(example.applyValue(_example -> _example.json()))
///             .resourceArn(exampleAgentcoreAgentRuntime.agentRuntimeArn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAgentcoreAgentRuntime:
///     type: aws:bedrock:AgentcoreAgentRuntime
///     name: example
///   exampleAgentcoreResourcePolicy:
///     type: aws:bedrock:AgentcoreResourcePolicy
///     name: example
///     properties:
///       policy: ${example.json}
///       resourceArn: ${exampleAgentcoreAgentRuntime.agentRuntimeArn}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: AllowOAuthFromVPC
///             effect: Allow
///             actions:
///               - bedrock-agentcore:InvokeAgentRuntime
///             principals:
///               - type: '*'
///                 identifiers:
///                   - '*'
///             resources:
///               - ${exampleAgentcoreAgentRuntime.agentRuntimeArn}
///             conditions:
///               - test: StringEquals
///                 variable: aws:SourceVpc
///                 values:
///                   - vpc-1a2b3c4d
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `resourceArn` - ARN of the resource to which the Resource Policy is attached.
///
///
/// Using `pulumi import`, import Bedrock Agent Core Resource Policy using the `resourceArn`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreResourcePolicy:AgentcoreResourcePolicy example arn:aws:bedrock-agentcore:us-west-2:012345678901:runtime/abcd1234
/// ```
class AgentcoreResourcePolicy extends pulumi.CustomResource {
  /// Resource policy definition
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Amazon Resource Name (ARN) of the resource for which to create or update the resource policy.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> resourceArn;

  /// Creates a new [AgentcoreResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreResourcePolicy]. {@macro pulumi_bedrock_agentcore_resource_policy_agentcore_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreResourcePolicy(
    String name, {
    AgentcoreResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreResourcePolicy:AgentcoreResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }

  /// Gets an existing [AgentcoreResourcePolicy] resource's state with the given [name] and [id].
  static AgentcoreResourcePolicy get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreResourcePolicyState? state,
  }) {
    return AgentcoreResourcePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AgentcoreResourcePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreResourcePolicy:AgentcoreResourcePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }
}
