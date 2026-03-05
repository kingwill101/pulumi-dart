import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_args.dart';
import 'agent_agent_state.dart';
import 'agent_agent_timeouts.dart';

/// Resource for managing an AWS Agents for Amazon Bedrock Agent.
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
/// const current = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const currentGetRegion = aws.getRegion({});
/// const exampleAgentTrust = Promise.all([current, currentGetPartition, currentGetRegion, current]).then(([current, currentGetPartition, currentGetRegion, current1]) => aws.iam.getPolicyDocument({
///     statements: [{
///         actions: ["sts:AssumeRole"],
///         principals: [{
///             identifiers: ["bedrock.amazonaws.com"],
///             type: "Service",
///         }],
///         conditions: [
///             {
///                 test: "StringEquals",
///                 values: [current.accountId],
///                 variable: "aws:SourceAccount",
///             },
///             {
///                 test: "ArnLike",
///                 values: [`arn:${currentGetPartition.partition}:bedrock:${currentGetRegion.region}:${current1.accountId}:agent/*`],
///                 variable: "AWS:SourceArn",
///             },
///         ],
///     }],
/// }));
/// const exampleAgentPermissions = Promise.all([currentGetPartition, currentGetRegion]).then(([currentGetPartition, currentGetRegion]) => aws.iam.getPolicyDocument({
///     statements: [{
///         actions: ["bedrock:InvokeModel"],
///         resources: [`arn:${currentGetPartition.partition}:bedrock:${currentGetRegion.region}::foundation-model/anthropic.claude-v2`],
///     }],
/// }));
/// const example = new aws.iam.Role("example", {
///     assumeRolePolicy: exampleAgentTrust.then(exampleAgentTrust => exampleAgentTrust.json),
///     namePrefix: "AmazonBedrockExecutionRoleForAgents_",
/// });
/// const exampleRolePolicy = new aws.iam.RolePolicy("example", {
///     policy: exampleAgentPermissions.then(exampleAgentPermissions => exampleAgentPermissions.json),
///     role: example.id,
/// });
/// const exampleAgentAgent = new aws.bedrock.AgentAgent("example", {
///     agentName: "my-agent-name",
///     agentResourceRoleArn: example.arn,
///     idleSessionTtlInSeconds: 500,
///     instruction: "You are a friendly assistant who helps answer questions.",
///     foundationModel: "anthropic.claude-v2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// current_get_region = aws.get_region()
/// example_agent_trust = aws.iam.get_policy_document(statements=[{
///     "actions": ["sts:AssumeRole"],
///     "principals": [{
///         "identifiers": ["bedrock.amazonaws.com"],
///         "type": "Service",
///     }],
///     "conditions": [
///         {
///             "test": "StringEquals",
///             "values": [current.account_id],
///             "variable": "aws:SourceAccount",
///         },
///         {
///             "test": "ArnLike",
///             "values": [f"arn:{current_get_partition.partition}:bedrock:{current_get_region.region}:{current.account_id}:agent/*"],
///             "variable": "AWS:SourceArn",
///         },
///     ],
/// }])
/// example_agent_permissions = aws.iam.get_policy_document(statements=[{
///     "actions": ["bedrock:InvokeModel"],
///     "resources": [f"arn:{current_get_partition.partition}:bedrock:{current_get_region.region}::foundation-model/anthropic.claude-v2"],
/// }])
/// example = aws.iam.Role("example",
///     assume_role_policy=example_agent_trust.json,
///     name_prefix="AmazonBedrockExecutionRoleForAgents_")
/// example_role_policy = aws.iam.RolePolicy("example",
///     policy=example_agent_permissions.json,
///     role=example.id)
/// example_agent_agent = aws.bedrock.AgentAgent("example",
///     agent_name="my-agent-name",
///     agent_resource_role_arn=example.arn,
///     idle_session_ttl_in_seconds=500,
///     instruction="You are a friendly assistant who helps answer questions.",
///     foundation_model="anthropic.claude-v2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var currentGetRegion = Aws.GetRegion.Invoke();
///
///     var exampleAgentTrust = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Identifiers = new[]
///                         {
///                             "bedrock.amazonaws.com",
///                         },
///                         Type = "Service",
///                     },
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Values = new[]
///                         {
///                             current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                         Variable = "aws:SourceAccount",
///                     },
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "ArnLike",
///                         Values = new[]
///                         {
///                             $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:bedrock:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:agent/*",
///                         },
///                         Variable = "AWS:SourceArn",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleAgentPermissions = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "bedrock:InvokeModel",
///                 },
///                 Resources = new[]
///                 {
///                     $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:bedrock:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}::foundation-model/anthropic.claude-v2",
///                 },
///             },
///         },
///     });
///
///     var example = new Aws.Iam.Role("example", new()
///     {
///         AssumeRolePolicy = exampleAgentTrust.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         NamePrefix = "AmazonBedrockExecutionRoleForAgents_",
///     });
///
///     var exampleRolePolicy = new Aws.Iam.RolePolicy("example", new()
///     {
///         Policy = exampleAgentPermissions.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         Role = example.Id,
///     });
///
///     var exampleAgentAgent = new Aws.Bedrock.AgentAgent("example", new()
///     {
///         AgentName = "my-agent-name",
///         AgentResourceRoleArn = example.Arn,
///         IdleSessionTtlInSeconds = 500,
///         Instruction = "You are a friendly assistant who helps answer questions.",
///         FoundationModel = "anthropic.claude-v2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// currentGetRegion, err := aws.GetRegion(ctx, &aws.GetRegionArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// exampleAgentTrust, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Identifiers: []string{
/// "bedrock.amazonaws.com",
/// },
/// Type: "Service",
/// },
/// },
/// Conditions: []iam.GetPolicyDocumentStatementCondition{
/// {
/// Test: "StringEquals",
/// Values: interface{}{
/// current.AccountId,
/// },
/// Variable: "aws:SourceAccount",
/// },
/// {
/// Test: "ArnLike",
/// Values: []string{
/// fmt.Sprintf("arn:%v:bedrock:%v:%v:agent/*", currentGetPartition.Partition, currentGetRegion.Region, current.AccountId),
/// },
/// Variable: "AWS:SourceArn",
/// },
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// exampleAgentPermissions, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "bedrock:InvokeModel",
/// },
/// Resources: []string{
/// fmt.Sprintf("arn:%v:bedrock:%v::foundation-model/anthropic.claude-v2", currentGetPartition.Partition, currentGetRegion.Region),
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// AssumeRolePolicy: pulumi.String(exampleAgentTrust.Json),
/// NamePrefix: pulumi.String("AmazonBedrockExecutionRoleForAgents_"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicy(ctx, "example", &iam.RolePolicyArgs{
/// Policy: pulumi.String(exampleAgentPermissions.Json),
/// Role: example.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bedrock.NewAgentAgent(ctx, "example", &bedrock.AgentAgentArgs{
/// AgentName: pulumi.String("my-agent-name"),
/// AgentResourceRoleArn: example.Arn,
/// IdleSessionTtlInSeconds: pulumi.Int(500),
/// Instruction: pulumi.String("You are a friendly assistant who helps answer questions."),
/// FoundationModel: pulumi.String("anthropic.claude-v2"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.bedrock.AgentAgent;
/// import com.pulumi.aws.bedrock.AgentAgentArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         final var currentGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var exampleAgentTrust = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("sts:AssumeRole")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .identifiers("bedrock.amazonaws.com")
///                     .type("Service")
///                     .build())
///                 .conditions(
///                     GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("StringEquals")
///                         .values(current.accountId())
///                         .variable("aws:SourceAccount")
///                         .build(),
///                     GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("ArnLike")
///                         .values(String.format("arn:%s:bedrock:%s:%s:agent/*", currentGetPartition.partition(),currentGetRegion.region(),current.accountId()))
///                         .variable("AWS:SourceArn")
///                         .build())
///                 .build())
///             .build());
///
///         final var exampleAgentPermissions = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("bedrock:InvokeModel")
///                 .resources(String.format("arn:%s:bedrock:%s::foundation-model/anthropic.claude-v2", currentGetPartition.partition(),currentGetRegion.region()))
///                 .build())
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .assumeRolePolicy(exampleAgentTrust.json())
///             .namePrefix("AmazonBedrockExecutionRoleForAgents_")
///             .build());
///
///         var exampleRolePolicy = new RolePolicy("exampleRolePolicy", RolePolicyArgs.builder()
///             .policy(exampleAgentPermissions.json())
///             .role(example.id())
///             .build());
///
///         var exampleAgentAgent = new AgentAgent("exampleAgentAgent", AgentAgentArgs.builder()
///             .agentName("my-agent-name")
///             .agentResourceRoleArn(example.arn())
///             .idleSessionTtlInSeconds(500)
///             .instruction("You are a friendly assistant who helps answer questions.")
///             .foundationModel("anthropic.claude-v2")
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
///       assumeRolePolicy: ${exampleAgentTrust.json}
///       namePrefix: AmazonBedrockExecutionRoleForAgents_
///   exampleRolePolicy:
///     type: aws:iam:RolePolicy
///     name: example
///     properties:
///       policy: ${exampleAgentPermissions.json}
///       role: ${example.id}
///   exampleAgentAgent:
///     type: aws:bedrock:AgentAgent
///     name: example
///     properties:
///       agentName: my-agent-name
///       agentResourceRoleArn: ${example.arn}
///       idleSessionTtlInSeconds: 500
///       instruction: You are a friendly assistant who helps answer questions.
///       foundationModel: anthropic.claude-v2
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
///   currentGetRegion:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   exampleAgentTrust:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - sts:AssumeRole
///             principals:
///               - identifiers:
///                   - bedrock.amazonaws.com
///                 type: Service
///             conditions:
///               - test: StringEquals
///                 values:
///                   - ${current.accountId}
///                 variable: aws:SourceAccount
///               - test: ArnLike
///                 values:
///                   - arn:${currentGetPartition.partition}:bedrock:${currentGetRegion.region}:${current.accountId}:agent/*
///                 variable: AWS:SourceArn
///   exampleAgentPermissions:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - bedrock:InvokeModel
///             resources:
///               - arn:${currentGetPartition.partition}:bedrock:${currentGetRegion.region}::foundation-model/anthropic.claude-v2
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Agents for Amazon Bedrock Agent using the agent ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentAgent:AgentAgent example GGRRAED6JP
/// ```
class AgentAgent extends pulumi.CustomResource {
  /// ARN of the agent.
  late final pulumi.Output<String> agentArn;

