import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_agent_runtime_agent_runtime_artifact.dart';
import 'agentcore_agent_runtime_args.dart';
import 'agentcore_agent_runtime_authorizer_configuration.dart';
import 'agentcore_agent_runtime_filesystem_configuration.dart';
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
///         principals: [{
///             type: "Service",
///             identifiers: ["bedrock-agentcore.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
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
///     agentRuntimeArtifact: {
///         containerConfiguration: {
///             containerUri: `${exampleAwsEcrRepository.repositoryUrl}:latest`,
///         },
///     },
///     networkConfiguration: {
///         networkMode: "PUBLIC",
///     },
///     agentRuntimeName: "example_agent_runtime",
///     roleArn: example.arn,
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
///     agent_runtime_artifact={
///         "container_configuration": {
///             "container_uri": f"{example_aws_ecr_repository['repositoryUrl']}:latest",
///         },
///     },
///     network_configuration={
///         "network_mode": "PUBLIC",
///     },
///     agent_runtime_name="example_agent_runtime",
///     role_arn=example.arn)
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
///         AgentRuntimeName = "example_agent_runtime",
///         RoleArn = example.Arn,
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
/// 		ecrPermissions, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"ecr:GetAuthorizationToken",
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 				{
/// 					Actions: []string{
/// 						"ecr:BatchGetImage",
/// 						"ecr:GetDownloadUrlForLayer",
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Resources: pulumi.StringArray{
/// 						exampleAwsEcrRepository.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("bedrock-agentcore-runtime-role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicy(ctx, "example", &iam.RolePolicyArgs{
/// 			Role:   example.ID().ToIDOutput().ToStringOutput(),
/// 			Policy: pulumi.String(ecrPermissions.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentcoreAgentRuntime(ctx, "example", &bedrock.AgentcoreAgentRuntimeArgs{
/// 			AgentRuntimeArtifact: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactArgs{
/// 				ContainerConfiguration: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfigurationArgs{
/// 					ContainerUri: pulumi.Sprintf("%v:latest", exampleAwsEcrRepository.RepositoryUrl),
/// 				},
/// 			},
/// 			NetworkConfiguration: &bedrock.AgentcoreAgentRuntimeNetworkConfigurationArgs{
/// 				NetworkMode: pulumi.String("PUBLIC"),
/// 			},
/// 			AgentRuntimeName: pulumi.String("example_agent_runtime"),
/// 			RoleArn:          example.Arn,
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
/// data "aws_iam_getpolicydocument" "ecrPermissions" {
///   statements {
///     actions   = ["ecr:GetAuthorizationToken"]
///     effect    = "Allow"
///     resources = ["*"]
///   }
///   statements {
///     actions   = ["ecr:BatchGetImage", "ecr:GetDownloadUrlForLayer"]
///     effect    = "Allow"
///     resources = [exampleAwsEcrRepository.arn]
///   }
/// }
///
/// resource "aws_iam_role" "example" {
///   name               = "bedrock-agentcore-runtime-role"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_iam_rolepolicy" "example" {
///   role   = aws_iam_role.example.id
///   policy = data.aws_iam_getpolicydocument.ecrPermissions.json
/// }
/// resource "aws_bedrock_agentcoreagentruntime" "example" {
///   agent_runtime_artifact = {
///     container_configuration = {
///       container_uri ="${exampleAwsEcrRepository.repositoryUrl}:latest"
///     }
///   }
///   network_configuration = {
///     network_mode = "PUBLIC"
///   }
///   agent_runtime_name = "example_agent_runtime"
///   role_arn           = aws_iam_role.example.arn
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
/// import com.pulumi.aws.bedrock.AgentcoreAgentRuntime;
/// import com.pulumi.aws.bedrock.AgentcoreAgentRuntimeArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeNetworkConfigurationArgs;
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
///             .agentRuntimeArtifact(AgentcoreAgentRuntimeAgentRuntimeArtifactArgs.builder()
///                 .containerConfiguration(AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfigurationArgs.builder()
///                     .containerUri(String.format("%s:latest", exampleAwsEcrRepository.repositoryUrl()))
///                     .build())
///                 .build())
///             .networkConfiguration(AgentcoreAgentRuntimeNetworkConfigurationArgs.builder()
///                 .networkMode("PUBLIC")
///                 .build())
///             .agentRuntimeName("example_agent_runtime")
///             .roleArn(example.arn())
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
///       agentRuntimeArtifact:
///         containerConfiguration:
///           containerUri: ${exampleAwsEcrRepository.repositoryUrl}:latest
///       networkConfiguration:
///         networkMode: PUBLIC
///       agentRuntimeName: example_agent_runtime
///       roleArn: ${example.arn}
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
///     agentRuntimeArtifact: {
///         containerConfiguration: {
///             containerUri: `${exampleAwsEcrRepository.repositoryUrl}:v1.0`,
///         },
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
///             allowedScopes: [
///                 "openid",
///                 "email",
///             ],
///         },
///     },
///     networkConfiguration: {
///         networkMode: "PUBLIC",
///     },
///     protocolConfiguration: {
///         serverProtocol: "MCP",
///     },
///     agentRuntimeName: "example_agent_runtime",
///     description: "Agent runtime with JWT authorization",
///     roleArn: exampleAwsIamRole.arn,
///     environmentVariables: {
///         LOG_LEVEL: "INFO",
///         ENV: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreAgentRuntime("example",
///     agent_runtime_artifact={
///         "container_configuration": {
///             "container_uri": f"{example_aws_ecr_repository['repositoryUrl']}:v1.0",
///         },
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
///             "allowed_scopes": [
///                 "openid",
///                 "email",
///             ],
///         },
///     },
///     network_configuration={
///         "network_mode": "PUBLIC",
///     },
///     protocol_configuration={
///         "server_protocol": "MCP",
///     },
///     agent_runtime_name="example_agent_runtime",
///     description="Agent runtime with JWT authorization",
///     role_arn=example_aws_iam_role["arn"],
///     environment_variables={
///         "LOG_LEVEL": "INFO",
///         "ENV": "production",
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
///         AgentRuntimeArtifact = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactArgs
///         {
///             ContainerConfiguration = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfigurationArgs
///             {
///                 ContainerUri = $"{exampleAwsEcrRepository.RepositoryUrl}:v1.0",
///             },
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
///                 AllowedScopes = new[]
///                 {
///                     "openid",
///                     "email",
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
///         AgentRuntimeName = "example_agent_runtime",
///         Description = "Agent runtime with JWT authorization",
///         RoleArn = exampleAwsIamRole.Arn,
///         EnvironmentVariables =
///         {
///             { "LOG_LEVEL", "INFO" },
///             { "ENV", "production" },
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
/// 			AgentRuntimeArtifact: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactArgs{
/// 				ContainerConfiguration: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfigurationArgs{
/// 					ContainerUri: pulumi.Sprintf("%v:v1.0", exampleAwsEcrRepository.RepositoryUrl),
/// 				},
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
/// 					AllowedScopes: pulumi.StringArray{
/// 						pulumi.String("openid"),
/// 						pulumi.String("email"),
/// 					},
/// 				},
/// 			},
/// 			NetworkConfiguration: &bedrock.AgentcoreAgentRuntimeNetworkConfigurationArgs{
/// 				NetworkMode: pulumi.String("PUBLIC"),
/// 			},
/// 			ProtocolConfiguration: &bedrock.AgentcoreAgentRuntimeProtocolConfigurationArgs{
/// 				ServerProtocol: pulumi.String("MCP"),
/// 			},
/// 			AgentRuntimeName: pulumi.String("example_agent_runtime"),
/// 			Description:      pulumi.String("Agent runtime with JWT authorization"),
/// 			RoleArn:          pulumi.Any(exampleAwsIamRole.Arn),
/// 			EnvironmentVariables: pulumi.StringMap{
/// 				"LOG_LEVEL": pulumi.String("INFO"),
/// 				"ENV":       pulumi.String("production"),
/// 			},
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
/// resource "aws_bedrock_agentcoreagentruntime" "example" {
///   agent_runtime_artifact = {
///     container_configuration = {
///       container_uri ="${exampleAwsEcrRepository.repositoryUrl}:v1.0"
///     }
///   }
///   authorizer_configuration = {
///     custom_jwt_authorizer = {
///       discovery_url     = "https://accounts.google.com/.well-known/openid-configuration"
///       allowed_audiences = ["my-app", "mobile-app"]
///       allowed_clients   = ["client-123", "client-456"]
///       allowed_scopes    = ["openid", "email"]
///     }
///   }
///   network_configuration = {
///     network_mode = "PUBLIC"
///   }
///   protocol_configuration = {
///     server_protocol = "MCP"
///   }
///   agent_runtime_name = "example_agent_runtime"
///   description        = "Agent runtime with JWT authorization"
///   role_arn           = exampleAwsIamRole.arn
///   environment_variables = {
///     "LOG_LEVEL" = "INFO"
///     "ENV"       = "production"
///   }
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
///         var example = new AgentcoreAgentRuntime("example", AgentcoreAgentRuntimeArgs.builder()
///             .agentRuntimeArtifact(AgentcoreAgentRuntimeAgentRuntimeArtifactArgs.builder()
///                 .containerConfiguration(AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfigurationArgs.builder()
///                     .containerUri(String.format("%s:v1.0", exampleAwsEcrRepository.repositoryUrl()))
///                     .build())
///                 .build())
///             .authorizerConfiguration(AgentcoreAgentRuntimeAuthorizerConfigurationArgs.builder()
///                 .customJwtAuthorizer(AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerArgs.builder()
///                     .discoveryUrl("https://accounts.google.com/.well-known/openid-configuration")
///                     .allowedAudiences(
///                         "my-app",
///                         "mobile-app")
///                     .allowedClients(
///                         "client-123",
///                         "client-456")
///                     .allowedScopes(
///                         "openid",
///                         "email")
///                     .build())
///                 .build())
///             .networkConfiguration(AgentcoreAgentRuntimeNetworkConfigurationArgs.builder()
///                 .networkMode("PUBLIC")
///                 .build())
///             .protocolConfiguration(AgentcoreAgentRuntimeProtocolConfigurationArgs.builder()
///                 .serverProtocol("MCP")
///                 .build())
///             .agentRuntimeName("example_agent_runtime")
///             .description("Agent runtime with JWT authorization")
///             .roleArn(exampleAwsIamRole.arn())
///             .environmentVariables(Map.ofEntries(
///                 Map.entry("LOG_LEVEL", "INFO"),
///                 Map.entry("ENV", "production")
///             ))
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
///       agentRuntimeArtifact:
///         containerConfiguration:
///           containerUri: ${exampleAwsEcrRepository.repositoryUrl}:v1.0
///       authorizerConfiguration:
///         customJwtAuthorizer:
///           discoveryUrl: https://accounts.google.com/.well-known/openid-configuration
///           allowedAudiences:
///             - my-app
///             - mobile-app
///           allowedClients:
///             - client-123
///             - client-456
///           allowedScopes:
///             - openid
///             - email
///       networkConfiguration:
///         networkMode: PUBLIC
///       protocolConfiguration:
///         serverProtocol: MCP
///       agentRuntimeName: example_agent_runtime
///       description: Agent runtime with JWT authorization
///       roleArn: ${exampleAwsIamRole.arn}
///       environmentVariables:
///         LOG_LEVEL: INFO
///         ENV: production
/// ```
///
///
/// ### AG-UI Server
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreAgentRuntime("example", {
///     agentRuntimeArtifact: {
///         containerConfiguration: {
///             containerUri: `${exampleAwsEcrRepository.repositoryUrl}:latest`,
///         },
///     },
///     networkConfiguration: {
///         networkMode: "PUBLIC",
///     },
///     protocolConfiguration: {
///         serverProtocol: "AGUI",
///     },
///     agentRuntimeName: "example_agui_runtime",
///     description: "Agent runtime with AG-UI protocol",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreAgentRuntime("example",
///     agent_runtime_artifact={
///         "container_configuration": {
///             "container_uri": f"{example_aws_ecr_repository['repositoryUrl']}:latest",
///         },
///     },
///     network_configuration={
///         "network_mode": "PUBLIC",
///     },
///     protocol_configuration={
///         "server_protocol": "AGUI",
///     },
///     agent_runtime_name="example_agui_runtime",
///     description="Agent runtime with AG-UI protocol",
///     role_arn=example_aws_iam_role["arn"])
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
///         ProtocolConfiguration = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeProtocolConfigurationArgs
///         {
///             ServerProtocol = "AGUI",
///         },
///         AgentRuntimeName = "example_agui_runtime",
///         Description = "Agent runtime with AG-UI protocol",
///         RoleArn = exampleAwsIamRole.Arn,
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
/// 			AgentRuntimeArtifact: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactArgs{
/// 				ContainerConfiguration: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfigurationArgs{
/// 					ContainerUri: pulumi.Sprintf("%v:latest", exampleAwsEcrRepository.RepositoryUrl),
/// 				},
/// 			},
/// 			NetworkConfiguration: &bedrock.AgentcoreAgentRuntimeNetworkConfigurationArgs{
/// 				NetworkMode: pulumi.String("PUBLIC"),
/// 			},
/// 			ProtocolConfiguration: &bedrock.AgentcoreAgentRuntimeProtocolConfigurationArgs{
/// 				ServerProtocol: pulumi.String("AGUI"),
/// 			},
/// 			AgentRuntimeName: pulumi.String("example_agui_runtime"),
/// 			Description:      pulumi.String("Agent runtime with AG-UI protocol"),
/// 			RoleArn:          pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_bedrock_agentcoreagentruntime" "example" {
///   agent_runtime_artifact = {
///     container_configuration = {
///       container_uri ="${exampleAwsEcrRepository.repositoryUrl}:latest"
///     }
///   }
///   network_configuration = {
///     network_mode = "PUBLIC"
///   }
///   protocol_configuration = {
///     server_protocol = "AGUI"
///   }
///   agent_runtime_name = "example_agui_runtime"
///   description        = "Agent runtime with AG-UI protocol"
///   role_arn           = exampleAwsIamRole.arn
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
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeNetworkConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreAgentRuntimeProtocolConfigurationArgs;
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
///         var example = new AgentcoreAgentRuntime("example", AgentcoreAgentRuntimeArgs.builder()
///             .agentRuntimeArtifact(AgentcoreAgentRuntimeAgentRuntimeArtifactArgs.builder()
///                 .containerConfiguration(AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfigurationArgs.builder()
///                     .containerUri(String.format("%s:latest", exampleAwsEcrRepository.repositoryUrl()))
///                     .build())
///                 .build())
///             .networkConfiguration(AgentcoreAgentRuntimeNetworkConfigurationArgs.builder()
///                 .networkMode("PUBLIC")
///                 .build())
///             .protocolConfiguration(AgentcoreAgentRuntimeProtocolConfigurationArgs.builder()
///                 .serverProtocol("AGUI")
///                 .build())
///             .agentRuntimeName("example_agui_runtime")
///             .description("Agent runtime with AG-UI protocol")
///             .roleArn(exampleAwsIamRole.arn())
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
///       agentRuntimeArtifact:
///         containerConfiguration:
///           containerUri: ${exampleAwsEcrRepository.repositoryUrl}:latest
///       networkConfiguration:
///         networkMode: PUBLIC
///       protocolConfiguration:
///         serverProtocol: AGUI
///       agentRuntimeName: example_agui_runtime
///       description: Agent runtime with AG-UI protocol
///       roleArn: ${exampleAwsIamRole.arn}
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
///     agentRuntimeArtifact: {
///         codeConfiguration: {
///             code: {
///                 s3: {
///                     bucket: "example-bucket",
///                     prefix: "example-agent-runtime-code.zip",
///                 },
///             },
///             entryPoints: ["main.py"],
///             runtime: "PYTHON_3_13",
///         },
///     },
///     networkConfiguration: {
///         networkMode: "PUBLIC",
///     },
///     agentRuntimeName: "example_agent_runtime",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreAgentRuntime("example",
///     agent_runtime_artifact={
///         "code_configuration": {
///             "code": {
///                 "s3": {
///                     "bucket": "example-bucket",
///                     "prefix": "example-agent-runtime-code.zip",
///                 },
///             },
///             "entry_points": ["main.py"],
///             "runtime": "PYTHON_3_13",
///         },
///     },
///     network_configuration={
///         "network_mode": "PUBLIC",
///     },
///     agent_runtime_name="example_agent_runtime",
///     role_arn=example_aws_iam_role["arn"])
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
///         AgentRuntimeArtifact = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactArgs
///         {
///             CodeConfiguration = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationArgs
///             {
///                 Code = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeArgs
///                 {
///                     S3 = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3Args
///                     {
///                         Bucket = "example-bucket",
///                         Prefix = "example-agent-runtime-code.zip",
///                     },
///                 },
///                 EntryPoints = new[]
///                 {
///                     "main.py",
///                 },
///                 Runtime = "PYTHON_3_13",
///             },
///         },
///         NetworkConfiguration = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeNetworkConfigurationArgs
///         {
///             NetworkMode = "PUBLIC",
///         },
///         AgentRuntimeName = "example_agent_runtime",
///         RoleArn = exampleAwsIamRole.Arn,
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
/// 			AgentRuntimeArtifact: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactArgs{
/// 				CodeConfiguration: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationArgs{
/// 					Code: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeArgs{
/// 						S3: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3Args{
/// 							Bucket: pulumi.String("example-bucket"),
/// 							Prefix: pulumi.String("example-agent-runtime-code.zip"),
/// 						},
/// 					},
/// 					EntryPoints: pulumi.StringArray{
/// 						pulumi.String("main.py"),
/// 					},
/// 					Runtime: pulumi.String("PYTHON_3_13"),
/// 				},
/// 			},
/// 			NetworkConfiguration: &bedrock.AgentcoreAgentRuntimeNetworkConfigurationArgs{
/// 				NetworkMode: pulumi.String("PUBLIC"),
/// 			},
/// 			AgentRuntimeName: pulumi.String("example_agent_runtime"),
/// 			RoleArn:          pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_bedrock_agentcoreagentruntime" "example" {
///   agent_runtime_artifact = {
///     code_configuration = {
///       code = {
///         s3 = {
///           bucket = "example-bucket"
///           prefix = "example-agent-runtime-code.zip"
///         }
///       }
///       entry_points = ["main.py"]
///       runtime      = "PYTHON_3_13"
///     }
///   }
///   network_configuration = {
///     network_mode = "PUBLIC"
///   }
///   agent_runtime_name = "example_agent_runtime"
///   role_arn           = exampleAwsIamRole.arn
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
///         var example = new AgentcoreAgentRuntime("example", AgentcoreAgentRuntimeArgs.builder()
///             .agentRuntimeArtifact(AgentcoreAgentRuntimeAgentRuntimeArtifactArgs.builder()
///                 .codeConfiguration(AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationArgs.builder()
///                     .code(AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeArgs.builder()
///                         .s3(AgentcoreAgentRuntimeAgentRuntimeArtifactCodeConfigurationCodeS3Args.builder()
///                             .bucket("example-bucket")
///                             .prefix("example-agent-runtime-code.zip")
///                             .build())
///                         .build())
///                     .entryPoints("main.py")
///                     .runtime("PYTHON_3_13")
///                     .build())
///                 .build())
///             .networkConfiguration(AgentcoreAgentRuntimeNetworkConfigurationArgs.builder()
///                 .networkMode("PUBLIC")
///                 .build())
///             .agentRuntimeName("example_agent_runtime")
///             .roleArn(exampleAwsIamRole.arn())
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
///       agentRuntimeArtifact:
///         codeConfiguration:
///           code:
///             s3:
///               bucket: example-bucket
///               prefix: example-agent-runtime-code.zip
///           entryPoints:
///             - main.py
///           runtime: PYTHON_3_13
///       networkConfiguration:
///         networkMode: PUBLIC
///       agentRuntimeName: example_agent_runtime
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Agent Runtime using `agentRuntimeId`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreAgentRuntime:AgentcoreAgentRuntime example agent-runtime-12345
/// ```
class AgentcoreAgentRuntime extends pulumi.CustomResource {
  /// ARN of the Agent Runtime.
  late final pulumi.Output<String> agentRuntimeArn;
  /// Container artifact configuration. See `agentRuntimeArtifact` below.
  late final pulumi.Output<AgentcoreAgentRuntimeAgentRuntimeArtifact> agentRuntimeArtifact;
  /// Unique identifier of the Agent Runtime.
  late final pulumi.Output<String> agentRuntimeId;
  /// Name of the agent runtime.
  late final pulumi.Output<String> agentRuntimeName;
  /// Version of the Agent Runtime.
  late final pulumi.Output<String> agentRuntimeVersion;
  /// Authorization configuration for authenticating incoming requests. See `authorizerConfiguration` below.
  late final pulumi.Output<AgentcoreAgentRuntimeAuthorizerConfiguration?> authorizerConfiguration;
  /// Description of the agent runtime.
  late final pulumi.Output<String?> description;
  /// Map of environment variables to pass to the container.
  late final pulumi.Output<Map<String, String>?> environmentVariables;
  /// List of filesystems to mount into the agent runtime. Up to 5 entries are supported. Each entry is one of session storage, Amazon S3 Files access point, or Amazon EFS access point. See `filesystemConfiguration` below.
  late final pulumi.Output<List<AgentcoreAgentRuntimeFilesystemConfiguration>?> filesystemConfigurations;
  /// Runtime session and resource lifecycle configuration for the agent runtime. See `lifecycleConfiguration` below.
  late final pulumi.Output<List<AgentcoreAgentRuntimeLifecycleConfiguration>> lifecycleConfigurations;
  /// Network configuration for the agent runtime. See `networkConfiguration` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<AgentcoreAgentRuntimeNetworkConfiguration> networkConfiguration;
  /// Protocol configuration for the agent runtime. See `protocolConfiguration` below.
  late final pulumi.Output<AgentcoreAgentRuntimeProtocolConfiguration?> protocolConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration for HTTP request headers that will be passed through to the runtime. See `requestHeaderConfiguration` below.
  late final pulumi.Output<AgentcoreAgentRuntimeRequestHeaderConfiguration?> requestHeaderConfiguration;
  /// ARN of the IAM role that the agent runtime assumes to access AWS services.
  late final pulumi.Output<String> roleArn;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentcoreAgentRuntimeTimeouts?> timeouts;
  /// Workload identity details for the agent runtime. See `workloadIdentityDetails` below.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    agentRuntimeArn = registerOutput<String>('agentRuntimeArn');
    agentRuntimeArtifact = registerOutput<AgentcoreAgentRuntimeAgentRuntimeArtifact>('agentRuntimeArtifact', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeAgentRuntimeArtifact.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    agentRuntimeId = registerOutput<String>('agentRuntimeId');
    agentRuntimeName = registerOutput<String>('agentRuntimeName');
    agentRuntimeVersion = registerOutput<String>('agentRuntimeVersion');
    authorizerConfiguration = registerOutput<AgentcoreAgentRuntimeAuthorizerConfiguration?>('authorizerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    environmentVariables = registerOutput<Map<String, String>?>('environmentVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    filesystemConfigurations = registerOutput<List<AgentcoreAgentRuntimeFilesystemConfiguration>?>('filesystemConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreAgentRuntimeFilesystemConfiguration>(guardedValue, (value) => AgentcoreAgentRuntimeFilesystemConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    lifecycleConfigurations = registerOutput<List<AgentcoreAgentRuntimeLifecycleConfiguration>>('lifecycleConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreAgentRuntimeLifecycleConfiguration>(guardedValue, (value) => AgentcoreAgentRuntimeLifecycleConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    networkConfiguration = registerOutput<AgentcoreAgentRuntimeNetworkConfiguration>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    protocolConfiguration = registerOutput<AgentcoreAgentRuntimeProtocolConfiguration?>('protocolConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeProtocolConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    requestHeaderConfiguration = registerOutput<AgentcoreAgentRuntimeRequestHeaderConfiguration?>('requestHeaderConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeRequestHeaderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentcoreAgentRuntimeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadIdentityDetails = registerOutput<List<AgentcoreAgentRuntimeWorkloadIdentityDetail>>('workloadIdentityDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreAgentRuntimeWorkloadIdentityDetail>(guardedValue, (value) => AgentcoreAgentRuntimeWorkloadIdentityDetail.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [AgentcoreAgentRuntime] resource's state with the given [name] and [id].
  static AgentcoreAgentRuntime get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreAgentRuntimeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentcoreAgentRuntime._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    agentRuntimeArn = registerOutput<String>('agentRuntimeArn');
    agentRuntimeArtifact = registerOutput<AgentcoreAgentRuntimeAgentRuntimeArtifact>('agentRuntimeArtifact', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeAgentRuntimeArtifact.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    agentRuntimeId = registerOutput<String>('agentRuntimeId');
    agentRuntimeName = registerOutput<String>('agentRuntimeName');
    agentRuntimeVersion = registerOutput<String>('agentRuntimeVersion');
    authorizerConfiguration = registerOutput<AgentcoreAgentRuntimeAuthorizerConfiguration?>('authorizerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    environmentVariables = registerOutput<Map<String, String>?>('environmentVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    filesystemConfigurations = registerOutput<List<AgentcoreAgentRuntimeFilesystemConfiguration>?>('filesystemConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreAgentRuntimeFilesystemConfiguration>(guardedValue, (value) => AgentcoreAgentRuntimeFilesystemConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    lifecycleConfigurations = registerOutput<List<AgentcoreAgentRuntimeLifecycleConfiguration>>('lifecycleConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreAgentRuntimeLifecycleConfiguration>(guardedValue, (value) => AgentcoreAgentRuntimeLifecycleConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    networkConfiguration = registerOutput<AgentcoreAgentRuntimeNetworkConfiguration>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    protocolConfiguration = registerOutput<AgentcoreAgentRuntimeProtocolConfiguration?>('protocolConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeProtocolConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    requestHeaderConfiguration = registerOutput<AgentcoreAgentRuntimeRequestHeaderConfiguration?>('requestHeaderConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeRequestHeaderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentcoreAgentRuntimeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadIdentityDetails = registerOutput<List<AgentcoreAgentRuntimeWorkloadIdentityDetail>>('workloadIdentityDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreAgentRuntimeWorkloadIdentityDetail>(guardedValue, (value) => AgentcoreAgentRuntimeWorkloadIdentityDetail.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [AgentcoreAgentRuntime] resource.
  AgentcoreAgentRuntime.reference(String urn)
    : super(
        'aws:bedrock/agentcoreAgentRuntime:AgentcoreAgentRuntime',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agentRuntimeArn = registerOutput<String>('agentRuntimeArn');
    agentRuntimeArtifact = registerOutput<AgentcoreAgentRuntimeAgentRuntimeArtifact>('agentRuntimeArtifact', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeAgentRuntimeArtifact.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    agentRuntimeId = registerOutput<String>('agentRuntimeId');
    agentRuntimeName = registerOutput<String>('agentRuntimeName');
    agentRuntimeVersion = registerOutput<String>('agentRuntimeVersion');
    authorizerConfiguration = registerOutput<AgentcoreAgentRuntimeAuthorizerConfiguration?>('authorizerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    environmentVariables = registerOutput<Map<String, String>?>('environmentVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    filesystemConfigurations = registerOutput<List<AgentcoreAgentRuntimeFilesystemConfiguration>?>('filesystemConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreAgentRuntimeFilesystemConfiguration>(guardedValue, (value) => AgentcoreAgentRuntimeFilesystemConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    lifecycleConfigurations = registerOutput<List<AgentcoreAgentRuntimeLifecycleConfiguration>>('lifecycleConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreAgentRuntimeLifecycleConfiguration>(guardedValue, (value) => AgentcoreAgentRuntimeLifecycleConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    networkConfiguration = registerOutput<AgentcoreAgentRuntimeNetworkConfiguration>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    protocolConfiguration = registerOutput<AgentcoreAgentRuntimeProtocolConfiguration?>('protocolConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeProtocolConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    requestHeaderConfiguration = registerOutput<AgentcoreAgentRuntimeRequestHeaderConfiguration?>('requestHeaderConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeRequestHeaderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentcoreAgentRuntimeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreAgentRuntimeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadIdentityDetails = registerOutput<List<AgentcoreAgentRuntimeWorkloadIdentityDetail>>('workloadIdentityDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreAgentRuntimeWorkloadIdentityDetail>(guardedValue, (value) => AgentcoreAgentRuntimeWorkloadIdentityDetail.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
