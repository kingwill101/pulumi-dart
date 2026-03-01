import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_args.dart';
import 'agentcore_gateway_target_credential_provider_configuration.dart';
import 'agentcore_gateway_target_target_configuration.dart';
import 'agentcore_gateway_target_timeouts.dart';

/// Manages an AWS Bedrock AgentCore Gateway Target. Gateway targets define the endpoints and configurations that a gateway can invoke, such as Lambda functions or APIs, allowing agents to interact with external services through the Model Context Protocol (MCP).
///
/// ## Example Usage
///
/// ### Lambda Target with Gateway IAM Role
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const gatewayAssume = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///         principals: [{
///             type: "Service",
///             identifiers: ["bedrock-agentcore.amazonaws.com"],
///         }],
///     }],
/// });
/// const gatewayRole = new aws.iam.Role("gateway_role", {
///     name: "bedrock-gateway-role",
///     assumeRolePolicy: gatewayAssume.then(gatewayAssume => gatewayAssume.json),
/// });
/// const lambdaAssume = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///         principals: [{
///             type: "Service",
///             identifiers: ["lambda.amazonaws.com"],
///         }],
///     }],
/// });
/// const lambdaRole = new aws.iam.Role("lambda_role", {
///     name: "example-lambda-role",
///     assumeRolePolicy: lambdaAssume.then(lambdaAssume => lambdaAssume.json),
/// });
/// const example = new aws.lambda.Function("example", {
///     code: new pulumi.asset.FileArchive("example.zip"),
///     name: "example-function",
///     role: lambdaRole.arn,
///     handler: "index.handler",
///     runtime: aws.lambda.Runtime.NodeJS20dX,
/// });
/// const exampleAgentcoreGateway = new aws.bedrock.AgentcoreGateway("example", {
///     name: "example-gateway",
///     roleArn: gatewayRole.arn,
///     authorizerConfiguration: {
///         customJwtAuthorizer: {
///             discoveryUrl: "https://accounts.google.com/.well-known/openid-configuration",
///         },
///     },
/// });
/// const exampleAgentcoreGatewayTarget = new aws.bedrock.AgentcoreGatewayTarget("example", {
///     name: "example-target",
///     gatewayIdentifier: exampleAgentcoreGateway.gatewayId,
///     description: "Lambda function target for processing requests",
///     credentialProviderConfiguration: {
///         gatewayIamRole: {},
///     },
///     targetConfiguration: {
///         mcp: {
///             lambda: {
///                 lambdaArn: example.arn,
///                 toolSchema: {
///                     inlinePayloads: [{
///                         name: "process_request",
///                         description: "Process incoming requests",
///                         inputSchema: {
///                             type: "object",
///                             description: "Request processing schema",
///                             properties: [
///                                 {
///                                     name: "message",
///                                     type: "string",
///                                     description: "Message to process",
///                                     required: true,
///                                 },
///                                 {
///                                     name: "options",
///                                     type: "object",
///                                     properties: [
///                                         {
///                                             name: "priority",
///                                             type: "string",
///                                         },
///                                         {
///                                             name: "tags",
///                                             type: "array",
///                                             items: [{
///                                                 type: "string",
///                                             }],
///                                         },
///                                     ],
///                                 },
///                             ],
///                         },
///                         outputSchema: {
///                             type: "object",
///                             properties: [
///                                 {
///                                     name: "status",
///                                     type: "string",
///                                     required: true,
///                                 },
///                                 {
///                                     name: "result",
///                                     type: "string",
///                                 },
///                             ],
///                         },
///                     }],
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// gateway_assume = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["bedrock-agentcore.amazonaws.com"],
///     }],
/// }])
/// gateway_role = aws.iam.Role("gateway_role",
///     name="bedrock-gateway-role",
///     assume_role_policy=gateway_assume.json)
/// lambda_assume = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["lambda.amazonaws.com"],
///     }],
/// }])
/// lambda_role = aws.iam.Role("lambda_role",
///     name="example-lambda-role",
///     assume_role_policy=lambda_assume.json)
/// example = aws.lambda_.Function("example",
///     code=pulumi.FileArchive("example.zip"),
///     name="example-function",
///     role=lambda_role.arn,
///     handler="index.handler",
///     runtime=aws.lambda_.Runtime.NODE_JS20D_X)
/// example_agentcore_gateway = aws.bedrock.AgentcoreGateway("example",
///     name="example-gateway",
///     role_arn=gateway_role.arn,
///     authorizer_configuration={
///         "custom_jwt_authorizer": {
///             "discovery_url": "https://accounts.google.com/.well-known/openid-configuration",
///         },
///     })
/// example_agentcore_gateway_target = aws.bedrock.AgentcoreGatewayTarget("example",
///     name="example-target",
///     gateway_identifier=example_agentcore_gateway.gateway_id,
///     description="Lambda function target for processing requests",
///     credential_provider_configuration={
///         "gateway_iam_role": {},
///     },
///     target_configuration={
///         "mcp": {
///             "lambda_": {
///                 "lambda_arn": example.arn,
///                 "tool_schema": {
///                     "inline_payloads": [{
///                         "name": "process_request",
///                         "description": "Process incoming requests",
///                         "input_schema": {
///                             "type": "object",
///                             "description": "Request processing schema",
///                             "properties": [
///                                 {
///                                     "name": "message",
///                                     "type": "string",
///                                     "description": "Message to process",
///                                     "required": True,
///                                 },
///                                 {
///                                     "name": "options",
///                                     "type": "object",
///                                     "properties": [
///                                         {
///                                             "name": "priority",
///                                             "type": "string",
///                                         },
///                                         {
///                                             "name": "tags",
///                                             "type": "array",
///                                             "items": [{
///                                                 "type": "string",
///                                             }],
///                                         },
///                                     ],
///                                 },
///                             ],
///                         },
///                         "output_schema": {
///                             "type": "object",
///                             "properties": [
///                                 {
///                                     "name": "status",
///                                     "type": "string",
///                                     "required": True,
///                                 },
///                                 {
///                                     "name": "result",
///                                     "type": "string",
///                                 },
///                             ],
///                         },
///                     }],
///                 },
///             },
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
///     var gatewayAssume = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///     var gatewayRole = new Aws.Iam.Role("gateway_role", new()
///     {
///         Name = "bedrock-gateway-role",
///         AssumeRolePolicy = gatewayAssume.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var lambdaAssume = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///                             "lambda.amazonaws.com",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var lambdaRole = new Aws.Iam.Role("lambda_role", new()
///     {
///         Name = "example-lambda-role",
///         AssumeRolePolicy = lambdaAssume.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var example = new Aws.Lambda.Function("example", new()
///     {
///         Code = new FileArchive("example.zip"),
///         Name = "example-function",
///         Role = lambdaRole.Arn,
///         Handler = "index.handler",
///         Runtime = Aws.Lambda.Runtime.NodeJS20dX,
///     });
///
///     var exampleAgentcoreGateway = new Aws.Bedrock.AgentcoreGateway("example", new()
///     {
///         Name = "example-gateway",
///         RoleArn = gatewayRole.Arn,
///         AuthorizerConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayAuthorizerConfigurationArgs
///         {
///             CustomJwtAuthorizer = new Aws.Bedrock.Inputs.AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerArgs
///             {
///                 DiscoveryUrl = "https://accounts.google.com/.well-known/openid-configuration",
///             },
///         },
///     });
///
///     var exampleAgentcoreGatewayTarget = new Aws.Bedrock.AgentcoreGatewayTarget("example", new()
///     {
///         Name = "example-target",
///         GatewayIdentifier = exampleAgentcoreGateway.GatewayId,
///         Description = "Lambda function target for processing requests",
///         CredentialProviderConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetCredentialProviderConfigurationArgs
///         {
///             GatewayIamRole = null,
///         },
///         TargetConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationArgs
///         {
///             Mcp = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs
///             {
///                 Lambda = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs
///                 {
///                     LambdaArn = example.Arn,
///                     ToolSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs
///                     {
///                         InlinePayloads = new[]
///                         {
///                             new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs
///                             {
///                                 Name = "process_request",
///                                 Description = "Process incoming requests",
///                                 InputSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs
///                                 {
///                                     Type = "object",
///                                     Description = "Request processing schema",
///                                     Properties = new[]
///                                     {
///                                         new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs
///                                         {
///                                             Name = "message",
///                                             Type = "string",
///                                             Description = "Message to process",
///                                             Required = true,
///                                         },
///                                         new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs
///                                         {
///                                             Name = "options",
///                                             Type = "object",
///                                             Properties = new[]
///                                             {
///                                                 new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs
///                                                 {
///                                                     Name = "priority",
///                                                     Type = "string",
///                                                 },
///                                                 new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs
///                                                 {
///                                                     Name = "tags",
///                                                     Type = "array",
///                                                     Items = new[]
///                                                     {
///
///                                                         {
///                                                             { "type", "string" },
///                                                         },
///                                                     },
///                                                 },
///                                             },
///                                         },
///                                     },
///                                 },
///                                 OutputSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaArgs
///                                 {
///                                     Type = "object",
///                                     Properties = new[]
///                                     {
///                                         new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyArgs
///                                         {
///                                             Name = "status",
///                                             Type = "string",
///                                             Required = true,
///                                         },
///                                         new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyArgs
///                                         {
///                                             Name = "result",
///                                             Type = "string",
///                                         },
///                                     },
///                                 },
///                             },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		gatewayAssume, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
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
/// 		gatewayRole, err := iam.NewRole(ctx, "gateway_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("bedrock-gateway-role"),
/// 			AssumeRolePolicy: pulumi.String(gatewayAssume.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		lambdaAssume, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
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
/// 								"lambda.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		lambdaRole, err := iam.NewRole(ctx, "lambda_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("example-lambda-role"),
/// 			AssumeRolePolicy: pulumi.String(lambdaAssume.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// 			Code:    pulumi.NewFileArchive("example.zip"),
/// 			Name:    pulumi.String("example-function"),
/// 			Role:    lambdaRole.Arn,
/// 			Handler: pulumi.String("index.handler"),
/// 			Runtime: pulumi.String(lambda.RuntimeNodeJS20dX),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAgentcoreGateway, err := bedrock.NewAgentcoreGateway(ctx, "example", &bedrock.AgentcoreGatewayArgs{
/// 			Name:    pulumi.String("example-gateway"),
/// 			RoleArn: gatewayRole.Arn,
/// 			AuthorizerConfiguration: &bedrock.AgentcoreGatewayAuthorizerConfigurationArgs{
/// 				CustomJwtAuthorizer: &bedrock.AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerArgs{
/// 					DiscoveryUrl: pulumi.String("https://accounts.google.com/.well-known/openid-configuration"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentcoreGatewayTarget(ctx, "example", &bedrock.AgentcoreGatewayTargetArgs{
/// 			Name:              pulumi.String("example-target"),
/// 			GatewayIdentifier: exampleAgentcoreGateway.GatewayId,
/// 			Description:       pulumi.String("Lambda function target for processing requests"),
/// 			CredentialProviderConfiguration: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationArgs{
/// 				GatewayIamRole: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRoleArgs{},
/// 			},
/// 			TargetConfiguration: &bedrock.AgentcoreGatewayTargetTargetConfigurationArgs{
/// 				Mcp: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpArgs{
/// 					Lambda: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs{
/// 						LambdaArn: example.Arn,
/// 						ToolSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs{
/// 							InlinePayloads: bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArray{
/// 								&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs{
/// 									Name:        pulumi.String("process_request"),
/// 									Description: pulumi.String("Process incoming requests"),
/// 									InputSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs{
/// 										Type:        pulumi.String("object"),
/// 										Description: pulumi.String("Request processing schema"),
/// 										Properties: bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArray{
/// 											&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs{
/// 												Name:        pulumi.String("message"),
/// 												Type:        pulumi.String("string"),
/// 												Description: pulumi.String("Message to process"),
/// 												Required:    pulumi.Bool(true),
/// 											},
/// 											&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs{
/// 												Name: pulumi.String("options"),
/// 												Type: pulumi.String("object"),
/// 												Properties: bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArray{
/// 													&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs{
/// 														Name: pulumi.String("priority"),
/// 														Type: pulumi.String("string"),
/// 													},
/// 													&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs{
/// 														Name: pulumi.String("tags"),
/// 														Type: pulumi.String("array"),
/// 														Items: []map[string]interface{}{
/// 															map[string]interface{}{
/// 																"type": "string",
/// 															},
/// 														},
/// 													},
/// 												},
/// 											},
/// 										},
/// 									},
/// 									OutputSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaArgs{
/// 										Type: pulumi.String("object"),
/// 										Properties: bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyArray{
/// 											&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyArgs{
/// 												Name:     pulumi.String("status"),
/// 												Type:     pulumi.String("string"),
/// 												Required: pulumi.Bool(true),
/// 											},
/// 											&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyArgs{
/// 												Name: pulumi.String("result"),
/// 												Type: pulumi.String("string"),
/// 											},
/// 										},
/// 									},
/// 								},
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.bedrock.AgentcoreGateway;
/// import com.pulumi.aws.bedrock.AgentcoreGatewayArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayAuthorizerConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerArgs;
/// import com.pulumi.aws.bedrock.AgentcoreGatewayTarget;
/// import com.pulumi.aws.bedrock.AgentcoreGatewayTargetArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetCredentialProviderConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRoleArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs;
/// import com.pulumi.asset.FileArchive;
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
///         final var gatewayAssume = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
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
///         var gatewayRole = new Role("gatewayRole", RoleArgs.builder()
///             .name("bedrock-gateway-role")
///             .assumeRolePolicy(gatewayAssume.json())
///             .build());
///
///         final var lambdaAssume = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("lambda.amazonaws.com")
///                     .build())
///                 .build())
///             .build());
///
///         var lambdaRole = new Role("lambdaRole", RoleArgs.builder()
///             .name("example-lambda-role")
///             .assumeRolePolicy(lambdaAssume.json())
///             .build());
///
///         var example = new Function("example", FunctionArgs.builder()
///             .code(new FileArchive("example.zip"))
///             .name("example-function")
///             .role(lambdaRole.arn())
///             .handler("index.handler")
///             .runtime("nodejs20.x")
///             .build());
///
///         var exampleAgentcoreGateway = new AgentcoreGateway("exampleAgentcoreGateway", AgentcoreGatewayArgs.builder()
///             .name("example-gateway")
///             .roleArn(gatewayRole.arn())
///             .authorizerConfiguration(AgentcoreGatewayAuthorizerConfigurationArgs.builder()
///                 .customJwtAuthorizer(AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerArgs.builder()
///                     .discoveryUrl("https://accounts.google.com/.well-known/openid-configuration")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleAgentcoreGatewayTarget = new AgentcoreGatewayTarget("exampleAgentcoreGatewayTarget", AgentcoreGatewayTargetArgs.builder()
///             .name("example-target")
///             .gatewayIdentifier(exampleAgentcoreGateway.gatewayId())
///             .description("Lambda function target for processing requests")
///             .credentialProviderConfiguration(AgentcoreGatewayTargetCredentialProviderConfigurationArgs.builder()
///                 .gatewayIamRole(AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRoleArgs.builder()
///                     .build())
///                 .build())
///             .targetConfiguration(AgentcoreGatewayTargetTargetConfigurationArgs.builder()
///                 .mcp(AgentcoreGatewayTargetTargetConfigurationMcpArgs.builder()
///                     .lambda(AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs.builder()
///                         .lambdaArn(example.arn())
///                         .toolSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs.builder()
///                             .inlinePayloads(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs.builder()
///                                 .name("process_request")
///                                 .description("Process incoming requests")
///                                 .inputSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs.builder()
///                                     .type("object")
///                                     .description("Request processing schema")
///                                     .properties(
///                                         AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs.builder()
///                                             .name("message")
///                                             .type("string")
///                                             .description("Message to process")
///                                             .required(true)
///                                             .build(),
///                                         AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs.builder()
///                                             .name("options")
///                                             .type("object")
///                                             .properties(
///                                                 AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs.builder()
///                                                     .name("priority")
///                                                     .type("string")
///                                                     .build(),
///                                                 AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs.builder()
///                                                     .name("tags")
///                                                     .type("array")
///                                                     .items(List.of(Map.of("type", "string")))
///                                                     .build())
///                                             .build())
///                                     .build())
///                                 .outputSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaArgs.builder()
///                                     .type("object")
///                                     .properties(
///                                         AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyArgs.builder()
///                                             .name("status")
///                                             .type("string")
///                                             .required(true)
///                                             .build(),
///                                         AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyArgs.builder()
///                                             .name("result")
///                                             .type("string")
///                                             .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   gatewayRole:
///     type: aws:iam:Role
///     name: gateway_role
///     properties:
///       name: bedrock-gateway-role
///       assumeRolePolicy: ${gatewayAssume.json}
///   lambdaRole:
///     type: aws:iam:Role
///     name: lambda_role
///     properties:
///       name: example-lambda-role
///       assumeRolePolicy: ${lambdaAssume.json}
///   example:
///     type: aws:lambda:Function
///     properties:
///       code:
///         fn::FileArchive: example.zip
///       name: example-function
///       role: ${lambdaRole.arn}
///       handler: index.handler
///       runtime: nodejs20.x
///   exampleAgentcoreGateway:
///     type: aws:bedrock:AgentcoreGateway
///     name: example
///     properties:
///       name: example-gateway
///       roleArn: ${gatewayRole.arn}
///       authorizerConfiguration:
///         customJwtAuthorizer:
///           discoveryUrl: https://accounts.google.com/.well-known/openid-configuration
///   exampleAgentcoreGatewayTarget:
///     type: aws:bedrock:AgentcoreGatewayTarget
///     name: example
///     properties:
///       name: example-target
///       gatewayIdentifier: ${exampleAgentcoreGateway.gatewayId}
///       description: Lambda function target for processing requests
///       credentialProviderConfiguration:
///         gatewayIamRole: {}
///       targetConfiguration:
///         mcp:
///           lambda:
///             lambdaArn: ${example.arn}
///             toolSchema:
///               inlinePayloads:
///                 - name: process_request
///                   description: Process incoming requests
///                   inputSchema:
///                     type: object
///                     description: Request processing schema
///                     properties:
///                       - name: message
///                         type: string
///                         description: Message to process
///                         required: true
///                       - name: options
///                         type: object
///                         properties:
///                           - name: priority
///                             type: string
///                           - name: tags
///                             type: array
///                             items:
///                               - type: string
///                   outputSchema:
///                     type: object
///                     properties:
///                       - name: status
///                         type: string
///                         required: true
///                       - name: result
///                         type: string
/// variables:
///   gatewayAssume:
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
///   lambdaAssume:
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
///                   - lambda.amazonaws.com
/// ```
///
///
/// ### Target with API Key Authentication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const apiKeyExample = new aws.bedrock.AgentcoreGatewayTarget("api_key_example", {
///     name: "api-target",
///     gatewayIdentifier: exampleAwsBedrockagentcoreGateway.gatewayId,
///     description: "External API target with API key authentication",
///     credentialProviderConfiguration: {
///         apiKey: {
///             providerArn: "arn:aws:iam::123456789012:oidc-provider/example.com",
///             credentialLocation: "HEADER",
///             credentialParameterName: "X-API-Key",
///             credentialPrefix: "Bearer",
///         },
///     },
///     targetConfiguration: {
///         mcp: {
///             lambda: {
///                 lambdaArn: example.arn,
///                 toolSchema: {
///                     inlinePayloads: [{
///                         name: "api_tool",
///                         description: "External API integration tool",
///                         inputSchema: {
///                             type: "string",
///                             description: "Simple string input for API calls",
///                         },
///                     }],
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// api_key_example = aws.bedrock.AgentcoreGatewayTarget("api_key_example",
///     name="api-target",
///     gateway_identifier=example_aws_bedrockagentcore_gateway["gatewayId"],
///     description="External API target with API key authentication",
///     credential_provider_configuration={
///         "api_key": {
///             "provider_arn": "arn:aws:iam::123456789012:oidc-provider/example.com",
///             "credential_location": "HEADER",
///             "credential_parameter_name": "X-API-Key",
///             "credential_prefix": "Bearer",
///         },
///     },
///     target_configuration={
///         "mcp": {
///             "lambda_": {
///                 "lambda_arn": example["arn"],
///                 "tool_schema": {
///                     "inline_payloads": [{
///                         "name": "api_tool",
///                         "description": "External API integration tool",
///                         "input_schema": {
///                             "type": "string",
///                             "description": "Simple string input for API calls",
///                         },
///                     }],
///                 },
///             },
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
///     var apiKeyExample = new Aws.Bedrock.AgentcoreGatewayTarget("api_key_example", new()
///     {
///         Name = "api-target",
///         GatewayIdentifier = exampleAwsBedrockagentcoreGateway.GatewayId,
///         Description = "External API target with API key authentication",
///         CredentialProviderConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetCredentialProviderConfigurationArgs
///         {
///             ApiKey = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetCredentialProviderConfigurationApiKeyArgs
///             {
///                 ProviderArn = "arn:aws:iam::123456789012:oidc-provider/example.com",
///                 CredentialLocation = "HEADER",
///                 CredentialParameterName = "X-API-Key",
///                 CredentialPrefix = "Bearer",
///             },
///         },
///         TargetConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationArgs
///         {
///             Mcp = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs
///             {
///                 Lambda = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs
///                 {
///                     LambdaArn = example.Arn,
///                     ToolSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs
///                     {
///                         InlinePayloads = new[]
///                         {
///                             new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs
///                             {
///                                 Name = "api_tool",
///                                 Description = "External API integration tool",
///                                 InputSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs
///                                 {
///                                     Type = "string",
///                                     Description = "Simple string input for API calls",
///                                 },
///                             },
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
/// 		_, err := bedrock.NewAgentcoreGatewayTarget(ctx, "api_key_example", &bedrock.AgentcoreGatewayTargetArgs{
/// 			Name:              pulumi.String("api-target"),
/// 			GatewayIdentifier: pulumi.Any(exampleAwsBedrockagentcoreGateway.GatewayId),
/// 			Description:       pulumi.String("External API target with API key authentication"),
/// 			CredentialProviderConfiguration: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationArgs{
/// 				ApiKey: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationApiKeyArgs{
/// 					ProviderArn:             pulumi.String("arn:aws:iam::123456789012:oidc-provider/example.com"),
/// 					CredentialLocation:      pulumi.String("HEADER"),
/// 					CredentialParameterName: pulumi.String("X-API-Key"),
/// 					CredentialPrefix:        pulumi.String("Bearer"),
/// 				},
/// 			},
/// 			TargetConfiguration: &bedrock.AgentcoreGatewayTargetTargetConfigurationArgs{
/// 				Mcp: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpArgs{
/// 					Lambda: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs{
/// 						LambdaArn: pulumi.Any(example.Arn),
/// 						ToolSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs{
/// 							InlinePayloads: bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArray{
/// 								&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs{
/// 									Name:        pulumi.String("api_tool"),
/// 									Description: pulumi.String("External API integration tool"),
/// 									InputSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs{
/// 										Type:        pulumi.String("string"),
/// 										Description: pulumi.String("Simple string input for API calls"),
/// 									},
/// 								},
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
/// import com.pulumi.aws.bedrock.AgentcoreGatewayTarget;
/// import com.pulumi.aws.bedrock.AgentcoreGatewayTargetArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetCredentialProviderConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetCredentialProviderConfigurationApiKeyArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs;
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
///         var apiKeyExample = new AgentcoreGatewayTarget("apiKeyExample", AgentcoreGatewayTargetArgs.builder()
///             .name("api-target")
///             .gatewayIdentifier(exampleAwsBedrockagentcoreGateway.gatewayId())
///             .description("External API target with API key authentication")
///             .credentialProviderConfiguration(AgentcoreGatewayTargetCredentialProviderConfigurationArgs.builder()
///                 .apiKey(AgentcoreGatewayTargetCredentialProviderConfigurationApiKeyArgs.builder()
///                     .providerArn("arn:aws:iam::123456789012:oidc-provider/example.com")
///                     .credentialLocation("HEADER")
///                     .credentialParameterName("X-API-Key")
///                     .credentialPrefix("Bearer")
///                     .build())
///                 .build())
///             .targetConfiguration(AgentcoreGatewayTargetTargetConfigurationArgs.builder()
///                 .mcp(AgentcoreGatewayTargetTargetConfigurationMcpArgs.builder()
///                     .lambda(AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs.builder()
///                         .lambdaArn(example.arn())
///                         .toolSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs.builder()
///                             .inlinePayloads(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs.builder()
///                                 .name("api_tool")
///                                 .description("External API integration tool")
///                                 .inputSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs.builder()
///                                     .type("string")
///                                     .description("Simple string input for API calls")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   apiKeyExample:
///     type: aws:bedrock:AgentcoreGatewayTarget
///     name: api_key_example
///     properties:
///       name: api-target
///       gatewayIdentifier: ${exampleAwsBedrockagentcoreGateway.gatewayId}
///       description: External API target with API key authentication
///       credentialProviderConfiguration:
///         apiKey:
///           providerArn: arn:aws:iam::123456789012:oidc-provider/example.com
///           credentialLocation: HEADER
///           credentialParameterName: X-API-Key
///           credentialPrefix: Bearer
///       targetConfiguration:
///         mcp:
///           lambda:
///             lambdaArn: ${example.arn}
///             toolSchema:
///               inlinePayloads:
///                 - name: api_tool
///                   description: External API integration tool
///                   inputSchema:
///                     type: string
///                     description: Simple string input for API calls
/// ```
///
///
/// ### Target with OAuth Authentication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const oauthExample = new aws.bedrock.AgentcoreGatewayTarget("oauth_example", {
///     name: "oauth-target",
///     gatewayIdentifier: exampleAwsBedrockagentcoreGateway.gatewayId,
///     credentialProviderConfiguration: {
///         oauth: {
///             providerArn: "arn:aws:iam::123456789012:oidc-provider/oauth.example.com",
///             scopes: [
///                 "read",
///                 "write",
///             ],
///             customParameters: {
///                 client_type: "confidential",
///                 grant_type: "authorization_code",
///             },
///         },
///     },
///     targetConfiguration: {
///         mcp: {
///             lambda: {
///                 lambdaArn: example.arn,
///                 toolSchema: {
///                     inlinePayloads: [{
///                         name: "oauth_tool",
///                         description: "OAuth-authenticated service",
///                         inputSchema: {
///                             type: "array",
///                             items: {
///                                 type: "object",
///                                 properties: [
///                                     {
///                                         name: "id",
///                                         type: "string",
///                                         required: true,
///                                     },
///                                     {
///                                         name: "value",
///                                         type: "number",
///                                     },
///                                 ],
///                             },
///                         },
///                     }],
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// oauth_example = aws.bedrock.AgentcoreGatewayTarget("oauth_example",
///     name="oauth-target",
///     gateway_identifier=example_aws_bedrockagentcore_gateway["gatewayId"],
///     credential_provider_configuration={
///         "oauth": {
///             "provider_arn": "arn:aws:iam::123456789012:oidc-provider/oauth.example.com",
///             "scopes": [
///                 "read",
///                 "write",
///             ],
///             "custom_parameters": {
///                 "client_type": "confidential",
///                 "grant_type": "authorization_code",
///             },
///         },
///     },
///     target_configuration={
///         "mcp": {
///             "lambda_": {
///                 "lambda_arn": example["arn"],
///                 "tool_schema": {
///                     "inline_payloads": [{
///                         "name": "oauth_tool",
///                         "description": "OAuth-authenticated service",
///                         "input_schema": {
///                             "type": "array",
///                             "items": {
///                                 "type": "object",
///                                 "properties": [
///                                     {
///                                         "name": "id",
///                                         "type": "string",
///                                         "required": True,
///                                     },
///                                     {
///                                         "name": "value",
///                                         "type": "number",
///                                     },
///                                 ],
///                             },
///                         },
///                     }],
///                 },
///             },
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
///     var oauthExample = new Aws.Bedrock.AgentcoreGatewayTarget("oauth_example", new()
///     {
///         Name = "oauth-target",
///         GatewayIdentifier = exampleAwsBedrockagentcoreGateway.GatewayId,
///         CredentialProviderConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetCredentialProviderConfigurationArgs
///         {
///             Oauth = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetCredentialProviderConfigurationOauthArgs
///             {
///                 ProviderArn = "arn:aws:iam::123456789012:oidc-provider/oauth.example.com",
///                 Scopes = new[]
///                 {
///                     "read",
///                     "write",
///                 },
///                 CustomParameters =
///                 {
///                     { "client_type", "confidential" },
///                     { "grant_type", "authorization_code" },
///                 },
///             },
///         },
///         TargetConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationArgs
///         {
///             Mcp = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs
///             {
///                 Lambda = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs
///                 {
///                     LambdaArn = example.Arn,
///                     ToolSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs
///                     {
///                         InlinePayloads = new[]
///                         {
///                             new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs
///                             {
///                                 Name = "oauth_tool",
///                                 Description = "OAuth-authenticated service",
///                                 InputSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs
///                                 {
///                                     Type = "array",
///                                     Items = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsArgs
///                                     {
///                                         Type = "object",
///                                         Properties = new[]
///                                         {
///                                             new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsPropertyArgs
///                                             {
///                                                 Name = "id",
///                                                 Type = "string",
///                                                 Required = true,
///                                             },
///                                             new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsPropertyArgs
///                                             {
///                                                 Name = "value",
///                                                 Type = "number",
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
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
/// 		_, err := bedrock.NewAgentcoreGatewayTarget(ctx, "oauth_example", &bedrock.AgentcoreGatewayTargetArgs{
/// 			Name:              pulumi.String("oauth-target"),
/// 			GatewayIdentifier: pulumi.Any(exampleAwsBedrockagentcoreGateway.GatewayId),
/// 			CredentialProviderConfiguration: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationArgs{
/// 				Oauth: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationOauthArgs{
/// 					ProviderArn: pulumi.String("arn:aws:iam::123456789012:oidc-provider/oauth.example.com"),
/// 					Scopes: pulumi.StringArray{
/// 						pulumi.String("read"),
/// 						pulumi.String("write"),
/// 					},
/// 					CustomParameters: pulumi.StringMap{
/// 						"client_type": pulumi.String("confidential"),
/// 						"grant_type":  pulumi.String("authorization_code"),
/// 					},
/// 				},
/// 			},
/// 			TargetConfiguration: &bedrock.AgentcoreGatewayTargetTargetConfigurationArgs{
/// 				Mcp: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpArgs{
/// 					Lambda: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs{
/// 						LambdaArn: pulumi.Any(example.Arn),
/// 						ToolSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs{
/// 							InlinePayloads: bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArray{
/// 								&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs{
/// 									Name:        pulumi.String("oauth_tool"),
/// 									Description: pulumi.String("OAuth-authenticated service"),
/// 									InputSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs{
/// 										Type: pulumi.String("array"),
/// 										Items: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsArgs{
/// 											Type: pulumi.String("object"),
/// 											Properties: bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsPropertyArray{
/// 												&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsPropertyArgs{
/// 													Name:     pulumi.String("id"),
/// 													Type:     pulumi.String("string"),
/// 													Required: pulumi.Bool(true),
/// 												},
/// 												&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsPropertyArgs{
/// 													Name: pulumi.String("value"),
/// 													Type: pulumi.String("number"),
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
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
/// import com.pulumi.aws.bedrock.AgentcoreGatewayTarget;
/// import com.pulumi.aws.bedrock.AgentcoreGatewayTargetArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetCredentialProviderConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetCredentialProviderConfigurationOauthArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs;
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
///         var oauthExample = new AgentcoreGatewayTarget("oauthExample", AgentcoreGatewayTargetArgs.builder()
///             .name("oauth-target")
///             .gatewayIdentifier(exampleAwsBedrockagentcoreGateway.gatewayId())
///             .credentialProviderConfiguration(AgentcoreGatewayTargetCredentialProviderConfigurationArgs.builder()
///                 .oauth(AgentcoreGatewayTargetCredentialProviderConfigurationOauthArgs.builder()
///                     .providerArn("arn:aws:iam::123456789012:oidc-provider/oauth.example.com")
///                     .scopes(
///                         "read",
///                         "write")
///                     .customParameters(Map.ofEntries(
///                         Map.entry("client_type", "confidential"),
///                         Map.entry("grant_type", "authorization_code")
///                     ))
///                     .build())
///                 .build())
///             .targetConfiguration(AgentcoreGatewayTargetTargetConfigurationArgs.builder()
///                 .mcp(AgentcoreGatewayTargetTargetConfigurationMcpArgs.builder()
///                     .lambda(AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs.builder()
///                         .lambdaArn(example.arn())
///                         .toolSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs.builder()
///                             .inlinePayloads(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs.builder()
///                                 .name("oauth_tool")
///                                 .description("OAuth-authenticated service")
///                                 .inputSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs.builder()
///                                     .type("array")
///                                     .items(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsArgs.builder()
///                                         .type("object")
///                                         .properties(
///                                             AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsPropertyArgs.builder()
///                                                 .name("id")
///                                                 .type("string")
///                                                 .required(true)
///                                                 .build(),
///                                             AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsPropertyArgs.builder()
///                                                 .name("value")
///                                                 .type("number")
///                                                 .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   oauthExample:
///     type: aws:bedrock:AgentcoreGatewayTarget
///     name: oauth_example
///     properties:
///       name: oauth-target
///       gatewayIdentifier: ${exampleAwsBedrockagentcoreGateway.gatewayId}
///       credentialProviderConfiguration:
///         oauth:
///           providerArn: arn:aws:iam::123456789012:oidc-provider/oauth.example.com
///           scopes:
///             - read
///             - write
///           customParameters:
///             client_type: confidential
///             grant_type: authorization_code
///       targetConfiguration:
///         mcp:
///           lambda:
///             lambdaArn: ${example.arn}
///             toolSchema:
///               inlinePayloads:
///                 - name: oauth_tool
///                   description: OAuth-authenticated service
///                   inputSchema:
///                     type: array
///                     items:
///                       type: object
///                       properties:
///                         - name: id
///                           type: string
///                           required: true
///                         - name: value
///                           type: number
/// ```
///
///
/// ### Complex Schema with JSON Serialization
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const complexSchema = new aws.bedrock.AgentcoreGatewayTarget("complex_schema", {
///     name: "complex-target",
///     gatewayIdentifier: exampleAwsBedrockagentcoreGateway.gatewayId,
///     credentialProviderConfiguration: {
///         gatewayIamRole: {},
///     },
///     targetConfiguration: {
///         mcp: {
///             lambda: {
///                 lambdaArn: example.arn,
///                 toolSchema: {
///                     inlinePayloads: [{
///                         name: "complex_tool",
///                         description: "Tool with complex nested schema",
///                         inputSchema: {
///                             type: "object",
///                             properties: [{
///                                 name: "profile",
///                                 type: "object",
///                                 properties: [
///                                     {
///                                         name: "nested_tags",
///                                         type: "array",
///                                         itemsJson: JSON.stringify({
///                                             type: "string",
///                                         }),
///                                     },
///                                     {
///                                         name: "metadata",
///                                         type: "object",
///                                         propertiesJson: JSON.stringify({
///                                             properties: {
///                                                 created_at: {
///                                                     type: "string",
///                                                 },
///                                                 version: {
///                                                     type: "number",
///                                                 },
///                                             },
///                                             required: ["created_at"],
///                                         }),
///                                     },
///                                 ],
///                             }],
///                         },
///                     }],
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// complex_schema = aws.bedrock.AgentcoreGatewayTarget("complex_schema",
///     name="complex-target",
///     gateway_identifier=example_aws_bedrockagentcore_gateway["gatewayId"],
///     credential_provider_configuration={
///         "gateway_iam_role": {},
///     },
///     target_configuration={
///         "mcp": {
///             "lambda_": {
///                 "lambda_arn": example["arn"],
///                 "tool_schema": {
///                     "inline_payloads": [{
///                         "name": "complex_tool",
///                         "description": "Tool with complex nested schema",
///                         "input_schema": {
///                             "type": "object",
///                             "properties": [{
///                                 "name": "profile",
///                                 "type": "object",
///                                 "properties": [
///                                     {
///                                         "name": "nested_tags",
///                                         "type": "array",
///                                         "items_json": json.dumps({
///                                             "type": "string",
///                                         }),
///                                     },
///                                     {
///                                         "name": "metadata",
///                                         "type": "object",
///                                         "properties_json": json.dumps({
///                                             "properties": {
///                                                 "created_at": {
///                                                     "type": "string",
///                                                 },
///                                                 "version": {
///                                                     "type": "number",
///                                                 },
///                                             },
///                                             "required": ["created_at"],
///                                         }),
///                                     },
///                                 ],
///                             }],
///                         },
///                     }],
///                 },
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var complexSchema = new Aws.Bedrock.AgentcoreGatewayTarget("complex_schema", new()
///     {
///         Name = "complex-target",
///         GatewayIdentifier = exampleAwsBedrockagentcoreGateway.GatewayId,
///         CredentialProviderConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetCredentialProviderConfigurationArgs
///         {
///             GatewayIamRole = null,
///         },
///         TargetConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationArgs
///         {
///             Mcp = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs
///             {
///                 Lambda = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs
///                 {
///                     LambdaArn = example.Arn,
///                     ToolSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs
///                     {
///                         InlinePayloads = new[]
///                         {
///                             new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs
///                             {
///                                 Name = "complex_tool",
///                                 Description = "Tool with complex nested schema",
///                                 InputSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs
///                                 {
///                                     Type = "object",
///                                     Properties = new[]
///                                     {
///                                         new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs
///                                         {
///                                             Name = "profile",
///                                             Type = "object",
///                                             Properties = new[]
///                                             {
///                                                 new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs
///                                                 {
///                                                     Name = "nested_tags",
///                                                     Type = "array",
///                                                     ItemsJson = JsonSerializer.Serialize(new Dictionary<string, object?>
///                                                     {
///                                                         ["type"] = "string",
///                                                     }),
///                                                 },
///                                                 new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs
///                                                 {
///                                                     Name = "metadata",
///                                                     Type = "object",
///                                                     PropertiesJson = JsonSerializer.Serialize(new Dictionary<string, object?>
///                                                     {
///                                                         ["properties"] = new Dictionary<string, object?>
///                                                         {
///                                                             ["created_at"] = new Dictionary<string, object?>
///                                                             {
///                                                                 ["type"] = "string",
///                                                             },
///                                                             ["version"] = new Dictionary<string, object?>
///                                                             {
///                                                                 ["type"] = "number",
///                                                             },
///                                                         },
///                                                         ["required"] = new[]
///                                                         {
///                                                             "created_at",
///                                                         },
///                                                     }),
///                                                 },
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
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
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"type": "string",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"properties": map[string]interface{}{
/// 				"created_at": map[string]interface{}{
/// 					"type": "string",
/// 				},
/// 				"version": map[string]interface{}{
/// 					"type": "number",
/// 				},
/// 			},
/// 			"required": []string{
/// 				"created_at",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = bedrock.NewAgentcoreGatewayTarget(ctx, "complex_schema", &bedrock.AgentcoreGatewayTargetArgs{
/// 			Name:              pulumi.String("complex-target"),
/// 			GatewayIdentifier: pulumi.Any(exampleAwsBedrockagentcoreGateway.GatewayId),
/// 			CredentialProviderConfiguration: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationArgs{
/// 				GatewayIamRole: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRoleArgs{},
/// 			},
/// 			TargetConfiguration: &bedrock.AgentcoreGatewayTargetTargetConfigurationArgs{
/// 				Mcp: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpArgs{
/// 					Lambda: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs{
/// 						LambdaArn: pulumi.Any(example.Arn),
/// 						ToolSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs{
/// 							InlinePayloads: bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArray{
/// 								&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs{
/// 									Name:        pulumi.String("complex_tool"),
/// 									Description: pulumi.String("Tool with complex nested schema"),
/// 									InputSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs{
/// 										Type: pulumi.String("object"),
/// 										Properties: bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArray{
/// 											&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs{
/// 												Name: pulumi.String("profile"),
/// 												Type: pulumi.String("object"),
/// 												Properties: bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArray{
/// 													&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs{
/// 														Name:      pulumi.String("nested_tags"),
/// 														Type:      pulumi.String("array"),
/// 														ItemsJson: pulumi.String(json0),
/// 													},
/// 													&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs{
/// 														Name:           pulumi.String("metadata"),
/// 														Type:           pulumi.String("object"),
/// 														PropertiesJson: pulumi.String(json1),
/// 													},
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
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
/// import com.pulumi.aws.bedrock.AgentcoreGatewayTarget;
/// import com.pulumi.aws.bedrock.AgentcoreGatewayTargetArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetCredentialProviderConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRoleArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var complexSchema = new AgentcoreGatewayTarget("complexSchema", AgentcoreGatewayTargetArgs.builder()
///             .name("complex-target")
///             .gatewayIdentifier(exampleAwsBedrockagentcoreGateway.gatewayId())
///             .credentialProviderConfiguration(AgentcoreGatewayTargetCredentialProviderConfigurationArgs.builder()
///                 .gatewayIamRole(AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRoleArgs.builder()
///                     .build())
///                 .build())
///             .targetConfiguration(AgentcoreGatewayTargetTargetConfigurationArgs.builder()
///                 .mcp(AgentcoreGatewayTargetTargetConfigurationMcpArgs.builder()
///                     .lambda(AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs.builder()
///                         .lambdaArn(example.arn())
///                         .toolSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs.builder()
///                             .inlinePayloads(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs.builder()
///                                 .name("complex_tool")
///                                 .description("Tool with complex nested schema")
///                                 .inputSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs.builder()
///                                     .type("object")
///                                     .properties(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs.builder()
///                                         .name("profile")
///                                         .type("object")
///                                         .properties(
///                                             AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs.builder()
///                                                 .name("nested_tags")
///                                                 .type("array")
///                                                 .itemsJson(serializeJson(
///                                                     jsonObject(
///                                                         jsonProperty("type", "string")
///                                                     )))
///                                                 .build(),
///                                             AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs.builder()
///                                                 .name("metadata")
///                                                 .type("object")
///                                                 .propertiesJson(serializeJson(
///                                                     jsonObject(
///                                                         jsonProperty("properties", jsonObject(
///                                                             jsonProperty("created_at", jsonObject(
///                                                                 jsonProperty("type", "string")
///                                                             )),
///                                                             jsonProperty("version", jsonObject(
///                                                                 jsonProperty("type", "number")
///                                                             ))
///                                                         )),
///                                                         jsonProperty("required", jsonArray("created_at"))
///                                                     )))
///                                                 .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   complexSchema:
///     type: aws:bedrock:AgentcoreGatewayTarget
///     name: complex_schema
///     properties:
///       name: complex-target
///       gatewayIdentifier: ${exampleAwsBedrockagentcoreGateway.gatewayId}
///       credentialProviderConfiguration:
///         gatewayIamRole: {}
///       targetConfiguration:
///         mcp:
///           lambda:
///             lambdaArn: ${example.arn}
///             toolSchema:
///               inlinePayloads:
///                 - name: complex_tool
///                   description: Tool with complex nested schema
///                   inputSchema:
///                     type: object
///                     properties:
///                       - name: profile
///                         type: object
///                         properties:
///                           - name: nested_tags
///                             type: array
///                             itemsJson:
///                               fn::toJSON:
///                                 type: string
///                           - name: metadata
///                             type: object
///                             propertiesJson:
///                               fn::toJSON:
///                                 properties:
///                                   created_at:
///                                     type: string
///                                   version:
///                                     type: number
///                                 required:
///                                   - created_at
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Gateway Target using the gateway identifier and target ID separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreGatewayTarget:AgentcoreGatewayTarget example GATEWAY1234567890,TARGET0987654321
/// ```
class AgentcoreGatewayTarget extends pulumi.CustomResource {
  /// Configuration for authenticating requests to the target. Required when using `lambda`, `open_api_schema` and `smithy_model` in `mcp` block. If using `mcp_server` in `mcp` block with no authorization, it should not be specified. See `credential_provider_configuration` below.
  late final pulumi.Output<AgentcoreGatewayTargetCredentialProviderConfiguration?> credentialProviderConfiguration;
  /// Description of the gateway target.
  late final pulumi.Output<String?> description;
  /// Identifier of the gateway that this target belongs to.
  late final pulumi.Output<String> gatewayIdentifier;
  /// Name of the gateway target.
  late final pulumi.Output<String> name;
  /// AWS region where the resource will be created. If not provided, the region from the provider configuration will be used.
  late final pulumi.Output<String> region;
  /// Configuration for the target endpoint. See `target_configuration` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<AgentcoreGatewayTargetTargetConfiguration> targetConfiguration;
  /// Unique identifier of the gateway target.
  late final pulumi.Output<String> targetId;
  late final pulumi.Output<AgentcoreGatewayTargetTimeouts?> timeouts;

  /// Creates a new [AgentcoreGatewayTarget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreGatewayTarget]. {@macro pulumi_bedrock_agentcore_gateway_target_agentcore_gateway_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreGatewayTarget(
    String name, {
    AgentcoreGatewayTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreGatewayTarget:AgentcoreGatewayTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.credentialProviderConfiguration = registerOutput<AgentcoreGatewayTargetCredentialProviderConfiguration?>('credentialProviderConfiguration');
    this.description = registerOutput<String?>('description');
    this.gatewayIdentifier = registerOutput<String>('gatewayIdentifier');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.targetConfiguration = registerOutput<AgentcoreGatewayTargetTargetConfiguration>('targetConfiguration');
    this.targetId = registerOutput<String>('targetId');
    this.timeouts = registerOutput<AgentcoreGatewayTargetTimeouts?>('timeouts');
  }
}
