import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_agent_runtime_agent_runtime_artifact.dart';
import 'agentcore_agent_runtime_args.dart';
import 'agentcore_agent_runtime_authorizer_configuration.dart';
import 'agentcore_agent_runtime_lifecycle_configuration.dart';
import 'agentcore_agent_runtime_network_configuration.dart';
import 'agentcore_agent_runtime_protocol_configuration.dart';
import 'agentcore_agent_runtime_request_header_configuration.dart';
import 'agentcore_agent_runtime_state.dart';
import 'agentcore_agent_runtime_timeouts.dart';
import 'agentcore_agent_runtime_workload_identity_detail.dart';

/// Manages an AWS Bedrock AgentCore Agent Runtime. Agent Runtime provides a containerized execution environment for AI agents.
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
/// const ecrPermissions = aws.iam.getPolicyDocument({
///     statements: [
///         {
///             actions: ["ecr:GetAuthorizationToken"],
///             effect: "Allow",
///             resources: ["*"],
///         },
///         {
///             actions: [
///                 "ecr:BatchGetImage",
///                 "ecr:GetDownloadUrlForLayer",
///             ],
///             effect: "Allow",
///             resources: [exampleAwsEcrRepository.arn],
///         },
///     ],
/// });
/// const example = new aws.iam.Role("example", {
///     name: "bedrock-agentcore-runtime-role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const exampleRolePolicy = new aws.iam.RolePolicy("example", {
///     role: example.id,
///     policy: ecrPermissions.then(ecrPermissions => ecrPermissions.json),
/// });
/// const exampleAgentcoreAgentRuntime = new aws.bedrock.AgentcoreAgentRuntime("example", {
///     agentRuntimeName: "example_agent_runtime",
///     roleArn: example.arn,
///     agentRuntimeArtifact: {
///         containerConfiguration: {
///             containerUri: `${exampleAwsEcrRepository.repositoryUrl}:latest`,
///         },
///     },
///     networkConfiguration: {
///         networkMode: "PUBLIC",
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
/// ecr_permissions = aws.iam.get_policy_document(statements=[
///     {
///         "actions": ["ecr:GetAuthorizationToken"],
///         "effect": "Allow",
///         "resources": ["*"],
///     },
///     {
///         "actions": [
///             "ecr:BatchGetImage",
///             "ecr:GetDownloadUrlForLayer",
///         ],
///         "effect": "Allow",
///         "resources": [example_aws_ecr_repository["arn"]],
///     },
/// ])
/// example = aws.iam.Role("example",
///     name="bedrock-agentcore-runtime-role",
///     assume_role_policy=assume_role.json)
/// example_role_policy = aws.iam.RolePolicy("example",
///     role=example.id,
///     policy=ecr_permissions.json)
/// example_agentcore_agent_runtime = aws.bedrock.AgentcoreAgentRuntime("example",
///     agent_runtime_name="example_agent_runtime",
///     role_arn=example.arn,
///     agent_runtime_artifact={
///         "container_configuration": {
///             "container_uri": f"{example_aws_ecr_repository['repositoryUrl']}:latest",
///         },
///     },
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
///     var ecrPermissions = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "ecr:GetAuthorizationToken",
///                 },
///                 Effect = "Allow",
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "ecr:BatchGetImage",
///                     "ecr:GetDownloadUrlForLayer",
///                 },
///                 Effect = "Allow",
///                 Resources = new[]
///                 {
///                     exampleAwsEcrRepository.Arn,
///                 },
///             },
///         },
///     });
///
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "bedrock-agentcore-runtime-role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleRolePolicy = new Aws.Iam.RolePolicy("example", new()
///     {
///         Role = example.Id,
///         Policy = ecrPermissions.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleAgentcoreAgentRuntime = new Aws.Bedrock.AgentcoreAgentRuntime("example", new()
///     {
///         AgentRuntimeName = "example_agent_runtime",
///         RoleArn = example.Arn,
///         AgentRuntimeArtifact = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactArgs
///         {
///             ContainerConfiguration = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfigurationArgs
///             {
///                 ContainerUri = $"{exampleAwsEcrRepository.RepositoryUrl}:latest",
///             },
///         },
///         NetworkConfiguration = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeNetworkConfigurationArgs
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "bedrock-agentcore.amazonaws.com",
/// },
/// },
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ecrPermissions, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "ecr:GetAuthorizationToken",
/// },
/// Effect: pulumi.StringRef("Allow"),
/// Resources: []string{
/// "*",
/// },
/// },
/// {
/// Actions: []string{
/// "ecr:BatchGetImage",
/// "ecr:GetDownloadUrlForLayer",
/// },
/// Effect: pulumi.StringRef("Allow"),
/// Resources: interface{}{
/// exampleAwsEcrRepository.Arn,
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// Name: pulumi.String("bedrock-agentcore-runtime-role"),
/// AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicy(ctx, "example", &iam.RolePolicyArgs{
/// Role: example.ID(),
/// Policy: pulumi.String(ecrPermissions.Json),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bedrock.NewAgentcoreAgentRuntime(ctx, "example", &bedrock.AgentcoreAgentRuntimeArgs{
/// AgentRuntimeName: pulumi.String("example_agent_runtime"),
/// RoleArn: example.Arn,
/// AgentRuntimeArtifact: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactArgs{
/// ContainerConfiguration: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfigurationArgs{
/// ContainerUri: pulumi.Sprintf("%v:latest", exampleAwsEcrRepository.RepositoryUrl),
/// },
/// },
/// NetworkConfiguration: &bedrock.AgentcoreAgentRuntimeNetworkConfigurationArgs{
/// NetworkMode: pulumi.String("PUBLIC"),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.bedrock.AgentcoreAgentRuntime;
/// import com.pulumi.aws.bedrock.AgentcoreAgentRuntimeArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeNetworkConfigurationArgs;
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
///         final var ecrPermissions = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .actions("ecr:GetAuthorizationToken")
///                     .effect("Allow")
///                     .resources("*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .actions(
///                         "ecr:BatchGetImage",
///                         "ecr:GetDownloadUrlForLayer")
///                     .effect("Allow")
///                     .resources(exampleAwsEcrRepository.arn())
///                     .build())
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .name("bedrock-agentcore-runtime-role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var exampleRolePolicy = new RolePolicy("exampleRolePolicy", RolePolicyArgs.builder()
///             .role(example.id())
///             .policy(ecrPermissions.json())
///             .build());
///
///         var exampleAgentcoreAgentRuntime = new AgentcoreAgentRuntime("exampleAgentcoreAgentRuntime", AgentcoreAgentRuntimeArgs.builder()
///             .agentRuntimeName("example_agent_runtime")
///             .roleArn(example.arn())
///             .agentRuntimeArtifact(AgentcoreAgentRuntimeAgentRuntimeArtifactArgs.builder()
///                 .containerConfiguration(AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfigurationArgs.builder()
///                     .containerUri(String.format("%s:latest", exampleAwsEcrRepository.repositoryUrl()))
///                     .build())
///                 .build())
///             .networkConfiguration(AgentcoreAgentRuntimeNetworkConfigurationArgs.builder()
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
///     type: aws:iam:Role
///     properties:
///       name: bedrock-agentcore-runtime-role
///       assumeRolePolicy: ${assumeRole.json}
///   exampleRolePolicy:
///     type: aws:iam:RolePolicy
///     name: example
///     properties:
///       role: ${example.id}
///       policy: ${ecrPermissions.json}
///   exampleAgentcoreAgentRuntime:
///     type: aws:bedrock:AgentcoreAgentRuntime
///     name: example
///     properties:
///       agentRuntimeName: example_agent_runtime
///       roleArn: ${example.arn}
///       agentRuntimeArtifact:
///         containerConfiguration:
///           containerUri: ${exampleAwsEcrRepository.repositoryUrl}:latest
///       networkConfiguration:
///         networkMode: PUBLIC
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
///   ecrPermissions:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - ecr:GetAuthorizationToken
///             effect: Allow
///             resources:
///               - '*'
///           - actions:
///               - ecr:BatchGetImage
///               - ecr:GetDownloadUrlForLayer
///             effect: Allow
///             resources:
///               - ${exampleAwsEcrRepository.arn}
/// ```
///
///
/// ### MCP Server With Custom JWT Authorizer
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreAgentRuntime("example", {
///     agentRuntimeName: "example_agent_runtime",
///     description: "Agent runtime with JWT authorization",
///     roleArn: exampleAwsIamRole.arn,
///     agentRuntimeArtifact: {
///         containerConfiguration: {
///             containerUri: `${exampleAwsEcrRepository.repositoryUrl}:v1.0`,
///         },
///     },
///     environmentVariables: {
///         LOG_LEVEL: "INFO",
///         ENV: "production",
///     },
///     authorizerConfiguration: {
///         customJwtAuthorizer: {
///             discoveryUrl: "https://accounts.google.com/.well-known/openid-configuration",
///             allowedAudiences: [
///                 "my-app",
///                 "mobile-app",
///             ],
///             allowedClients: [
///                 "client-123",
///                 "client-456",
///             ],
///         },
///     },
///     networkConfiguration: {
///         networkMode: "PUBLIC",
///     },
///     protocolConfiguration: {
///         serverProtocol: "MCP",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreAgentRuntime("example",
///     agent_runtime_name="example_agent_runtime",
///     description="Agent runtime with JWT authorization",
///     role_arn=example_aws_iam_role["arn"],
///     agent_runtime_artifact={
///         "container_configuration": {
///             "container_uri": f"{example_aws_ecr_repository['repositoryUrl']}:v1.0",
///         },
///     },
///     environment_variables={
///         "LOG_LEVEL": "INFO",
///         "ENV": "production",
///     },
///     authorizer_configuration={
///         "custom_jwt_authorizer": {
///             "discovery_url": "https://accounts.google.com/.well-known/openid-configuration",
///             "allowed_audiences": [
///                 "my-app",
///                 "mobile-app",
///             ],
///             "allowed_clients": [
///                 "client-123",
///                 "client-456",
///             ],
///         },
///     },
///     network_configuration={
///         "network_mode": "PUBLIC",
///     },
///     protocol_configuration={
///         "server_protocol": "MCP",
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
///     var example = new Aws.Bedrock.AgentcoreAgentRuntime("example", new()
///     {
///         AgentRuntimeName = "example_agent_runtime",
///         Description = "Agent runtime with JWT authorization",
///         RoleArn = exampleAwsIamRole.Arn,
///         AgentRuntimeArtifact = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactArgs
///         {
///             ContainerConfiguration = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfigurationArgs
///             {
///                 ContainerUri = $"{exampleAwsEcrRepository.RepositoryUrl}:v1.0",
///             },
///         },
///         EnvironmentVariables =
///         {
///             { "LOG_LEVEL", "INFO" },
///             { "ENV", "production" },
///         },
///         AuthorizerConfiguration = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeAuthorizerConfigurationArgs
///         {
///             CustomJwtAuthorizer = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerArgs
///             {
///                 DiscoveryUrl = "https://accounts.google.com/.well-known/openid-configuration",
///                 AllowedAudiences = new[]
///                 {
///                     "my-app",
///                     "mobile-app",
///                 },
///                 AllowedClients = new[]
///                 {
///                     "client-123",
///                     "client-456",
///                 },
///             },
///         },
///         NetworkConfiguration = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeNetworkConfigurationArgs
///         {
///             NetworkMode = "PUBLIC",
///         },
///         ProtocolConfiguration = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeProtocolConfigurationArgs
///         {
///             ServerProtocol = "MCP",
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
/// 		_, err := bedrock.NewAgentcoreAgentRuntime(ctx, "example", &bedrock.AgentcoreAgentRuntimeArgs{
/// 			AgentRuntimeName: pulumi.String("example_agent_runtime"),
/// 			Description:      pulumi.String("Agent runtime with JWT authorization"),
/// 			RoleArn:          pulumi.Any(exampleAwsIamRole.Arn),
/// 			AgentRuntimeArtifact: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactArgs{
/// 				ContainerConfiguration: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfigurationArgs{
/// 					ContainerUri: pulumi.Sprintf("%v:v1.0", exampleAwsEcrRepository.RepositoryUrl),
/// 				},
/// 			},
/// 			EnvironmentVariables: pulumi.StringMap{
/// 				"LOG_LEVEL": pulumi.String("INFO"),
/// 				"ENV":       pulumi.String("production"),
/// 			},
/// 			AuthorizerConfiguration: &bedrock.AgentcoreAgentRuntimeAuthorizerConfigurationArgs{
/// 				CustomJwtAuthorizer: &bedrock.AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerArgs{
/// 					DiscoveryUrl: pulumi.String("https://accounts.google.com/.well-known/openid-configuration"),
/// 					AllowedAudiences: pulumi.StringArray{
/// 						pulumi.String("my-app"),
/// 						pulumi.String("mobile-app"),
/// 					},
/// 					AllowedClients: pulumi.StringArray{
/// 						pulumi.String("client-123"),
/// 						pulumi.String("client-456"),
/// 					},
/// 				},
/// 			},
/// 			NetworkConfiguration: &bedrock.AgentcoreAgentRuntimeNetworkConfigurationArgs{
/// 				NetworkMode: pulumi.String("PUBLIC"),
/// 			},
/// 			ProtocolConfiguration: &bedrock.AgentcoreAgentRuntimeProtocolConfigurationArgs{
/// 				ServerProtocol: pulumi.String("MCP"),
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
/// import com.pulumi.aws.bedrock.AgentcoreAgentRuntime;
/// import com.pulumi.aws.bedrock.AgentcoreAgentRuntimeArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeAuthorizerConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeNetworkConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeProtocolConfigurationArgs;
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
///         var example = new AgentcoreAgentRuntime("example", AgentcoreAgentRuntimeArgs.builder()
///             .agentRuntimeName("example_agent_runtime")
///             .description("Agent runtime with JWT authorization")
///             .roleArn(exampleAwsIamRole.arn())
///             .agentRuntimeArtifact(AgentcoreAgentRuntimeAgentRuntimeArtifactArgs.builder()
///                 .containerConfiguration(AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfigurationArgs.builder()
///                     .containerUri(String.format("%s:v1.0", exampleAwsEcrRepository.repositoryUrl()))
///                     .build())
///                 .build())
///             .environmentVariables(Map.ofEntries(
///                 Map.entry("LOG_LEVEL", "INFO"),
///                 Map.entry("ENV", "production")
///             ))
///             .authorizerConfiguration(AgentcoreAgentRuntimeAuthorizerConfigurationArgs.builder()
///                 .customJwtAuthorizer(AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerArgs.builder()
///                     .discoveryUrl("https://accounts.google.com/.well-known/openid-configuration")
///                     .allowedAudiences(
///                         "my-app",
///                         "mobile-app")
///                     .allowedClients(
///                         "client-123",
///                         "client-456")
///                     .build())
///                 .build())
///             .networkConfiguration(AgentcoreAgentRuntimeNetworkConfigurationArgs.builder()
///                 .networkMode("PUBLIC")
///                 .build())
///             .protocolConfiguration(AgentcoreAgentRuntimeProtocolConfigurationArgs.builder()
///                 .serverProtocol("MCP")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreAgentRuntime
///     properties:
///       agentRuntimeName: example_agent_runtime
///       description: Agent runtime with JWT authorization
///       roleArn: ${exampleAwsIamRole.arn}
///       agentRuntimeArtifact:
///         containerConfiguration:
///           containerUri: ${exampleAwsEcrRepository.repositoryUrl}:v1.0
///       environmentVariables:
///         LOG_LEVEL: INFO
///         ENV: production
///       authorizerConfiguration:
///         customJwtAuthorizer:
///           discoveryUrl: https://accounts.google.com/.well-known/openid-configuration
///           allowedAudiences:
///             - my-app
///             - mobile-app
///           allowedClients:
///             - client-123
///             - client-456
///       networkConfiguration:
///         networkMode: PUBLIC
///       protocolConfiguration:
///         serverProtocol: MCP
/// ```
///
///
/// ### Agent runtime artifact from S3 with Code Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreAgentRuntime("example", {
///     agentRuntimeName: "example_agent_runtime",
///     roleArn: exampleAwsIamRole.arn,
///     agentRuntimeArtifact: {
///         codeConfiguration: {
///             entryPoints: ["main.py"],
///             runtime: "PYTHON_3_13",
///             code: {
///                 s3: {
///                     bucket: "example-bucket",
///                     prefix: "example-agent-runtime-code.zip",
///                 },
///             },
///         },
///     },
///     networkConfiguration: {
///         networkMode: "PUBLIC",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreAgentRuntime("example",
///     agent_runtime_name="example_agent_runtime",
///     role_arn=example_aws_iam_role["arn"],
///     agent_runtime_artifact={
///         "code_configuration": {
///             "entry_points": ["main.py"],
///             "runtime": "PYTHON_3_13",
///             "code": {
///                 "s3": {
///                     "bucket": "example-bucket",
///                     "prefix": "example-agent-runtime-code.zip",
///                 },
///             },
///         },
///     },
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
///     var example = new Aws.Bedrock.AgentcoreAgentRuntime("example", new()
///     {
///         AgentRuntimeName = "example_agent_runtime",
///         RoleArn = exampleAwsIamRole.Arn,
///         AgentRuntimeArtifact = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactArgs
///         {
///             CodeConfiguration = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationArgs
///             {
///                 EntryPoints = new[]
///                 {
///                     "main.py",
///                 },
///                 Runtime = "PYTHON_3_13",
///                 Code = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeArgs
///                 {
///                     S3 = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3Args
///                     {
///                         Bucket = "example-bucket",
///                         Prefix = "example-agent-runtime-code.zip",
///                     },
///                 },
///             },
///         },
///         NetworkConfiguration = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeNetworkConfigurationArgs
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
/// 		_, err := bedrock.NewAgentcoreAgentRuntime(ctx, "example", &bedrock.AgentcoreAgentRuntimeArgs{
/// 			AgentRuntimeName: pulumi.String("example_agent_runtime"),
/// 			RoleArn:          pulumi.Any(exampleAwsIamRole.Arn),
/// 			AgentRuntimeArtifact: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactArgs{
/// 				CodeConfiguration: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationArgs{
/// 					EntryPoints: pulumi.StringArray{
/// 						pulumi.String("main.py"),
/// 					},
/// 					Runtime: pulumi.String("PYTHON_3_13"),
/// 					Code: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeArgs{
/// 						S3: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3Args{
/// 							Bucket: pulumi.String("example-bucket"),
/// 							Prefix: pulumi.String("example-agent-runtime-code.zip"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			NetworkConfiguration: &bedrock.AgentcoreAgentRuntimeNetworkConfigurationArgs{
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
/// import com.pulumi.aws.bedrock.AgentcoreAgentRuntime;
/// import com.pulumi.aws.bedrock.AgentcoreAgentRuntimeArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3Args;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeNetworkConfigurationArgs;
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
///         var example = new AgentcoreAgentRuntime("example", AgentcoreAgentRuntimeArgs.builder()
///             .agentRuntimeName("example_agent_runtime")
///             .roleArn(exampleAwsIamRole.arn())
///             .agentRuntimeArtifact(AgentcoreAgentRuntimeAgentRuntimeArtifactArgs.builder()
///                 .codeConfiguration(AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationArgs.builder()
///                     .entryPoints("main.py")
///                     .runtime("PYTHON_3_13")
///                     .code(AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeArgs.builder()
///                         .s3(AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3Args.builder()
///                             .bucket("example-bucket")
///                             .prefix("example-agent-runtime-code.zip")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .networkConfiguration(AgentcoreAgentRuntimeNetworkConfigurationArgs.builder()
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
///     type: aws:bedrock:AgentcoreAgentRuntime
///     properties:
///       agentRuntimeName: example_agent_runtime
///       roleArn: ${exampleAwsIamRole.arn}
///       agentRuntimeArtifact:
///         codeConfiguration:
///           entryPoints:
///             - main.py
///           runtime: PYTHON_3_13
///           code:
///             s3:
///               bucket: example-bucket
///               prefix: example-agent-runtime-code.zip
///       networkConfiguration:
///         networkMode: PUBLIC
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Agent Runtime using `agent_runtime_id`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreAgentRuntime:AgentcoreAgentRuntime example agent-runtime-12345
/// ```
class AgentcoreAgentRuntime extends pulumi.CustomResource {
  /// ARN of the Agent Runtime.
  late final pulumi.Output<String> agentRuntimeArn;
  /// Container artifact configuration. See `agent_runtime_artifact` below.
  late final pulumi.Output<AgentcoreAgentRuntimeAgentRuntimeArtifact> agentRuntimeArtifact;
  /// Unique identifier of the Agent Runtime.
  late final pulumi.Output<String> agentRuntimeId;
  /// Name of the agent runtime.
  late final pulumi.Output<String> agentRuntimeName;
  /// Version of the Agent Runtime.
  late final pulumi.Output<String> agentRuntimeVersion;
  /// Authorization configuration for authenticating incoming requests. See `authorizer_configuration` below.
  late final pulumi.Output<AgentcoreAgentRuntimeAuthorizerConfiguration?> authorizerConfiguration;
  /// Description of the agent runtime.
  late final pulumi.Output<String?> description;
  /// Map of environment variables to pass to the container.
  late final pulumi.Output<Map<String, String>?> environmentVariables;
  /// Runtime session and resource lifecycle configuration for the agent runtime. See `lifecycle_configuration` below.
  late final pulumi.Output<List<AgentcoreAgentRuntimeLifecycleConfiguration>> lifecycleConfigurations;
  /// Network configuration for the agent runtime. See `network_configuration` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<AgentcoreAgentRuntimeNetworkConfiguration> networkConfiguration;
  /// Protocol configuration for the agent runtime. See `protocol_configuration` below.
  late final pulumi.Output<AgentcoreAgentRuntimeProtocolConfiguration?> protocolConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration for HTTP request headers that will be passed through to the runtime. See `request_header_configuration` below.
  late final pulumi.Output<AgentcoreAgentRuntimeRequestHeaderConfiguration?> requestHeaderConfiguration;
  /// ARN of the IAM role that the agent runtime assumes to access AWS services.
  late final pulumi.Output<String> roleArn;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentcoreAgentRuntimeTimeouts?> timeouts;
  /// Workload identity details for the agent runtime. See `workload_identity_details` below.
  late final pulumi.Output<List<AgentcoreAgentRuntimeWorkloadIdentityDetail>> workloadIdentityDetails;

  /// Creates a new [AgentcoreAgentRuntime].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreAgentRuntime]. {@macro pulumi_bedrock_agentcore_agent_runtime_agentcore_agent_runtime_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreAgentRuntime(
    String name, {
    AgentcoreAgentRuntimeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreAgentRuntime:AgentcoreAgentRuntime',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentRuntimeArn = registerOutput<String>('agentRuntimeArn');
    this.agentRuntimeArtifact = registerOutput<AgentcoreAgentRuntimeAgentRuntimeArtifact>('agentRuntimeArtifact');
    this.agentRuntimeId = registerOutput<String>('agentRuntimeId');
    this.agentRuntimeName = registerOutput<String>('agentRuntimeName');
    this.agentRuntimeVersion = registerOutput<String>('agentRuntimeVersion');
    this.authorizerConfiguration = registerOutput<AgentcoreAgentRuntimeAuthorizerConfiguration?>('authorizerConfiguration');
    this.description = registerOutput<String?>('description');
    this.environmentVariables = registerOutput<Map<String, String>?>('environmentVariables');
    this.lifecycleConfigurations = registerOutput<List<AgentcoreAgentRuntimeLifecycleConfiguration>>('lifecycleConfigurations');
    this.networkConfiguration = registerOutput<AgentcoreAgentRuntimeNetworkConfiguration>('networkConfiguration');
    this.protocolConfiguration = registerOutput<AgentcoreAgentRuntimeProtocolConfiguration?>('protocolConfiguration');
    this.region = registerOutput<String>('region');
    this.requestHeaderConfiguration = registerOutput<AgentcoreAgentRuntimeRequestHeaderConfiguration?>('requestHeaderConfiguration');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<AgentcoreAgentRuntimeTimeouts?>('timeouts');
    this.workloadIdentityDetails = registerOutput<List<AgentcoreAgentRuntimeWorkloadIdentityDetail>>('workloadIdentityDetails');
  }

  /// Gets an existing [AgentcoreAgentRuntime] resource's state with the given [name] and [id].
  static AgentcoreAgentRuntime get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreAgentRuntimeState? state,
  }) {
    return AgentcoreAgentRuntime._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AgentcoreAgentRuntime._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreAgentRuntime:AgentcoreAgentRuntime',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentRuntimeArn = registerOutput<String>('agentRuntimeArn');
    this.agentRuntimeArtifact = registerOutput<AgentcoreAgentRuntimeAgentRuntimeArtifact>('agentRuntimeArtifact');
    this.agentRuntimeId = registerOutput<String>('agentRuntimeId');
    this.agentRuntimeName = registerOutput<String>('agentRuntimeName');
    this.agentRuntimeVersion = registerOutput<String>('agentRuntimeVersion');
    this.authorizerConfiguration = registerOutput<AgentcoreAgentRuntimeAuthorizerConfiguration?>('authorizerConfiguration');
    this.description = registerOutput<String?>('description');
    this.environmentVariables = registerOutput<Map<String, String>?>('environmentVariables');
    this.lifecycleConfigurations = registerOutput<List<AgentcoreAgentRuntimeLifecycleConfiguration>>('lifecycleConfigurations');
    this.networkConfiguration = registerOutput<AgentcoreAgentRuntimeNetworkConfiguration>('networkConfiguration');
    this.protocolConfiguration = registerOutput<AgentcoreAgentRuntimeProtocolConfiguration?>('protocolConfiguration');
    this.region = registerOutput<String>('region');
    this.requestHeaderConfiguration = registerOutput<AgentcoreAgentRuntimeRequestHeaderConfiguration?>('requestHeaderConfiguration');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<AgentcoreAgentRuntimeTimeouts?>('timeouts');
    this.workloadIdentityDetails = registerOutput<List<AgentcoreAgentRuntimeWorkloadIdentityDetail>>('workloadIdentityDetails');
  }
}
