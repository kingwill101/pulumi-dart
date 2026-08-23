import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_args.dart';
import 'agentcore_gateway_authorizer_configuration.dart';
import 'agentcore_gateway_policy_engine_configuration.dart';
import 'agentcore_gateway_protocol_configuration.dart';
import 'agentcore_gateway_state.dart';
import 'agentcore_gateway_timeouts.dart';

/// Manages an AWS Bedrock AgentCore Gateway. With Gateway, developers can convert APIs, Lambda functions, and existing services into Model Context Protocol (MCP)-compatible tools.
///
/// ## Example Usage
///
/// ### Gateway with JWT Authorization
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
///     name: "bedrock-agentcore-gateway-role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const exampleAgentcoreGateway = new aws.bedrock.AgentcoreGateway("example", {
///     name: "example-gateway",
///     roleArn: example.arn,
///     authorizerType: "CUSTOM_JWT",
///     authorizerConfiguration: {
///         customJwtAuthorizer: {
///             discoveryUrl: "https://accounts.google.com/.well-known/openid-configuration",
///             allowedAudiences: [
///                 "test1",
///                 "test2",
///             ],
///         },
///     },
///     protocolType: "MCP",
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
///     name="bedrock-agentcore-gateway-role",
///     assume_role_policy=assume_role.json)
/// example_agentcore_gateway = aws.bedrock.AgentcoreGateway("example",
///     name="example-gateway",
///     role_arn=example.arn,
///     authorizer_type="CUSTOM_JWT",
///     authorizer_configuration={
///         "custom_jwt_authorizer": {
///             "discovery_url": "https://accounts.google.com/.well-known/openid-configuration",
///             "allowed_audiences": [
///                 "test1",
///                 "test2",
///             ],
///         },
///     },
///     protocol_type="MCP")
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
///         Name = "bedrock-agentcore-gateway-role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleAgentcoreGateway = new Aws.Bedrock.AgentcoreGateway("example", new()
///     {
///         Name = "example-gateway",
///         RoleArn = example.Arn,
///         AuthorizerType = "CUSTOM_JWT",
///         AuthorizerConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayAuthorizerConfigurationArgs
///         {
///             CustomJwtAuthorizer = new Aws.Bedrock.Inputs.AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerArgs
///             {
///                 DiscoveryUrl = "https://accounts.google.com/.well-known/openid-configuration",
///                 AllowedAudiences = new[]
///                 {
///                     "test1",
///                     "test2",
///                 },
///             },
///         },
///         ProtocolType = "MCP",
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
/// 			Name:             pulumi.String("bedrock-agentcore-gateway-role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentcoreGateway(ctx, "example", &bedrock.AgentcoreGatewayArgs{
/// 			Name:           pulumi.String("example-gateway"),
/// 			RoleArn:        example.Arn,
/// 			AuthorizerType: pulumi.String("CUSTOM_JWT"),
/// 			AuthorizerConfiguration: &bedrock.AgentcoreGatewayAuthorizerConfigurationArgs{
/// 				CustomJwtAuthorizer: &bedrock.AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerArgs{
/// 					DiscoveryUrl: pulumi.String("https://accounts.google.com/.well-known/openid-configuration"),
/// 					AllowedAudiences: pulumi.StringArray{
/// 						pulumi.String("test1"),
/// 						pulumi.String("test2"),
/// 					},
/// 				},
/// 			},
/// 			ProtocolType: pulumi.String("MCP"),
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
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///     principals {
///       type        = "Service"
///       identifiers = ["bedrock-agentcore.amazonaws.com"]
///     }
///   }
/// }
///
/// resource "aws_iam_role" "example" {
///   name               = "bedrock-agentcore-gateway-role"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_bedrock_agentcoregateway" "example" {
///   name            = "example-gateway"
///   role_arn        = aws_iam_role.example.arn
///   authorizer_type = "CUSTOM_JWT"
///   authorizer_configuration = {
///     custom_jwt_authorizer = {
///       discovery_url     = "https://accounts.google.com/.well-known/openid-configuration"
///       allowed_audiences = ["test1", "test2"]
///     }
///   }
///   protocol_type = "MCP"
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
/// import com.pulumi.aws.bedrock.AgentcoreGateway;
/// import com.pulumi.aws.bedrock.AgentcoreGatewayArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayAuthorizerConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerArgs;
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
///             .name("bedrock-agentcore-gateway-role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var exampleAgentcoreGateway = new AgentcoreGateway("exampleAgentcoreGateway", AgentcoreGatewayArgs.builder()
///             .name("example-gateway")
///             .roleArn(example.arn())
///             .authorizerType("CUSTOM_JWT")
///             .authorizerConfiguration(AgentcoreGatewayAuthorizerConfigurationArgs.builder()
///                 .customJwtAuthorizer(AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerArgs.builder()
///                     .discoveryUrl("https://accounts.google.com/.well-known/openid-configuration")
///                     .allowedAudiences(
///                         "test1",
///                         "test2")
///                     .build())
///                 .build())
///             .protocolType("MCP")
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
///       name: bedrock-agentcore-gateway-role
///       assumeRolePolicy: ${assumeRole.json}
///   exampleAgentcoreGateway:
///     type: aws:bedrock:AgentcoreGateway
///     name: example
///     properties:
///       name: example-gateway
///       roleArn: ${example.arn}
///       authorizerType: CUSTOM_JWT
///       authorizerConfiguration:
///         customJwtAuthorizer:
///           discoveryUrl: https://accounts.google.com/.well-known/openid-configuration
///           allowedAudiences:
///             - test1
///             - test2
///       protocolType: MCP
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
/// ### Gateway with advanced JWT Authorization and MCP Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreGateway("example", {
///     name: "mcp-gateway",
///     description: "Gateway for MCP communication",
///     roleArn: exampleAwsIamRole.arn,
///     authorizerType: "CUSTOM_JWT",
///     authorizerConfiguration: {
///         customJwtAuthorizer: {
///             discoveryUrl: "https://auth.example.com/.well-known/openid-configuration",
///             allowedAudiences: [
///                 "app-client",
///                 "web-client",
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
///     protocolType: "MCP",
///     protocolConfiguration: {
///         mcp: {
///             instructions: "Gateway for handling MCP requests",
///             searchType: "HYBRID",
///             supportedVersions: [
///                 "2025-03-26",
///                 "2025-06-18",
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreGateway("example",
///     name="mcp-gateway",
///     description="Gateway for MCP communication",
///     role_arn=example_aws_iam_role["arn"],
///     authorizer_type="CUSTOM_JWT",
///     authorizer_configuration={
///         "custom_jwt_authorizer": {
///             "discovery_url": "https://auth.example.com/.well-known/openid-configuration",
///             "allowed_audiences": [
///                 "app-client",
///                 "web-client",
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
///     protocol_type="MCP",
///     protocol_configuration={
///         "mcp": {
///             "instructions": "Gateway for handling MCP requests",
///             "search_type": "HYBRID",
///             "supported_versions": [
///                 "2025-03-26",
///                 "2025-06-18",
///             ],
///         },
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
///     var example = new Aws.Bedrock.AgentcoreGateway("example", new()
///     {
///         Name = "mcp-gateway",
///         Description = "Gateway for MCP communication",
///         RoleArn = exampleAwsIamRole.Arn,
///         AuthorizerType = "CUSTOM_JWT",
///         AuthorizerConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayAuthorizerConfigurationArgs
///         {
///             CustomJwtAuthorizer = new Aws.Bedrock.Inputs.AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerArgs
///             {
///                 DiscoveryUrl = "https://auth.example.com/.well-known/openid-configuration",
///                 AllowedAudiences = new[]
///                 {
///                     "app-client",
///                     "web-client",
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
///         ProtocolType = "MCP",
///         ProtocolConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayProtocolConfigurationArgs
///         {
///             Mcp = new Aws.Bedrock.Inputs.AgentcoreGatewayProtocolConfigurationMcpArgs
///             {
///                 Instructions = "Gateway for handling MCP requests",
///                 SearchType = "HYBRID",
///                 SupportedVersions = new[]
///                 {
///                     "2025-03-26",
///                     "2025-06-18",
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
/// 		_, err := bedrock.NewAgentcoreGateway(ctx, "example", &bedrock.AgentcoreGatewayArgs{
/// 			Name:           pulumi.String("mcp-gateway"),
/// 			Description:    pulumi.String("Gateway for MCP communication"),
/// 			RoleArn:        pulumi.Any(exampleAwsIamRole.Arn),
/// 			AuthorizerType: pulumi.String("CUSTOM_JWT"),
/// 			AuthorizerConfiguration: &bedrock.AgentcoreGatewayAuthorizerConfigurationArgs{
/// 				CustomJwtAuthorizer: &bedrock.AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerArgs{
/// 					DiscoveryUrl: pulumi.String("https://auth.example.com/.well-known/openid-configuration"),
/// 					AllowedAudiences: pulumi.StringArray{
/// 						pulumi.String("app-client"),
/// 						pulumi.String("web-client"),
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
/// 			ProtocolType: pulumi.String("MCP"),
/// 			ProtocolConfiguration: &bedrock.AgentcoreGatewayProtocolConfigurationArgs{
/// 				Mcp: &bedrock.AgentcoreGatewayProtocolConfigurationMcpArgs{
/// 					Instructions: pulumi.String("Gateway for handling MCP requests"),
/// 					SearchType:   pulumi.String("HYBRID"),
/// 					SupportedVersions: pulumi.StringArray{
/// 						pulumi.String("2025-03-26"),
/// 						pulumi.String("2025-06-18"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_bedrock_agentcoregateway" "example" {
///   name            = "mcp-gateway"
///   description     = "Gateway for MCP communication"
///   role_arn        = exampleAwsIamRole.arn
///   authorizer_type = "CUSTOM_JWT"
///   authorizer_configuration = {
///     custom_jwt_authorizer = {
///       discovery_url     = "https://auth.example.com/.well-known/openid-configuration"
///       allowed_audiences = ["app-client", "web-client"]
///       allowed_clients   = ["client-123", "client-456"]
///       allowed_scopes    = ["openid", "email"]
///     }
///   }
///   protocol_type = "MCP"
///   protocol_configuration = {
///     mcp = {
///       instructions       = "Gateway for handling MCP requests"
///       search_type        = "HYBRID"
///       supported_versions = ["2025-03-26", "2025-06-18"]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreGateway;
/// import com.pulumi.aws.bedrock.AgentcoreGatewayArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayAuthorizerConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayProtocolConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayProtocolConfigurationMcpArgs;
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
///         var example = new AgentcoreGateway("example", AgentcoreGatewayArgs.builder()
///             .name("mcp-gateway")
///             .description("Gateway for MCP communication")
///             .roleArn(exampleAwsIamRole.arn())
///             .authorizerType("CUSTOM_JWT")
///             .authorizerConfiguration(AgentcoreGatewayAuthorizerConfigurationArgs.builder()
///                 .customJwtAuthorizer(AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerArgs.builder()
///                     .discoveryUrl("https://auth.example.com/.well-known/openid-configuration")
///                     .allowedAudiences(
///                         "app-client",
///                         "web-client")
///                     .allowedClients(
///                         "client-123",
///                         "client-456")
///                     .allowedScopes(
///                         "openid",
///                         "email")
///                     .build())
///                 .build())
///             .protocolType("MCP")
///             .protocolConfiguration(AgentcoreGatewayProtocolConfigurationArgs.builder()
///                 .mcp(AgentcoreGatewayProtocolConfigurationMcpArgs.builder()
///                     .instructions("Gateway for handling MCP requests")
///                     .searchType("HYBRID")
///                     .supportedVersions(
///                         "2025-03-26",
///                         "2025-06-18")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreGateway
///     properties:
///       name: mcp-gateway
///       description: Gateway for MCP communication
///       roleArn: ${exampleAwsIamRole.arn}
///       authorizerType: CUSTOM_JWT
///       authorizerConfiguration:
///         customJwtAuthorizer:
///           discoveryUrl: https://auth.example.com/.well-known/openid-configuration
///           allowedAudiences:
///             - app-client
///             - web-client
///           allowedClients:
///             - client-123
///             - client-456
///           allowedScopes:
///             - openid
///             - email
///       protocolType: MCP
///       protocolConfiguration:
///         mcp:
///           instructions: Gateway for handling MCP requests
///           searchType: HYBRID
///           supportedVersions:
///             - 2025-03-26
///             - 2025-06-18
/// ```
///
///
/// ### Gateway with Interceptor Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const interceptor = new aws.lambda.Function("interceptor", {
///     code: new pulumi.asset.FileArchive("interceptor.zip"),
///     name: "gateway-interceptor",
///     role: lambda.arn,
///     handler: "index.handler",
///     runtime: aws.lambda.Runtime.Python3d12,
/// });
/// const example = new aws.bedrock.AgentcoreGateway("example", {
///     name: "gateway-with-interceptor",
///     roleArn: exampleAwsIamRole.arn,
///     authorizerType: "AWS_IAM",
///     protocolType: "MCP",
///     interceptorConfigurations: [{
///         interceptionPoints: [
///             "REQUEST",
///             "RESPONSE",
///         ],
///         interceptor: {
///             lambda: {
///                 arn: interceptor.arn,
///             },
///         },
///         inputConfiguration: {
///             passRequestHeaders: true,
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// interceptor = aws.lambda_.Function("interceptor",
///     code=pulumi.FileArchive("interceptor.zip"),
///     name="gateway-interceptor",
///     role=lambda_["arn"],
///     handler="index.handler",
///     runtime=aws.lambda_.Runtime.PYTHON3D12)
/// example = aws.bedrock.AgentcoreGateway("example",
///     name="gateway-with-interceptor",
///     role_arn=example_aws_iam_role["arn"],
///     authorizer_type="AWS_IAM",
///     protocol_type="MCP",
///     interceptor_configurations=[{
///         "interception_points": [
///             "REQUEST",
///             "RESPONSE",
///         ],
///         "interceptor": {
///             "lambda_": {
///                 "arn": interceptor.arn,
///             },
///         },
///         "input_configuration": {
///             "pass_request_headers": True,
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var interceptor = new Aws.Lambda.Function("interceptor", new()
///     {
///         Code = new FileArchive("interceptor.zip"),
///         Name = "gateway-interceptor",
///         Role = lambda.Arn,
///         Handler = "index.handler",
///         Runtime = Aws.Lambda.Runtime.Python3d12,
///     });
///
///     var example = new Aws.Bedrock.AgentcoreGateway("example", new()
///     {
///         Name = "gateway-with-interceptor",
///         RoleArn = exampleAwsIamRole.Arn,
///         AuthorizerType = "AWS_IAM",
///         ProtocolType = "MCP",
///         InterceptorConfigurations = new[]
///         {
///             new Aws.Bedrock.Inputs.AgentcoreGatewayInterceptorConfigurationArgs
///             {
///                 InterceptionPoints = new[]
///                 {
///                     "REQUEST",
///                     "RESPONSE",
///                 },
///                 Interceptor = new Aws.Bedrock.Inputs.AgentcoreGatewayInterceptorConfigurationInterceptorArgs
///                 {
///                     Lambda = new Aws.Bedrock.Inputs.AgentcoreGatewayInterceptorConfigurationInterceptorLambdaArgs
///                     {
///                         Arn = interceptor.Arn,
///                     },
///                 },
///                 InputConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayInterceptorConfigurationInputConfigurationArgs
///                 {
///                     PassRequestHeaders = true,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		interceptor, err := lambda.NewFunction(ctx, "interceptor", &lambda.FunctionArgs{
/// 			Code:    pulumi.NewFileArchive("interceptor.zip"),
/// 			Name:    pulumi.String("gateway-interceptor"),
/// 			Role:    pulumi.Any(lambda.Arn),
/// 			Handler: pulumi.String("index.handler"),
/// 			Runtime: pulumi.String(lambda.RuntimePython3d12),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentcoreGateway(ctx, "example", &bedrock.AgentcoreGatewayArgs{
/// 			Name:           pulumi.String("gateway-with-interceptor"),
/// 			RoleArn:        pulumi.Any(exampleAwsIamRole.Arn),
/// 			AuthorizerType: pulumi.String("AWS_IAM"),
/// 			ProtocolType:   pulumi.String("MCP"),
/// 			InterceptorConfigurations: bedrock.AgentcoreGatewayInterceptorConfigurationArray{
/// 				&bedrock.AgentcoreGatewayInterceptorConfigurationArgs{
/// 					InterceptionPoints: pulumi.StringArray{
/// 						pulumi.String("REQUEST"),
/// 						pulumi.String("RESPONSE"),
/// 					},
/// 					Interceptor: &bedrock.AgentcoreGatewayInterceptorConfigurationInterceptorArgs{
/// 						Lambda: &bedrock.AgentcoreGatewayInterceptorConfigurationInterceptorLambdaArgs{
/// 							Arn: interceptor.Arn,
/// 						},
/// 					},
/// 					InputConfiguration: &bedrock.AgentcoreGatewayInterceptorConfigurationInputConfigurationArgs{
/// 						PassRequestHeaders: pulumi.Bool(true),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_lambda_function" "interceptor" {
///   code    = fileArchive("interceptor.zip")
///   name    = "gateway-interceptor"
///   role    = lambda.arn
///   handler = "index.handler"
///   runtime = "python3.12"
/// }
/// resource "aws_bedrock_agentcoregateway" "example" {
///   name            = "gateway-with-interceptor"
///   role_arn        = exampleAwsIamRole.arn
///   authorizer_type = "AWS_IAM"
///   protocol_type   = "MCP"
///   interceptor_configurations {
///     interception_points = ["REQUEST", "RESPONSE"]
///     interceptor = {
///       lambda = {
///         arn = aws_lambda_function.interceptor.arn
///       }
///     }
///     input_configuration = {
///       pass_request_headers = true
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.bedrock.AgentcoreGateway;
/// import com.pulumi.aws.bedrock.AgentcoreGatewayArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayInterceptorConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayInterceptorConfigurationInterceptorArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayInterceptorConfigurationInterceptorLambdaArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayInterceptorConfigurationInputConfigurationArgs;
/// import com.pulumi.asset.FileArchive;
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
///         var interceptor = new Function("interceptor", FunctionArgs.builder()
///             .code(new FileArchive("interceptor.zip"))
///             .name("gateway-interceptor")
///             .role(lambda.arn())
///             .handler("index.handler")
///             .runtime("python3.12")
///             .build());
///
///         var example = new AgentcoreGateway("example", AgentcoreGatewayArgs.builder()
///             .name("gateway-with-interceptor")
///             .roleArn(exampleAwsIamRole.arn())
///             .authorizerType("AWS_IAM")
///             .protocolType("MCP")
///             .interceptorConfigurations(AgentcoreGatewayInterceptorConfigurationArgs.builder()
///                 .interceptionPoints(
///                     "REQUEST",
///                     "RESPONSE")
///                 .interceptor(AgentcoreGatewayInterceptorConfigurationInterceptorArgs.builder()
///                     .lambda(AgentcoreGatewayInterceptorConfigurationInterceptorLambdaArgs.builder()
///                         .arn(interceptor.arn())
///                         .build())
///                     .build())
///                 .inputConfiguration(AgentcoreGatewayInterceptorConfigurationInputConfigurationArgs.builder()
///                     .passRequestHeaders(true)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   interceptor:
///     type: aws:lambda:Function
///     properties:
///       code:
///         fn::fileArchive: interceptor.zip
///       name: gateway-interceptor
///       role: ${lambda.arn}
///       handler: index.handler
///       runtime: python3.12
///   example:
///     type: aws:bedrock:AgentcoreGateway
///     properties:
///       name: gateway-with-interceptor
///       roleArn: ${exampleAwsIamRole.arn}
///       authorizerType: AWS_IAM
///       protocolType: MCP
///       interceptorConfigurations:
///         - interceptionPoints:
///             - REQUEST
///             - RESPONSE
///           interceptor:
///             lambda:
///               arn: ${interceptor.arn}
///           inputConfiguration:
///             passRequestHeaders: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Gateway using the gateway ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreGateway:AgentcoreGateway example GATEWAY1234567890
/// ```
class AgentcoreGateway extends pulumi.CustomResource {
  /// Configuration for request authorization. Required when `authorizerType` is set to `CUSTOM_JWT`. See `authorizerConfiguration` below.
  late final pulumi.Output<AgentcoreGatewayAuthorizerConfiguration?> authorizerConfiguration;
  /// Type of authorizer to use. Valid values: `CUSTOM_JWT`, `AWS_IAM`. When set to `CUSTOM_JWT`, `authorizerConfiguration` block is required.
  late final pulumi.Output<String> authorizerType;
  /// Description of the gateway.
  late final pulumi.Output<String?> description;
  /// Exception level for the gateway. Valid values: `DEBUG`.
  late final pulumi.Output<String?> exceptionLevel;
  /// ARN of the Gateway.
  late final pulumi.Output<String> gatewayArn;
  /// Unique identifier of the Gateway.
  late final pulumi.Output<String> gatewayId;
  /// URL endpoint for the gateway.
  late final pulumi.Output<String> gatewayUrl;
  /// List of interceptor configurations for the gateway. Minimum of 1, maximum of 2. See `interceptorConfiguration` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> interceptorConfigurations;
  /// ARN of the KMS key used to encrypt the gateway data.
  late final pulumi.Output<String?> kmsKeyArn;
  /// Name of the gateway.
  late final pulumi.Output<String> name;
  /// Configuration for a policy engine associated with the gateway. A policy engine is a collection of policies that evaluates and authorizes agent tool calls. When associated with a gateway, the policy engine intercepts all agent requests and determines whether to allow or deny each action based on the defined policies. See `policyEngineConfiguration` below.
  late final pulumi.Output<AgentcoreGatewayPolicyEngineConfiguration?> policyEngineConfiguration;
  /// Protocol-specific configuration for the gateway. See `protocolConfiguration` below.
  late final pulumi.Output<AgentcoreGatewayProtocolConfiguration?> protocolConfiguration;
  /// Protocol type for the gateway. Valid values: `MCP`. Omit this argument to create a gateway that routes traffic directly to HTTP targets such as AgentCore Runtime agents (see `aws.bedrock.AgentcoreGatewayTarget` `target_configuration.http`).
  late final pulumi.Output<String> protocolType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the IAM role that the gateway assumes to access AWS services.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> roleArn;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentcoreGatewayTimeouts?> timeouts;
  /// Workload identity details for the gateway. See `workloadIdentityDetails` below.
  late final pulumi.Output<List<Map<String, dynamic>>> workloadIdentityDetails;

  /// Creates a new [AgentcoreGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreGateway]. {@macro pulumi_bedrock_agentcore_gateway_agentcore_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreGateway(
    String name, {
    AgentcoreGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreGateway:AgentcoreGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizerConfiguration = registerOutput<AgentcoreGatewayAuthorizerConfiguration?>('authorizerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authorizerType = registerOutput<String>('authorizerType');
    description = registerOutput<String?>('description');
    exceptionLevel = registerOutput<String?>('exceptionLevel');
    gatewayArn = registerOutput<String>('gatewayArn');
    gatewayId = registerOutput<String>('gatewayId');
    gatewayUrl = registerOutput<String>('gatewayUrl');
    interceptorConfigurations = registerOutput<List<Map<String, dynamic>>?>('interceptorConfigurations');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    policyEngineConfiguration = registerOutput<AgentcoreGatewayPolicyEngineConfiguration?>('policyEngineConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayPolicyEngineConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    protocolConfiguration = registerOutput<AgentcoreGatewayProtocolConfiguration?>('protocolConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayProtocolConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    protocolType = registerOutput<String>('protocolType');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<AgentcoreGatewayTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadIdentityDetails = registerOutput<List<Map<String, dynamic>>>('workloadIdentityDetails');
  }

  /// Gets an existing [AgentcoreGateway] resource's state with the given [name] and [id].
  static AgentcoreGateway get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreGatewayState? state,
  }) {
    return AgentcoreGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AgentcoreGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreGateway:AgentcoreGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizerConfiguration = registerOutput<AgentcoreGatewayAuthorizerConfiguration?>('authorizerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authorizerType = registerOutput<String>('authorizerType');
    description = registerOutput<String?>('description');
    exceptionLevel = registerOutput<String?>('exceptionLevel');
    gatewayArn = registerOutput<String>('gatewayArn');
    gatewayId = registerOutput<String>('gatewayId');
    gatewayUrl = registerOutput<String>('gatewayUrl');
    interceptorConfigurations = registerOutput<List<Map<String, dynamic>>?>('interceptorConfigurations');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    policyEngineConfiguration = registerOutput<AgentcoreGatewayPolicyEngineConfiguration?>('policyEngineConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayPolicyEngineConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    protocolConfiguration = registerOutput<AgentcoreGatewayProtocolConfiguration?>('protocolConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayProtocolConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    protocolType = registerOutput<String>('protocolType');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<AgentcoreGatewayTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadIdentityDetails = registerOutput<List<Map<String, dynamic>>>('workloadIdentityDetails');
  }
}
