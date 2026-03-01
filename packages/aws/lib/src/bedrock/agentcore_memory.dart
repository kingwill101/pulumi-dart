import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_args.dart';
import 'agentcore_memory_timeouts.dart';

/// Manages an AWS Bedrock AgentCore Memory. Memory provides persistent storage for AI agent interactions, allowing agents to retain context across conversations and sessions.
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
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///         principals: [{
///             type: "Service",
///             identifiers: ["bedrock-agentcore.amazonaws.com"],
///         }],
///     }],
/// });
/// const example = new aws.iam.Role("example", {
///     name: "bedrock-agentcore-memory-role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const exampleRolePolicyAttachment = new aws.iam.RolePolicyAttachment("example", {
///     role: example.name,
///     policyArn: "arn:aws:iam::aws:policy/AmazonBedrockAgentCoreMemoryBedrockModelInferenceExecutionRolePolicy",
/// });
/// const exampleAgentcoreMemory = new aws.bedrock.AgentcoreMemory("example", {
///     name: "example_memory",
///     eventExpiryDuration: 30,
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
///     name="bedrock-agentcore-memory-role",
///     assume_role_policy=assume_role.json)
/// example_role_policy_attachment = aws.iam.RolePolicyAttachment("example",
///     role=example.name,
///     policy_arn="arn:aws:iam::aws:policy/AmazonBedrockAgentCoreMemoryBedrockModelInferenceExecutionRolePolicy")
/// example_agentcore_memory = aws.bedrock.AgentcoreMemory("example",
///     name="example_memory",
///     event_expiry_duration=30)
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
///         Name = "bedrock-agentcore-memory-role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("example", new()
///     {
///         Role = example.Name,
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonBedrockAgentCoreMemoryBedrockModelInferenceExecutionRolePolicy",
///     });
///
///     var exampleAgentcoreMemory = new Aws.Bedrock.AgentcoreMemory("example", new()
///     {
///         Name = "example_memory",
///         EventExpiryDuration = 30,
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
/// 			Name:             pulumi.String("bedrock-agentcore-memory-role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "example", &iam.RolePolicyAttachmentArgs{
/// 			Role:      example.Name,
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonBedrockAgentCoreMemoryBedrockModelInferenceExecutionRolePolicy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentcoreMemory(ctx, "example", &bedrock.AgentcoreMemoryArgs{
/// 			Name:                pulumi.String("example_memory"),
/// 			EventExpiryDuration: pulumi.Int(30),
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
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.bedrock.AgentcoreMemory;
/// import com.pulumi.aws.bedrock.AgentcoreMemoryArgs;
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
///             .name("bedrock-agentcore-memory-role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var exampleRolePolicyAttachment = new RolePolicyAttachment("exampleRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .role(example.name())
///             .policyArn("arn:aws:iam::aws:policy/AmazonBedrockAgentCoreMemoryBedrockModelInferenceExecutionRolePolicy")
///             .build());
///
///         var exampleAgentcoreMemory = new AgentcoreMemory("exampleAgentcoreMemory", AgentcoreMemoryArgs.builder()
///             .name("example_memory")
///             .eventExpiryDuration(30)
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
///       name: bedrock-agentcore-memory-role
///       assumeRolePolicy: ${assumeRole.json}
///   exampleRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: example
///     properties:
///       role: ${example.name}
///       policyArn: arn:aws:iam::aws:policy/AmazonBedrockAgentCoreMemoryBedrockModelInferenceExecutionRolePolicy
///   exampleAgentcoreMemory:
///     type: aws:bedrock:AgentcoreMemory
///     name: example
///     properties:
///       name: example_memory
///       eventExpiryDuration: 30
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
/// ### Memory with Custom Encryption and Role
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {description: "KMS key for Bedrock AgentCore Memory"});
/// const exampleAgentcoreMemory = new aws.bedrock.AgentcoreMemory("example", {
///     name: "example_memory",
///     description: "Memory for customer service agent",
///     eventExpiryDuration: 60,
///     encryptionKeyArn: example.arn,
///     memoryExecutionRoleArn: exampleAwsIamRole.arn,
///     clientToken: "unique-client-token",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example", description="KMS key for Bedrock AgentCore Memory")
/// example_agentcore_memory = aws.bedrock.AgentcoreMemory("example",
///     name="example_memory",
///     description="Memory for customer service agent",
///     event_expiry_duration=60,
///     encryption_key_arn=example.arn,
///     memory_execution_role_arn=example_aws_iam_role["arn"],
///     client_token="unique-client-token")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "KMS key for Bedrock AgentCore Memory",
///     });
///
///     var exampleAgentcoreMemory = new Aws.Bedrock.AgentcoreMemory("example", new()
///     {
///         Name = "example_memory",
///         Description = "Memory for customer service agent",
///         EventExpiryDuration = 60,
///         EncryptionKeyArn = example.Arn,
///         MemoryExecutionRoleArn = exampleAwsIamRole.Arn,
///         ClientToken = "unique-client-token",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description: pulumi.String("KMS key for Bedrock AgentCore Memory"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentcoreMemory(ctx, "example", &bedrock.AgentcoreMemoryArgs{
/// 			Name:                   pulumi.String("example_memory"),
/// 			Description:            pulumi.String("Memory for customer service agent"),
/// 			EventExpiryDuration:    pulumi.Int(60),
/// 			EncryptionKeyArn:       example.Arn,
/// 			MemoryExecutionRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			ClientToken:            "unique-client-token",
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.bedrock.AgentcoreMemory;
/// import com.pulumi.aws.bedrock.AgentcoreMemoryArgs;
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("KMS key for Bedrock AgentCore Memory")
///             .build());
///
///         var exampleAgentcoreMemory = new AgentcoreMemory("exampleAgentcoreMemory", AgentcoreMemoryArgs.builder()
///             .name("example_memory")
///             .description("Memory for customer service agent")
///             .eventExpiryDuration(60)
///             .encryptionKeyArn(example.arn())
///             .memoryExecutionRoleArn(exampleAwsIamRole.arn())
///             .clientToken("unique-client-token")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: KMS key for Bedrock AgentCore Memory
///   exampleAgentcoreMemory:
///     type: aws:bedrock:AgentcoreMemory
///     name: example
///     properties:
///       name: example_memory
///       description: Memory for customer service agent
///       eventExpiryDuration: 60
///       encryptionKeyArn: ${example.arn}
///       memoryExecutionRoleArn: ${exampleAwsIamRole.arn}
///       clientToken: unique-client-token
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Memory using the memory ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreMemory:AgentcoreMemory example MEMORY1234567890
/// ```
class AgentcoreMemory extends pulumi.CustomResource {
  /// ARN of the Memory.
  late final pulumi.Output<String> arn;

  /// Description of the memory.
  late final pulumi.Output<String?> description;

  /// ARN of the KMS key used to encrypt the memory. If not provided, AWS managed encryption is used.
  late final pulumi.Output<String?> encryptionKeyArn;

  /// Number of days after which memory events expire. Must be a positive integer in the range of 7 to 365.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> eventExpiryDuration;

  /// ARN of the IAM role that the memory service assumes to perform operations. Required when using custom memory strategies with model processing.
  late final pulumi.Output<String?> memoryExecutionRoleArn;

  /// Name of the memory.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentcoreMemoryTimeouts?> timeouts;

  /// Creates a new [AgentcoreMemory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreMemory]. {@macro pulumi_bedrock_agentcore_memory_agentcore_memory_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreMemory(
    String name, {
    AgentcoreMemoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:bedrock/agentcoreMemory:AgentcoreMemory',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.encryptionKeyArn = registerOutput<String?>('encryptionKeyArn');
    this.eventExpiryDuration = registerOutput<int>('eventExpiryDuration');
    this.memoryExecutionRoleArn = registerOutput<String?>(
      'memoryExecutionRoleArn',
    );
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<AgentcoreMemoryTimeouts?>('timeouts');
  }
}
