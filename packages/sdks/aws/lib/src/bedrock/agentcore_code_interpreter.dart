import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_code_interpreter_args.dart';
import 'agentcore_code_interpreter_certificate.dart';
import 'agentcore_code_interpreter_network_configuration.dart';
import 'agentcore_code_interpreter_state.dart';
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
///     networkConfiguration: {
///         networkMode: "PUBLIC",
///     },
///     name: "example-code-interpreter",
///     description: "Code interpreter for data analysis",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreCodeInterpreter("example",
///     network_configuration={
///         "network_mode": "PUBLIC",
///     },
///     name="example-code-interpreter",
///     description="Code interpreter for data analysis")
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
///         NetworkConfiguration = new Aws.Bedrock.Inputs.AgentcoreCodeInterpreterNetworkConfigurationArgs
///         {
///             NetworkMode = "PUBLIC",
///         },
///         Name = "example-code-interpreter",
///         Description = "Code interpreter for data analysis",
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
/// 			NetworkConfiguration: &bedrock.AgentcoreCodeInterpreterNetworkConfigurationArgs{
/// 				NetworkMode: pulumi.String("PUBLIC"),
/// 			},
/// 			Name:        pulumi.String("example-code-interpreter"),
/// 			Description: pulumi.String("Code interpreter for data analysis"),
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
/// resource "aws_bedrock_agentcorecodeinterpreter" "example" {
///   network_configuration = {
///     network_mode = "PUBLIC"
///   }
///   name        = "example-code-interpreter"
///   description = "Code interpreter for data analysis"
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
///         var example = new AgentcoreCodeInterpreter("example", AgentcoreCodeInterpreterArgs.builder()
///             .networkConfiguration(AgentcoreCodeInterpreterNetworkConfigurationArgs.builder()
///                 .networkMode("PUBLIC")
///                 .build())
///             .name("example-code-interpreter")
///             .description("Code interpreter for data analysis")
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
///       networkConfiguration:
///         networkMode: PUBLIC
///       name: example-code-interpreter
///       description: Code interpreter for data analysis
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
///         principals: [{
///             type: "Service",
///             identifiers: ["bedrock-agentcore.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const example = new aws.iam.Role("example", {
///     name: "bedrock-agentcore-code-interpreter-role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const exampleAgentcoreCodeInterpreter = new aws.bedrock.AgentcoreCodeInterpreter("example", {
///     networkConfiguration: {
///         networkMode: "SANDBOX",
///     },
///     name: "example-code-interpreter",
///     description: "Code interpreter with custom execution role",
///     executionRoleArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
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
///     name="bedrock-agentcore-code-interpreter-role",
///     assume_role_policy=assume_role.json)
/// example_agentcore_code_interpreter = aws.bedrock.AgentcoreCodeInterpreter("example",
///     network_configuration={
///         "network_mode": "SANDBOX",
///     },
///     name="example-code-interpreter",
///     description="Code interpreter with custom execution role",
///     execution_role_arn=example.arn)
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
///         Name = "bedrock-agentcore-code-interpreter-role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleAgentcoreCodeInterpreter = new Aws.Bedrock.AgentcoreCodeInterpreter("example", new()
///     {
///         NetworkConfiguration = new Aws.Bedrock.Inputs.AgentcoreCodeInterpreterNetworkConfigurationArgs
///         {
///             NetworkMode = "SANDBOX",
///         },
///         Name = "example-code-interpreter",
///         Description = "Code interpreter with custom execution role",
///         ExecutionRoleArn = example.Arn,
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
/// 			Name:             pulumi.String("bedrock-agentcore-code-interpreter-role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentcoreCodeInterpreter(ctx, "example", &bedrock.AgentcoreCodeInterpreterArgs{
/// 			NetworkConfiguration: &bedrock.AgentcoreCodeInterpreterNetworkConfigurationArgs{
/// 				NetworkMode: pulumi.String("SANDBOX"),
/// 			},
/// 			Name:             pulumi.String("example-code-interpreter"),
/// 			Description:      pulumi.String("Code interpreter with custom execution role"),
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
///   name               = "bedrock-agentcore-code-interpreter-role"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_bedrock_agentcorecodeinterpreter" "example" {
///   network_configuration = {
///     network_mode = "SANDBOX"
///   }
///   name               = "example-code-interpreter"
///   description        = "Code interpreter with custom execution role"
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
/// import com.pulumi.aws.bedrock.AgentcoreCodeInterpreter;
/// import com.pulumi.aws.bedrock.AgentcoreCodeInterpreterArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreCodeInterpreterNetworkConfigurationArgs;
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
///             .name("bedrock-agentcore-code-interpreter-role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var exampleAgentcoreCodeInterpreter = new AgentcoreCodeInterpreter("exampleAgentcoreCodeInterpreter", AgentcoreCodeInterpreterArgs.builder()
///             .networkConfiguration(AgentcoreCodeInterpreterNetworkConfigurationArgs.builder()
///                 .networkMode("SANDBOX")
///                 .build())
///             .name("example-code-interpreter")
///             .description("Code interpreter with custom execution role")
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
///       name: bedrock-agentcore-code-interpreter-role
///       assumeRolePolicy: ${assumeRole.json}
///   exampleAgentcoreCodeInterpreter:
///     type: aws:bedrock:AgentcoreCodeInterpreter
///     name: example
///     properties:
///       networkConfiguration:
///         networkMode: SANDBOX
///       name: example-code-interpreter
///       description: Code interpreter with custom execution role
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
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Code Interpreter using the code interpreter ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreCodeInterpreter:AgentcoreCodeInterpreter example CODEINTERPRETER1234567890
/// ```
class AgentcoreCodeInterpreter extends pulumi.CustomResource {
  /// Certificates to install in the code interpreter. Between 1 and 200 blocks are supported. See `certificate` below.
  late final pulumi.Output<List<AgentcoreCodeInterpreterCertificate>?> certificates;
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
  /// Network configuration for the code interpreter. See `networkConfiguration` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<AgentcoreCodeInterpreterNetworkConfiguration> networkConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    certificates = registerOutput<List<AgentcoreCodeInterpreterCertificate>?>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreCodeInterpreterCertificate>(guardedValue, (value) => AgentcoreCodeInterpreterCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    codeInterpreterArn = registerOutput<String>('codeInterpreterArn');
    codeInterpreterId = registerOutput<String>('codeInterpreterId');
    description = registerOutput<String?>('description');
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    this.name = registerOutput<String>('name');
    networkConfiguration = registerOutput<AgentcoreCodeInterpreterNetworkConfiguration>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreCodeInterpreterNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentcoreCodeInterpreterTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreCodeInterpreterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AgentcoreCodeInterpreter] resource's state with the given [name] and [id].
  static AgentcoreCodeInterpreter get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreCodeInterpreterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentcoreCodeInterpreter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentcoreCodeInterpreter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreCodeInterpreter:AgentcoreCodeInterpreter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificates = registerOutput<List<AgentcoreCodeInterpreterCertificate>?>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreCodeInterpreterCertificate>(guardedValue, (value) => AgentcoreCodeInterpreterCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    codeInterpreterArn = registerOutput<String>('codeInterpreterArn');
    codeInterpreterId = registerOutput<String>('codeInterpreterId');
    description = registerOutput<String?>('description');
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    this.name = registerOutput<String>('name');
    networkConfiguration = registerOutput<AgentcoreCodeInterpreterNetworkConfiguration>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreCodeInterpreterNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentcoreCodeInterpreterTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreCodeInterpreterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AgentcoreCodeInterpreter] resource.
  AgentcoreCodeInterpreter.reference(String urn)
    : super(
        'aws:bedrock/agentcoreCodeInterpreter:AgentcoreCodeInterpreter',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    certificates = registerOutput<List<AgentcoreCodeInterpreterCertificate>?>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreCodeInterpreterCertificate>(guardedValue, (value) => AgentcoreCodeInterpreterCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    codeInterpreterArn = registerOutput<String>('codeInterpreterArn');
    codeInterpreterId = registerOutput<String>('codeInterpreterId');
    description = registerOutput<String?>('description');
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    this.name = registerOutput<String>('name');
    networkConfiguration = registerOutput<AgentcoreCodeInterpreterNetworkConfiguration>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreCodeInterpreterNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentcoreCodeInterpreterTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreCodeInterpreterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
