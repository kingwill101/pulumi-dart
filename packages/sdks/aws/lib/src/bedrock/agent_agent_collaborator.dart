import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_collaborator_agent_descriptor.dart';
import 'agent_agent_collaborator_args.dart';
import 'agent_agent_collaborator_state.dart';
import 'agent_agent_collaborator_timeouts.dart';

/// Resource for managing an AWS Bedrock Agents Agent Collaborator.
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
/// const exampleAgentPermissions = Promise.all([currentGetPartition, currentGetRegion, currentGetRegion, current, currentGetRegion, current]).then(([currentGetPartition, currentGetRegion, currentGetRegion1, current, currentGetRegion2, current1]) => aws.iam.getPolicyDocument({
///     statements: [
///         {
///             actions: ["bedrock:InvokeModel"],
///             resources: [`arn:${currentGetPartition.partition}:bedrock:${currentGetRegion.region}::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0`],
///         },
///         {
///             actions: [
///                 "bedrock:GetAgentAlias",
///                 "bedrock:InvokeAgent",
///             ],
///             resources: [
///                 `arn:${currentAgent.partition}:bedrock:${currentGetRegion1.region}:${current.accountId}:agent/*`,
///                 `arn:${currentAgent.partition}:bedrock:${currentGetRegion2.region}:${current1.accountId}:agent-alias/*`,
///             ],
///         },
///     ],
/// }));
/// const example = new aws.iam.Role("example", {
///     assumeRolePolicy: exampleAgentTrust.then(exampleAgentTrust => exampleAgentTrust.json),
///     namePrefix: "AmazonBedrockExecutionRoleForAgents_",
/// });
/// const exampleRolePolicy = new aws.iam.RolePolicy("example", {
///     policy: exampleAgentPermissions.then(exampleAgentPermissions => exampleAgentPermissions.json),
///     role: example.id,
/// });
/// const exampleCollaborator = new aws.bedrock.AgentAgent("example_collaborator", {
///     agentName: "my-agent-collaborator",
///     agentResourceRoleArn: example.arn,
///     idleSessionTtlInSeconds: 500,
///     foundationModel: "anthropic.claude-3-5-sonnet-20241022-v2:0",
///     instruction: "do what the supervisor tells you to do",
/// });
/// const exampleSupervisor = new aws.bedrock.AgentAgent("example_supervisor", {
///     agentName: "my-agent-supervisor",
///     agentResourceRoleArn: example.arn,
///     agentCollaboration: "SUPERVISOR",
///     idleSessionTtlInSeconds: 500,
///     foundationModel: "anthropic.claude-3-5-sonnet-20241022-v2:0",
///     instruction: "tell the sub agent what to do",
///     prepareAgent: false,
/// });
/// const exampleAgentAgentAlias = new aws.bedrock.AgentAgentAlias("example", {
///     agentAliasName: "my-agent-alias",
///     agentId: exampleCollaborator.agentId,
///     description: "Test Alias",
/// });
/// const exampleAgentAgentCollaborator = new aws.bedrock.AgentAgentCollaborator("example", {
///     agentId: exampleSupervisor.agentId,
///     collaborationInstruction: "tell the other agent what to do",
///     collaboratorName: "my-collab-example",
///     relayConversationHistory: "TO_COLLABORATOR",
///     agentDescriptor: {
///         aliasArn: exampleAgentAgentAlias.agentAliasArn,
///     },
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
/// example_agent_permissions = aws.iam.get_policy_document(statements=[
///     {
///         "actions": ["bedrock:InvokeModel"],
///         "resources": [f"arn:{current_get_partition.partition}:bedrock:{current_get_region.region}::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0"],
///     },
///     {
///         "actions": [
///             "bedrock:GetAgentAlias",
///             "bedrock:InvokeAgent",
///         ],
///         "resources": [
///             f"arn:{current_agent['partition']}:bedrock:{current_get_region.region}:{current.account_id}:agent/*",
///             f"arn:{current_agent['partition']}:bedrock:{current_get_region.region}:{current.account_id}:agent-alias/*",
///         ],
///     },
/// ])
/// example = aws.iam.Role("example",
///     assume_role_policy=example_agent_trust.json,
///     name_prefix="AmazonBedrockExecutionRoleForAgents_")
/// example_role_policy = aws.iam.RolePolicy("example",
///     policy=example_agent_permissions.json,
///     role=example.id)
/// example_collaborator = aws.bedrock.AgentAgent("example_collaborator",
///     agent_name="my-agent-collaborator",
///     agent_resource_role_arn=example.arn,
///     idle_session_ttl_in_seconds=500,
///     foundation_model="anthropic.claude-3-5-sonnet-20241022-v2:0",
///     instruction="do what the supervisor tells you to do")
/// example_supervisor = aws.bedrock.AgentAgent("example_supervisor",
///     agent_name="my-agent-supervisor",
///     agent_resource_role_arn=example.arn,
///     agent_collaboration="SUPERVISOR",
///     idle_session_ttl_in_seconds=500,
///     foundation_model="anthropic.claude-3-5-sonnet-20241022-v2:0",
///     instruction="tell the sub agent what to do",
///     prepare_agent=False)
/// example_agent_agent_alias = aws.bedrock.AgentAgentAlias("example",
///     agent_alias_name="my-agent-alias",
///     agent_id=example_collaborator.agent_id,
///     description="Test Alias")
/// example_agent_agent_collaborator = aws.bedrock.AgentAgentCollaborator("example",
///     agent_id=example_supervisor.agent_id,
///     collaboration_instruction="tell the other agent what to do",
///     collaborator_name="my-collab-example",
///     relay_conversation_history="TO_COLLABORATOR",
///     agent_descriptor={
///         "alias_arn": example_agent_agent_alias.agent_alias_arn,
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
///                     $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:bedrock:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "bedrock:GetAgentAlias",
///                     "bedrock:InvokeAgent",
///                 },
///                 Resources = new[]
///                 {
///                     $"arn:{currentAgent.Partition}:bedrock:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:agent/*",
///                     $"arn:{currentAgent.Partition}:bedrock:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:agent-alias/*",
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
///     var exampleCollaborator = new Aws.Bedrock.AgentAgent("example_collaborator", new()
///     {
///         AgentName = "my-agent-collaborator",
///         AgentResourceRoleArn = example.Arn,
///         IdleSessionTtlInSeconds = 500,
///         FoundationModel = "anthropic.claude-3-5-sonnet-20241022-v2:0",
///         Instruction = "do what the supervisor tells you to do",
///     });
///
///     var exampleSupervisor = new Aws.Bedrock.AgentAgent("example_supervisor", new()
///     {
///         AgentName = "my-agent-supervisor",
///         AgentResourceRoleArn = example.Arn,
///         AgentCollaboration = "SUPERVISOR",
///         IdleSessionTtlInSeconds = 500,
///         FoundationModel = "anthropic.claude-3-5-sonnet-20241022-v2:0",
///         Instruction = "tell the sub agent what to do",
///         PrepareAgent = false,
///     });
///
///     var exampleAgentAgentAlias = new Aws.Bedrock.AgentAgentAlias("example", new()
///     {
///         AgentAliasName = "my-agent-alias",
///         AgentId = exampleCollaborator.AgentId,
///         Description = "Test Alias",
///     });
///
///     var exampleAgentAgentCollaborator = new Aws.Bedrock.AgentAgentCollaborator("example", new()
///     {
///         AgentId = exampleSupervisor.AgentId,
///         CollaborationInstruction = "tell the other agent what to do",
///         CollaboratorName = "my-collab-example",
///         RelayConversationHistory = "TO_COLLABORATOR",
///         AgentDescriptor = new Aws.Bedrock.Inputs.AgentAgentCollaboratorAgentDescriptorArgs
///         {
///             AliasArn = exampleAgentAgentAlias.AgentAliasArn,
///         },
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
/// fmt.Sprintf("arn:%v:bedrock:%v::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0", currentGetPartition.Partition, currentGetRegion.Region),
/// },
/// },
/// {
/// Actions: []string{
/// "bedrock:GetAgentAlias",
/// "bedrock:InvokeAgent",
/// },
/// Resources: []string{
/// fmt.Sprintf("arn:%v:bedrock:%v:%v:agent/*", currentAgent.Partition, currentGetRegion.Region, current.AccountId),
/// fmt.Sprintf("arn:%v:bedrock:%v:%v:agent-alias/*", currentAgent.Partition, currentGetRegion.Region, current.AccountId),
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
/// exampleCollaborator, err := bedrock.NewAgentAgent(ctx, "example_collaborator", &bedrock.AgentAgentArgs{
/// AgentName: pulumi.String("my-agent-collaborator"),
/// AgentResourceRoleArn: example.Arn,
/// IdleSessionTtlInSeconds: pulumi.Int(500),
/// FoundationModel: pulumi.String("anthropic.claude-3-5-sonnet-20241022-v2:0"),
/// Instruction: pulumi.String("do what the supervisor tells you to do"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleSupervisor, err := bedrock.NewAgentAgent(ctx, "example_supervisor", &bedrock.AgentAgentArgs{
/// AgentName: pulumi.String("my-agent-supervisor"),
/// AgentResourceRoleArn: example.Arn,
/// AgentCollaboration: pulumi.String("SUPERVISOR"),
/// IdleSessionTtlInSeconds: pulumi.Int(500),
/// FoundationModel: pulumi.String("anthropic.claude-3-5-sonnet-20241022-v2:0"),
/// Instruction: pulumi.String("tell the sub agent what to do"),
/// PrepareAgent: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// exampleAgentAgentAlias, err := bedrock.NewAgentAgentAlias(ctx, "example", &bedrock.AgentAgentAliasArgs{
/// AgentAliasName: pulumi.String("my-agent-alias"),
/// AgentId: exampleCollaborator.AgentId,
/// Description: pulumi.String("Test Alias"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bedrock.NewAgentAgentCollaborator(ctx, "example", &bedrock.AgentAgentCollaboratorArgs{
/// AgentId: exampleSupervisor.AgentId,
/// CollaborationInstruction: pulumi.String("tell the other agent what to do"),
/// CollaboratorName: pulumi.String("my-collab-example"),
/// RelayConversationHistory: pulumi.String("TO_COLLABORATOR"),
/// AgentDescriptor: &bedrock.AgentAgentCollaboratorAgentDescriptorArgs{
/// AliasArn: exampleAgentAgentAlias.AgentAliasArn,
/// },
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
/// import com.pulumi.aws.bedrock.AgentAgentAlias;
/// import com.pulumi.aws.bedrock.AgentAgentAliasArgs;
/// import com.pulumi.aws.bedrock.AgentAgentCollaborator;
/// import com.pulumi.aws.bedrock.AgentAgentCollaboratorArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentAgentCollaboratorAgentDescriptorArgs;
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
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .actions("bedrock:InvokeModel")
///                     .resources(String.format("arn:%s:bedrock:%s::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0", currentGetPartition.partition(),currentGetRegion.region()))
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .actions(
///                         "bedrock:GetAgentAlias",
///                         "bedrock:InvokeAgent")
///                     .resources(
///                         String.format("arn:%s:bedrock:%s:%s:agent/*", currentAgent.partition(),currentGetRegion.region(),current.accountId()),
///                         String.format("arn:%s:bedrock:%s:%s:agent-alias/*", currentAgent.partition(),currentGetRegion.region(),current.accountId()))
///                     .build())
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
///         var exampleCollaborator = new AgentAgent("exampleCollaborator", AgentAgentArgs.builder()
///             .agentName("my-agent-collaborator")
///             .agentResourceRoleArn(example.arn())
///             .idleSessionTtlInSeconds(500)
///             .foundationModel("anthropic.claude-3-5-sonnet-20241022-v2:0")
///             .instruction("do what the supervisor tells you to do")
///             .build());
///
///         var exampleSupervisor = new AgentAgent("exampleSupervisor", AgentAgentArgs.builder()
///             .agentName("my-agent-supervisor")
///             .agentResourceRoleArn(example.arn())
///             .agentCollaboration("SUPERVISOR")
///             .idleSessionTtlInSeconds(500)
///             .foundationModel("anthropic.claude-3-5-sonnet-20241022-v2:0")
///             .instruction("tell the sub agent what to do")
///             .prepareAgent(false)
///             .build());
///
///         var exampleAgentAgentAlias = new AgentAgentAlias("exampleAgentAgentAlias", AgentAgentAliasArgs.builder()
///             .agentAliasName("my-agent-alias")
///             .agentId(exampleCollaborator.agentId())
///             .description("Test Alias")
///             .build());
///
///         var exampleAgentAgentCollaborator = new AgentAgentCollaborator("exampleAgentAgentCollaborator", AgentAgentCollaboratorArgs.builder()
///             .agentId(exampleSupervisor.agentId())
///             .collaborationInstruction("tell the other agent what to do")
///             .collaboratorName("my-collab-example")
///             .relayConversationHistory("TO_COLLABORATOR")
///             .agentDescriptor(AgentAgentCollaboratorAgentDescriptorArgs.builder()
///                 .aliasArn(exampleAgentAgentAlias.agentAliasArn())
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
///       assumeRolePolicy: ${exampleAgentTrust.json}
///       namePrefix: AmazonBedrockExecutionRoleForAgents_
///   exampleRolePolicy:
///     type: aws:iam:RolePolicy
///     name: example
///     properties:
///       policy: ${exampleAgentPermissions.json}
///       role: ${example.id}
///   exampleCollaborator:
///     type: aws:bedrock:AgentAgent
///     name: example_collaborator
///     properties:
///       agentName: my-agent-collaborator
///       agentResourceRoleArn: ${example.arn}
///       idleSessionTtlInSeconds: 500
///       foundationModel: anthropic.claude-3-5-sonnet-20241022-v2:0
///       instruction: do what the supervisor tells you to do
///   exampleSupervisor:
///     type: aws:bedrock:AgentAgent
///     name: example_supervisor
///     properties:
///       agentName: my-agent-supervisor
///       agentResourceRoleArn: ${example.arn}
///       agentCollaboration: SUPERVISOR
///       idleSessionTtlInSeconds: 500
///       foundationModel: anthropic.claude-3-5-sonnet-20241022-v2:0
///       instruction: tell the sub agent what to do
///       prepareAgent: false
///   exampleAgentAgentAlias:
///     type: aws:bedrock:AgentAgentAlias
///     name: example
///     properties:
///       agentAliasName: my-agent-alias
///       agentId: ${exampleCollaborator.agentId}
///       description: Test Alias
///   exampleAgentAgentCollaborator:
///     type: aws:bedrock:AgentAgentCollaborator
///     name: example
///     properties:
///       agentId: ${exampleSupervisor.agentId}
///       collaborationInstruction: tell the other agent what to do
///       collaboratorName: my-collab-example
///       relayConversationHistory: TO_COLLABORATOR
///       agentDescriptor:
///         aliasArn: ${exampleAgentAgentAlias.agentAliasArn}
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
///               - arn:${currentGetPartition.partition}:bedrock:${currentGetRegion.region}::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0
///           - actions:
///               - bedrock:GetAgentAlias
///               - bedrock:InvokeAgent
///             resources:
///               - arn:${currentAgent.partition}:bedrock:${currentGetRegion.region}:${current.accountId}:agent/*
///               - arn:${currentAgent.partition}:bedrock:${currentGetRegion.region}:${current.accountId}:agent-alias/*
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock Agents Agent Collaborator using a comma-delimited string combining `agent_id`, `agent_version`, and `collaborator_id`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentAgentCollaborator:AgentAgentCollaborator example 9LSJO0BFI8,DRAFT,AG3TN4RQIY
/// ```
class AgentAgentCollaborator extends pulumi.CustomResource {
  late final pulumi.Output<AgentAgentCollaboratorAgentDescriptor> agentDescriptor;
  /// ID if the agent to associate the collaborator.
  late final pulumi.Output<String> agentId;
  late final pulumi.Output<String> agentVersion;
  /// Instruction to give the collaborator.
  late final pulumi.Output<String> collaborationInstruction;
  /// ID of the Agent Collaborator.
  late final pulumi.Output<String> collaboratorId;
  /// Name of this collaborator.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> collaboratorName;
  /// Whether to prepare the agent after creation or modification. Defaults to `true`.
  late final pulumi.Output<bool> prepareAgent;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configure relaying the history to the collaborator.
  late final pulumi.Output<String> relayConversationHistory;
  late final pulumi.Output<AgentAgentCollaboratorTimeouts?> timeouts;

  /// Creates a new [AgentAgentCollaborator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentAgentCollaborator]. {@macro pulumi_bedrock_agent_agent_collaborator_agent_agent_collaborator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentAgentCollaborator(
    String name, {
    AgentAgentCollaboratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentAgentCollaborator:AgentAgentCollaborator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentDescriptor = registerOutput<AgentAgentCollaboratorAgentDescriptor>('agentDescriptor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentAgentCollaboratorAgentDescriptor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    agentId = registerOutput<String>('agentId');
    agentVersion = registerOutput<String>('agentVersion');
    collaborationInstruction = registerOutput<String>('collaborationInstruction');
    collaboratorId = registerOutput<String>('collaboratorId');
    collaboratorName = registerOutput<String>('collaboratorName');
    prepareAgent = registerOutput<bool>('prepareAgent');
    region = registerOutput<String>('region');
    relayConversationHistory = registerOutput<String>('relayConversationHistory');
    timeouts = registerOutput<AgentAgentCollaboratorTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentAgentCollaboratorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AgentAgentCollaborator] resource's state with the given [name] and [id].
  static AgentAgentCollaborator get(
    String name,
    pulumi.Input<String> id, {
    AgentAgentCollaboratorState? state,
  }) {
    return AgentAgentCollaborator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AgentAgentCollaborator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentAgentCollaborator:AgentAgentCollaborator',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentDescriptor = registerOutput<AgentAgentCollaboratorAgentDescriptor>('agentDescriptor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentAgentCollaboratorAgentDescriptor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    agentId = registerOutput<String>('agentId');
    agentVersion = registerOutput<String>('agentVersion');
    collaborationInstruction = registerOutput<String>('collaborationInstruction');
    collaboratorId = registerOutput<String>('collaboratorId');
    collaboratorName = registerOutput<String>('collaboratorName');
    prepareAgent = registerOutput<bool>('prepareAgent');
    region = registerOutput<String>('region');
    relayConversationHistory = registerOutput<String>('relayConversationHistory');
    timeouts = registerOutput<AgentAgentCollaboratorTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentAgentCollaboratorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