  /// Agents collaboration role. Valid values: `SUPERVISOR`, `SUPERVISOR_ROUTER`, `DISABLED`.
  late final pulumi.Output<String> agentCollaboration;

  /// Unique identifier of the agent.
  late final pulumi.Output<String> agentId;

  /// Name of the agent.
  late final pulumi.Output<String> agentName;

  /// ARN of the IAM role with permissions to invoke API operations on the agent.
  late final pulumi.Output<String> agentResourceRoleArn;

  /// Version of the agent.
  late final pulumi.Output<String> agentVersion;

  /// ARN of the AWS KMS key that encrypts the agent.
  late final pulumi.Output<String?> customerEncryptionKeyArn;

  /// Description of the agent.
  late final pulumi.Output<String?> description;

  /// Foundation model used for orchestration by the agent.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> foundationModel;

  /// Details about the guardrail associated with the agent. See `guardrail_configuration` Block for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> guardrailConfigurations;

  /// Number of seconds for which Amazon Bedrock keeps information about a user's conversation with the agent. A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Bedrock deletes any data provided before the timeout.
  late final pulumi.Output<int> idleSessionTtlInSeconds;

  /// Instructions that tell the agent what it should do and how it should interact with users. If `prepare_agent` is `true` this argument is required. The valid range is 40 - 20000 characters.
  late final pulumi.Output<String> instruction;

