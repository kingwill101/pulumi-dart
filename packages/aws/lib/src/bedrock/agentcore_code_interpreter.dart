import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_code_interpreter_args.dart';
import 'agentcore_code_interpreter_network_configuration.dart';
import 'agentcore_code_interpreter_timeouts.dart';

/// Manages an AWS Bedrock AgentCore Code Interpreter. Code Interpreter provides a secure environment for AI agents to execute Python code, enabling data analysis, calculations, and file processing capabilities.
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
/// const example = new aws.bedrock.AgentcoreCodeInterpreter("example", {
///     name: "example-code-interpreter",
///     description: "Code interpreter for data analysis",
///     networkConfiguration: {
///         networkMode: "PUBLIC",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreCodeInterpreter("example",
///     name="example-code-interpreter",
///     description="Code interpreter for data analysis",
///     network_configuration={
///         "network_mode": "PUBLIC",
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
///     var example = new Aws.Bedrock.AgentcoreCodeInterpreter("example", new()
///     {
///         Name = "example-code-interpreter",
///         Description = "Code interpreter for data analysis",
///         NetworkConfiguration = new Aws.Bedrock.Inputs.AgentcoreCodeInterpreterNetworkConfigurationArgs
///         {
///             NetworkMode = "PUBLIC",
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
/// 		_, err := bedrock.NewAgentcoreCodeInterpreter(ctx, "example", &bedrock.AgentcoreCodeInterpreterArgs{
/// 			Name:        pulumi.String("example-code-interpreter"),
/// 			Description: pulumi.String("Code interpreter for data analysis"),
/// 			NetworkConfiguration: &bedrock.AgentcoreCodeInterpreterNetworkConfigurationArgs{
/// 				NetworkMode: pulumi.String("PUBLIC"),
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
/// import com.pulumi.aws.bedrock.AgentcoreCodeInterpreter;
/// import com.pulumi.aws.bedrock.AgentcoreCodeInterpreterArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreCodeInterpreterNetworkConfigurationArgs;
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
///         var example = new AgentcoreCodeInterpreter("example", AgentcoreCodeInterpreterArgs.builder()
///             .name("example-code-interpreter")
///             .description("Code interpreter for data analysis")
///             .networkConfiguration(AgentcoreCodeInterpreterNetworkConfigurationArgs.builder()
///                 .networkMode("PUBLIC")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreCodeInterpreter
///     properties:
///       name: example-code-interpreter
///       description: Code interpreter for data analysis
///       networkConfiguration:
///         networkMode: PUBLIC
/// ```
///
///
/// ### Code Interpreter with Execution Role
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///         principals: [{
///             type: "Service",
///             identifiers: ["bedrock-agentcore.amazonaws.com"],
///         }],
///     }],
/// });
/// const example = new aws.iam.Role("example", {
///     name: "bedrock-agentcore-code-interpreter-role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const exampleAgentcoreCodeInterpreter = new aws.bedrock.AgentcoreCodeInterpreter("example", {
///     name: "example-code-interpreter",
///     description: "Code interpreter with custom execution role",
///     executionRoleArn: example.arn,
///     networkConfiguration: {
///         networkMode: "SANDBOX",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["bedrock-agentcore.amazonaws.com"],
///     }],
/// }])
/// example = aws.iam.Role("example",
///     name="bedrock-agentcore-code-interpreter-role",
///     assume_role_policy=assume_role.json)
/// example_agentcore_code_interpreter = aws.bedrock.AgentcoreCodeInterpreter("example",
///     name="example-code-interpreter",
///     description="Code interpreter with custom execution role",
///     execution_role_arn=example.arn,
///     network_configuration={
///         "network_mode": "SANDBOX",
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
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
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
///             },
///         },
///     });
///
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "bedrock-agentcore-code-interpreter-role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleAgentcoreCodeInterpreter = new Aws.Bedrock.AgentcoreCodeInterpreter("example", new()
///     {
///         Name = "example-code-interpreter",
///         Description = "Code interpreter with custom execution role",
///         ExecutionRoleArn = example.Arn,
///         NetworkConfiguration = new Aws.Bedrock.Inputs.AgentcoreCodeInterpreterNetworkConfigurationArgs
///         {
///             NetworkMode = "SANDBOX",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"bedrock-agentcore.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("bedrock-agentcore-code-interpreter-role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentcoreCodeInterpreter(ctx, "example", &bedrock.AgentcoreCodeInterpreterArgs{
/// 			Name:             pulumi.String("example-code-interpreter"),
/// 			Description:      pulumi.String("Code interpreter with custom execution role"),
/// 			ExecutionRoleArn: example.Arn,
/// 			NetworkConfiguration: &bedrock.AgentcoreCodeInterpreterNetworkConfigurationArgs{
/// 				NetworkMode: pulumi.String("SANDBOX"),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.bedrock.AgentcoreCodeInterpreter;
/// import com.pulumi.aws.bedrock.AgentcoreCodeInterpreterArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreCodeInterpreterNetworkConfigurationArgs;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("bedrock-agentcore.amazonaws.com")
///                     .build())
///                 .build())
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .name("bedrock-agentcore-code-interpreter-role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var exampleAgentcoreCodeInterpreter = new AgentcoreCodeInterpreter("exampleAgentcoreCodeInterpreter", AgentcoreCodeInterpreterArgs.builder()
///             .name("example-code-interpreter")
///             .description("Code interpreter with custom execution role")
///             .executionRoleArn(example.arn())
///             .networkConfiguration(AgentcoreCodeInterpreterNetworkConfigurationArgs.builder()
///                 .networkMode("SANDBOX")
///                 .build())
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
///       name: bedrock-agentcore-code-interpreter-role
///       assumeRolePolicy: ${assumeRole.json}
///   exampleAgentcoreCodeInterpreter:
///     type: aws:bedrock:AgentcoreCodeInterpreter
///     name: example
///     properties:
///       name: example-code-interpreter
///       description: Code interpreter with custom execution role
///       executionRoleArn: ${example.arn}
///       networkConfiguration:
///         networkMode: SANDBOX
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - sts:AssumeRole
///             principals:
///               - type: Service
///                 identifiers:
///                   - bedrock-agentcore.amazonaws.com
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Code Interpreter using the code interpreter ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreCodeInterpreter:AgentcoreCodeInterpreter example CODEINTERPRETER1234567890
/// ```
class AgentcoreCodeInterpreter extends pulumi.CustomResource {
  /// ARN of the Code Interpreter.
  late final pulumi.Output<String> codeInterpreterArn;

  /// Unique identifier of the Code Interpreter.
  late final pulumi.Output<String> codeInterpreterId;

  /// Description of the code interpreter.
  late final pulumi.Output<String?> description;

  /// ARN of the IAM role that the code interpreter assumes for execution. Required when using `SANDBOX` network mode.
  late final pulumi.Output<String?> executionRoleArn;

  /// Name of the code interpreter.
  late final pulumi.Output<String> name;

  /// Network configuration for the code interpreter. See `network_configuration` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<AgentcoreCodeInterpreterNetworkConfiguration>
  networkConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentcoreCodeInterpreterTimeouts?> timeouts;

  /// Creates a new [AgentcoreCodeInterpreter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreCodeInterpreter]. {@macro pulumi_bedrock_agentcore_code_interpreter_agentcore_code_interpreter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreCodeInterpreter(
    String name, {
    AgentcoreCodeInterpreterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:bedrock/agentcoreCodeInterpreter:AgentcoreCodeInterpreter',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.codeInterpreterArn = registerOutput<String>('codeInterpreterArn');
    this.codeInterpreterId = registerOutput<String>('codeInterpreterId');
    this.description = registerOutput<String?>('description');
    this.executionRoleArn = registerOutput<String?>('executionRoleArn');
    this.name = registerOutput<String>('name');
    this.networkConfiguration =
        registerOutput<AgentcoreCodeInterpreterNetworkConfiguration>(
          'networkConfiguration',
        );
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<AgentcoreCodeInterpreterTimeouts?>(
      'timeouts',
    );
  }
}