  /// Configurations for the agent's ability to retain the conversational context.
  late final pulumi.Output<List<Map<String, dynamic>>> memoryConfigurations;

  /// Whether to prepare the agent after creation or modification. Defaults to `true`.
  late final pulumi.Output<bool> prepareAgent;

  /// Timestamp of when the agent was last prepared.
  late final pulumi.Output<String> preparedAt;

  /// Configurations to override prompt templates in different parts of an agent sequence. For more information, see [Advanced prompts](https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html). See `prompt_override_configuration` Block for details.
  late final pulumi.Output<List<Map<String, dynamic>>>
  promptOverrideConfigurations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Whether the in-use check is skipped when deleting the agent.
  late final pulumi.Output<bool> skipResourceInUseCheck;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentAgentTimeouts?> timeouts;

  /// Creates a new [AgentAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentAgent]. {@macro pulumi_bedrock_agent_agent_agent_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentAgent(
    String name, {
    AgentAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:bedrock/agentAgent:AgentAgent',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    agentArn = registerOutput<String>('agentArn');
    agentCollaboration = registerOutput<String>('agentCollaboration');
    agentId = registerOutput<String>('agentId');
    agentName = registerOutput<String>('agentName');
    agentResourceRoleArn = registerOutput<String>('agentResourceRoleArn');
    agentVersion = registerOutput<String>('agentVersion');
    customerEncryptionKeyArn = registerOutput<String?>(
      'customerEncryptionKeyArn',
    );
    description = registerOutput<String?>('description');
    foundationModel = registerOutput<String>('foundationModel');
    guardrailConfigurations = registerOutput<List<Map<String, dynamic>>?>(
      'guardrailConfigurations',
    );
    idleSessionTtlInSeconds = registerOutput<int>('idleSessionTtlInSeconds');
    instruction = registerOutput<String>('instruction');
    memoryConfigurations = registerOutput<List<Map<String, dynamic>>>(
      'memoryConfigurations',
    );
    prepareAgent = registerOutput<bool>('prepareAgent');
    preparedAt = registerOutput<String>('preparedAt');
    promptOverrideConfigurations = registerOutput<List<Map<String, dynamic>>>(
      'promptOverrideConfigurations',
    );
    region = registerOutput<String>('region');
    skipResourceInUseCheck = registerOutput<bool>('skipResourceInUseCheck');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<AgentAgentTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AgentAgentTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [AgentAgent] resource's state with the given [name] and [id].
  static AgentAgent get(
    String name,
    pulumi.Input<String> id, {
    AgentAgentState? state,
  }) {
    return AgentAgent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AgentAgent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:bedrock/agentAgent:AgentAgent',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    agentArn = registerOutput<String>('agentArn');
    agentCollaboration = registerOutput<String>('agentCollaboration');
    agentId = registerOutput<String>('agentId');
    agentName = registerOutput<String>('agentName');
    agentResourceRoleArn = registerOutput<String>('agentResourceRoleArn');
    agentVersion = registerOutput<String>('agentVersion');
    customerEncryptionKeyArn = registerOutput<String?>(
      'customerEncryptionKeyArn',
    );
    description = registerOutput<String?>('description');
    foundationModel = registerOutput<String>('foundationModel');
    guardrailConfigurations = registerOutput<List<Map<String, dynamic>>?>(
      'guardrailConfigurations',
    );
    idleSessionTtlInSeconds = registerOutput<int>('idleSessionTtlInSeconds');
    instruction = registerOutput<String>('instruction');
    memoryConfigurations = registerOutput<List<Map<String, dynamic>>>(
      'memoryConfigurations',
    );
    prepareAgent = registerOutput<bool>('prepareAgent');
    preparedAt = registerOutput<String>('preparedAt');
    promptOverrideConfigurations = registerOutput<List<Map<String, dynamic>>>(
      'promptOverrideConfigurations',
    );
    region = registerOutput<String>('region');
    skipResourceInUseCheck = registerOutput<bool>('skipResourceInUseCheck');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<AgentAgentTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AgentAgentTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
