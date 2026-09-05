import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_args.dart';
import 'agentcore_gateway_target_credential_provider_configuration.dart';
import 'agentcore_gateway_target_metadata_configuration.dart';
import 'agentcore_gateway_target_private_endpoint.dart';
import 'agentcore_gateway_target_state.dart';
import 'agentcore_gateway_target_target_configuration.dart';
import 'agentcore_gateway_target_timeouts.dart';

/// Manages an AWS Bedrock AgentCore Gateway Target. Gateway targets define the endpoints and configurations that a gateway can invoke, such as Lambda functions, APIs, or AgentCore Runtime agents, allowing agents to interact with external services through the Model Context Protocol (MCP) or by routing HTTP traffic directly to a runtime.
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
///         principals: [{
///             type: "Service",
///             identifiers: ["bedrock-agentcore.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const gatewayRole = new aws.iam.Role("gateway_role", {
///     name: "bedrock-gateway-role",
///     assumeRolePolicy: gatewayAssume.then(gatewayAssume => gatewayAssume.json),
/// });
/// const lambdaAssume = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["lambda.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
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
///     runtime: aws.lambda.Runtime.NodeJS24dX,
/// });
/// const exampleAgentcoreGateway = new aws.bedrock.AgentcoreGateway("example", {
///     authorizerConfiguration: {
///         customJwtAuthorizer: {
///             discoveryUrl: "https://accounts.google.com/.well-known/openid-configuration",
///         },
///     },
///     name: "example-gateway",
///     roleArn: gatewayRole.arn,
/// });
/// const exampleAgentcoreGatewayTarget = new aws.bedrock.AgentcoreGatewayTarget("example", {
///     credentialProviderConfiguration: {
///         gatewayIamRole: {},
///     },
///     targetConfiguration: {
///         mcp: {
///             lambda: {
///                 toolSchema: {
///                     inlinePayloads: [{
///                         inputSchema: {
///                             properties: [
///                                 {
///                                     name: "message",
///                                     type: "string",
///                                     description: "Message to process",
///                                     required: true,
///                                 },
///                                 {
///                                     properties: [
///                                         {
///                                             name: "priority",
///                                             type: "string",
///                                         },
///                                         {
///                                             items: [{
///                                                 type: "string",
///                                             }],
///                                             name: "tags",
///                                             type: "array",
///                                         },
///                                     ],
///                                     name: "options",
///                                     type: "object",
///                                 },
///                             ],
///                             type: "object",
///                             description: "Request processing schema",
///                         },
///                         outputSchema: {
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
///                             type: "object",
///                         },
///                         name: "process_request",
///                         description: "Process incoming requests",
///                     }],
///                 },
///                 lambdaArn: example.arn,
///             },
///         },
///     },
///     name: "example-target",
///     gatewayIdentifier: exampleAgentcoreGateway.gatewayId,
///     description: "Lambda function target for processing requests",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// gateway_assume = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["bedrock-agentcore.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// gateway_role = aws.iam.Role("gateway_role",
///     name="bedrock-gateway-role",
///     assume_role_policy=gateway_assume.json)
/// lambda_assume = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["lambda.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// lambda_role = aws.iam.Role("lambda_role",
///     name="example-lambda-role",
///     assume_role_policy=lambda_assume.json)
/// example = aws.lambda_.Function("example",
///     code=pulumi.FileArchive("example.zip"),
///     name="example-function",
///     role=lambda_role.arn,
///     handler="index.handler",
///     runtime=aws.lambda_.Runtime.NODE_JS24D_X)
/// example_agentcore_gateway = aws.bedrock.AgentcoreGateway("example",
///     authorizer_configuration={
///         "custom_jwt_authorizer": {
///             "discovery_url": "https://accounts.google.com/.well-known/openid-configuration",
///         },
///     },
///     name="example-gateway",
///     role_arn=gateway_role.arn)
/// example_agentcore_gateway_target = aws.bedrock.AgentcoreGatewayTarget("example",
///     credential_provider_configuration={
///         "gateway_iam_role": {},
///     },
///     target_configuration={
///         "mcp": {
///             "lambda_": {
///                 "tool_schema": {
///                     "inline_payloads": [{
///                         "input_schema": {
///                             "properties": [
///                                 {
///                                     "name": "message",
///                                     "type": "string",
///                                     "description": "Message to process",
///                                     "required": True,
///                                 },
///                                 {
///                                     "properties": [
///                                         {
///                                             "name": "priority",
///                                             "type": "string",
///                                         },
///                                         {
///                                             "items": [{
///                                                 "type": "string",
///                                             }],
///                                             "name": "tags",
///                                             "type": "array",
///                                         },
///                                     ],
///                                     "name": "options",
///                                     "type": "object",
///                                 },
///                             ],
///                             "type": "object",
///                             "description": "Request processing schema",
///                         },
///                         "output_schema": {
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
///                             "type": "object",
///                         },
///                         "name": "process_request",
///                         "description": "Process incoming requests",
///                     }],
///                 },
///                 "lambda_arn": example.arn,
///             },
///         },
///     },
///     name="example-target",
///     gateway_identifier=example_agentcore_gateway.gateway_id,
///     description="Lambda function target for processing requests")
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
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
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
///         Runtime = Aws.Lambda.Runtime.NodeJS24dX,
///     });
///
///     var exampleAgentcoreGateway = new Aws.Bedrock.AgentcoreGateway("example", new()
///     {
///         AuthorizerConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayAuthorizerConfigurationArgs
///         {
///             CustomJwtAuthorizer = new Aws.Bedrock.Inputs.AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerArgs
///             {
///                 DiscoveryUrl = "https://accounts.google.com/.well-known/openid-configuration",
///             },
///         },
///         Name = "example-gateway",
///         RoleArn = gatewayRole.Arn,
///     });
///
///     var exampleAgentcoreGatewayTarget = new Aws.Bedrock.AgentcoreGatewayTarget("example", new()
///     {
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
///                     ToolSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs
///                     {
///                         InlinePayloads = new[]
///                         {
///                             new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs
///                             {
///                                 InputSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs
///                                 {
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
///                                             Properties = new[]
///                                             {
///                                                 new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs
///                                                 {
///                                                     Name = "priority",
///                                                     Type = "string",
///                                                 },
///                                                 new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs
///                                                 {
///                                                     Items = new[]
///                                                     {
///
///                                                         {
///                                                             { "type", "string" },
///                                                         },
///                                                     },
///                                                     Name = "tags",
///                                                     Type = "array",
///                                                 },
///                                             },
///                                             Name = "options",
///                                             Type = "object",
///                                         },
///                                     },
///                                     Type = "object",
///                                     Description = "Request processing schema",
///                                 },
///                                 OutputSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaArgs
///                                 {
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
///                                     Type = "object",
///                                 },
///                                 Name = "process_request",
///                                 Description = "Process incoming requests",
///                             },
///                         },
///                     },
///                     LambdaArn = example.Arn,
///                 },
///             },
///         },
///         Name = "example-target",
///         GatewayIdentifier = exampleAgentcoreGateway.GatewayId,
///         Description = "Lambda function target for processing requests",
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
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"lambda.amazonaws.com",
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
/// 			Runtime: pulumi.String(lambda.RuntimeNodeJS24dX),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAgentcoreGateway, err := bedrock.NewAgentcoreGateway(ctx, "example", &bedrock.AgentcoreGatewayArgs{
/// 			AuthorizerConfiguration: &bedrock.AgentcoreGatewayAuthorizerConfigurationArgs{
/// 				CustomJwtAuthorizer: &bedrock.AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerArgs{
/// 					DiscoveryUrl: pulumi.String("https://accounts.google.com/.well-known/openid-configuration"),
/// 				},
/// 			},
/// 			Name:    pulumi.String("example-gateway"),
/// 			RoleArn: gatewayRole.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentcoreGatewayTarget(ctx, "example", &bedrock.AgentcoreGatewayTargetArgs{
/// 			CredentialProviderConfiguration: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationArgs{
/// 				GatewayIamRole: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRoleArgs{},
/// 			},
/// 			TargetConfiguration: &bedrock.AgentcoreGatewayTargetTargetConfigurationArgs{
/// 				Mcp: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpArgs{
/// 					Lambda: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs{
/// 						ToolSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs{
/// 							InlinePayloads: bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArray{
/// 								&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs{
/// 									InputSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs{
/// 										Properties: bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArray{
/// 											&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs{
/// 												Name:        pulumi.String("message"),
/// 												Type:        pulumi.String("string"),
/// 												Description: pulumi.String("Message to process"),
/// 												Required:    pulumi.Bool(true),
/// 											},
/// 											&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs{
/// 												Properties: bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArray{
/// 													&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs{
/// 														Name: pulumi.String("priority"),
/// 														Type: pulumi.String("string"),
/// 													},
/// 													&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs{
/// 														Items: []map[string]string{
/// 															{
/// 																"type": "string",
/// 															},
/// 														},
/// 														Name: pulumi.String("tags"),
/// 														Type: pulumi.String("array"),
/// 													},
/// 												},
/// 												Name: pulumi.String("options"),
/// 												Type: pulumi.String("object"),
/// 											},
/// 										},
/// 										Type:        pulumi.String("object"),
/// 										Description: pulumi.String("Request processing schema"),
/// 									},
/// 									OutputSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaArgs{
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
/// 										Type: pulumi.String("object"),
/// 									},
/// 									Name:        pulumi.String("process_request"),
/// 									Description: pulumi.String("Process incoming requests"),
/// 								},
/// 							},
/// 						},
/// 						LambdaArn: example.Arn,
/// 					},
/// 				},
/// 			},
/// 			Name:              pulumi.String("example-target"),
/// 			GatewayIdentifier: exampleAgentcoreGateway.GatewayId,
/// 			Description:       pulumi.String("Lambda function target for processing requests"),
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
/// data "aws_iam_getpolicydocument" "gatewayAssume" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["bedrock-agentcore.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "lambdaAssume" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["lambda.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
///
/// resource "aws_iam_role" "gateway_role" {
///   name               = "bedrock-gateway-role"
///   assume_role_policy = data.aws_iam_getpolicydocument.gatewayAssume.json
/// }
/// resource "aws_iam_role" "lambda_role" {
///   name               = "example-lambda-role"
///   assume_role_policy = data.aws_iam_getpolicydocument.lambdaAssume.json
/// }
/// resource "aws_lambda_function" "example" {
///   code    = fileArchive("example.zip")
///   name    = "example-function"
///   role    = aws_iam_role.lambda_role.arn
///   handler = "index.handler"
///   runtime = "nodejs24.x"
/// }
/// resource "aws_bedrock_agentcoregateway" "example" {
///   authorizer_configuration = {
///     custom_jwt_authorizer = {
///       discovery_url = "https://accounts.google.com/.well-known/openid-configuration"
///     }
///   }
///   name     = "example-gateway"
///   role_arn = aws_iam_role.gateway_role.arn
/// }
/// resource "aws_bedrock_agentcoregatewaytarget" "example" {
///   credential_provider_configuration = {
///     gateway_iam_role = {}
///   }
///   target_configuration = {
///     mcp = {
///       lambda = {
///         tool_schema = {
///           inline_payloads = [{
///             "inputSchema" = {
///               "properties" = [{
///                 "name"        = "message"
///                 "type"        = "string"
///                 "description" = "Message to process"
///                 "required"    = true
///                 }, {
///                 "properties" = [{
///                   "name" = "priority"
///                   "type" = "string"
///                   }, {
///                   "items" = [{
///                     "type" = "string"
///                   }]
///                   "name" = "tags"
///                   "type" = "array"
///                 }]
///                 "name" = "options"
///                 "type" = "object"
///               }]
///               "type"        = "object"
///               "description" = "Request processing schema"
///             }
///             "outputSchema" = {
///               "properties" = [{
///                 "name"     = "status"
///                 "type"     = "string"
///                 "required" = true
///                 }, {
///                 "name" = "result"
///                 "type" = "string"
///               }]
///               "type" = "object"
///             }
///             "name"        = "process_request"
///             "description" = "Process incoming requests"
///           }]
///         }
///         lambda_arn = aws_lambda_function.example.arn
///       }
///     }
///   }
///   name               = "example-target"
///   gateway_identifier = aws_bedrock_agentcoregateway.example.gateway_id
///   description        = "Lambda function target for processing requests"
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
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaPropertyArgs;
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
///         final var gatewayAssume = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
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
///         var gatewayRole = new Role("gatewayRole", RoleArgs.builder()
///             .name("bedrock-gateway-role")
///             .assumeRolePolicy(gatewayAssume.json())
///             .build());
///
///         final var lambdaAssume = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("lambda.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
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
///             .runtime("nodejs24.x")
///             .build());
///
///         var exampleAgentcoreGateway = new AgentcoreGateway("exampleAgentcoreGateway", AgentcoreGatewayArgs.builder()
///             .authorizerConfiguration(AgentcoreGatewayAuthorizerConfigurationArgs.builder()
///                 .customJwtAuthorizer(AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerArgs.builder()
///                     .discoveryUrl("https://accounts.google.com/.well-known/openid-configuration")
///                     .build())
///                 .build())
///             .name("example-gateway")
///             .roleArn(gatewayRole.arn())
///             .build());
///
///         var exampleAgentcoreGatewayTarget = new AgentcoreGatewayTarget("exampleAgentcoreGatewayTarget", AgentcoreGatewayTargetArgs.builder()
///             .credentialProviderConfiguration(AgentcoreGatewayTargetCredentialProviderConfigurationArgs.builder()
///                 .gatewayIamRole(AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRoleArgs.builder()
///                     .build())
///                 .build())
///             .targetConfiguration(AgentcoreGatewayTargetTargetConfigurationArgs.builder()
///                 .mcp(AgentcoreGatewayTargetTargetConfigurationMcpArgs.builder()
///                     .lambda(AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs.builder()
///                         .toolSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs.builder()
///                             .inlinePayloads(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs.builder()
///                                 .inputSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs.builder()
///                                     .properties(
///                                         AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs.builder()
///                                             .name("message")
///                                             .type("string")
///                                             .description("Message to process")
///                                             .required(true)
///                                             .build(),
///                                         AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs.builder()
///                                             .properties(
///                                                 AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs.builder()
///                                                     .name("priority")
///                                                     .type("string")
///                                                     .build(),
///                                                 AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs.builder()
///                                                     .items(Arrays.asList(Map.of("type", "string")))
///                                                     .name("tags")
///                                                     .type("array")
///                                                     .build())
///                                             .name("options")
///                                             .type("object")
///                                             .build())
///                                     .type("object")
///                                     .description("Request processing schema")
///                                     .build())
///                                 .outputSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchemaArgs.builder()
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
///                                     .type("object")
///                                     .build())
///                                 .name("process_request")
///                                 .description("Process incoming requests")
///                                 .build())
///                             .build())
///                         .lambdaArn(example.arn())
///                         .build())
///                     .build())
///                 .build())
///             .name("example-target")
///             .gatewayIdentifier(exampleAgentcoreGateway.gatewayId())
///             .description("Lambda function target for processing requests")
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
///         fn::fileArchive: example.zip
///       name: example-function
///       role: ${lambdaRole.arn}
///       handler: index.handler
///       runtime: nodejs24.x
///   exampleAgentcoreGateway:
///     type: aws:bedrock:AgentcoreGateway
///     name: example
///     properties:
///       authorizerConfiguration:
///         customJwtAuthorizer:
///           discoveryUrl: https://accounts.google.com/.well-known/openid-configuration
///       name: example-gateway
///       roleArn: ${gatewayRole.arn}
///   exampleAgentcoreGatewayTarget:
///     type: aws:bedrock:AgentcoreGatewayTarget
///     name: example
///     properties:
///       credentialProviderConfiguration:
///         gatewayIamRole: {}
///       targetConfiguration:
///         mcp:
///           lambda:
///             toolSchema:
///               inlinePayloads:
///                 - inputSchema:
///                     properties:
///                       - name: message
///                         type: string
///                         description: Message to process
///                         required: true
///                       - properties:
///                           - name: priority
///                             type: string
///                           - items:
///                               - type: string
///                             name: tags
///                             type: array
///                         name: options
///                         type: object
///                     type: object
///                     description: Request processing schema
///                   outputSchema:
///                     properties:
///                       - name: status
///                         type: string
///                         required: true
///                       - name: result
///                         type: string
///                     type: object
///                   name: process_request
///                   description: Process incoming requests
///             lambdaArn: ${example.arn}
///       name: example-target
///       gatewayIdentifier: ${exampleAgentcoreGateway.gatewayId}
///       description: Lambda function target for processing requests
/// variables:
///   gatewayAssume:
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
///   lambdaAssume:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - lambda.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
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
///                 toolSchema: {
///                     inlinePayloads: [{
///                         inputSchema: {
///                             type: "string",
///                             description: "Simple string input for API calls",
///                         },
///                         name: "api_tool",
///                         description: "External API integration tool",
///                     }],
///                 },
///                 lambdaArn: example.arn,
///             },
///         },
///     },
///     name: "api-target",
///     gatewayIdentifier: exampleAwsBedrockagentcoreGateway.gatewayId,
///     description: "External API target with API key authentication",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// api_key_example = aws.bedrock.AgentcoreGatewayTarget("api_key_example",
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
///                 "tool_schema": {
///                     "inline_payloads": [{
///                         "input_schema": {
///                             "type": "string",
///                             "description": "Simple string input for API calls",
///                         },
///                         "name": "api_tool",
///                         "description": "External API integration tool",
///                     }],
///                 },
///                 "lambda_arn": example["arn"],
///             },
///         },
///     },
///     name="api-target",
///     gateway_identifier=example_aws_bedrockagentcore_gateway["gatewayId"],
///     description="External API target with API key authentication")
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
///                     ToolSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs
///                     {
///                         InlinePayloads = new[]
///                         {
///                             new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs
///                             {
///                                 InputSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs
///                                 {
///                                     Type = "string",
///                                     Description = "Simple string input for API calls",
///                                 },
///                                 Name = "api_tool",
///                                 Description = "External API integration tool",
///                             },
///                         },
///                     },
///                     LambdaArn = example.Arn,
///                 },
///             },
///         },
///         Name = "api-target",
///         GatewayIdentifier = exampleAwsBedrockagentcoreGateway.GatewayId,
///         Description = "External API target with API key authentication",
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
/// 						ToolSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs{
/// 							InlinePayloads: bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArray{
/// 								&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs{
/// 									InputSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs{
/// 										Type:        pulumi.String("string"),
/// 										Description: pulumi.String("Simple string input for API calls"),
/// 									},
/// 									Name:        pulumi.String("api_tool"),
/// 									Description: pulumi.String("External API integration tool"),
/// 								},
/// 							},
/// 						},
/// 						LambdaArn: pulumi.Any(example.Arn),
/// 					},
/// 				},
/// 			},
/// 			Name:              pulumi.String("api-target"),
/// 			GatewayIdentifier: pulumi.Any(exampleAwsBedrockagentcoreGateway.GatewayId),
/// 			Description:       pulumi.String("External API target with API key authentication"),
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
/// resource "aws_bedrock_agentcoregatewaytarget" "api_key_example" {
///   credential_provider_configuration = {
///     api_key = {
///       provider_arn              = "arn:aws:iam::123456789012:oidc-provider/example.com"
///       credential_location       = "HEADER"
///       credential_parameter_name = "X-API-Key"
///       credential_prefix         = "Bearer"
///     }
///   }
///   target_configuration = {
///     mcp = {
///       lambda = {
///         tool_schema = {
///           inline_payloads = [{
///             "inputSchema" = {
///               "type"        = "string"
///               "description" = "Simple string input for API calls"
///             }
///             "name"        = "api_tool"
///             "description" = "External API integration tool"
///           }]
///         }
///         lambda_arn = example.arn
///       }
///     }
///   }
///   name               = "api-target"
///   gateway_identifier = exampleAwsBedrockagentcoreGateway.gatewayId
///   description        = "External API target with API key authentication"
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
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs;
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
///         var apiKeyExample = new AgentcoreGatewayTarget("apiKeyExample", AgentcoreGatewayTargetArgs.builder()
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
///                         .toolSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs.builder()
///                             .inlinePayloads(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs.builder()
///                                 .inputSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs.builder()
///                                     .type("string")
///                                     .description("Simple string input for API calls")
///                                     .build())
///                                 .name("api_tool")
///                                 .description("External API integration tool")
///                                 .build())
///                             .build())
///                         .lambdaArn(example.arn())
///                         .build())
///                     .build())
///                 .build())
///             .name("api-target")
///             .gatewayIdentifier(exampleAwsBedrockagentcoreGateway.gatewayId())
///             .description("External API target with API key authentication")
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
///       credentialProviderConfiguration:
///         apiKey:
///           providerArn: arn:aws:iam::123456789012:oidc-provider/example.com
///           credentialLocation: HEADER
///           credentialParameterName: X-API-Key
///           credentialPrefix: Bearer
///       targetConfiguration:
///         mcp:
///           lambda:
///             toolSchema:
///               inlinePayloads:
///                 - inputSchema:
///                     type: string
///                     description: Simple string input for API calls
///                   name: api_tool
///                   description: External API integration tool
///             lambdaArn: ${example.arn}
///       name: api-target
///       gatewayIdentifier: ${exampleAwsBedrockagentcoreGateway.gatewayId}
///       description: External API target with API key authentication
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
///     credentialProviderConfiguration: {
///         oauth: {
///             providerArn: "arn:aws:iam::123456789012:oidc-provider/oauth.example.com",
///             scopes: [
///                 "read",
///                 "write",
///             ],
///             grantType: "authorization_code",
///             defaultReturnUrl: "https://myapp.example.com/callback",
///             customParameters: {
///                 client_type: "confidential",
///             },
///         },
///     },
///     targetConfiguration: {
///         mcp: {
///             lambda: {
///                 toolSchema: {
///                     inlinePayloads: [{
///                         inputSchema: {
///                             items: {
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
///                                 type: "object",
///                             },
///                             type: "array",
///                         },
///                         name: "oauth_tool",
///                         description: "OAuth-authenticated service",
///                     }],
///                 },
///                 lambdaArn: example.arn,
///             },
///         },
///     },
///     name: "oauth-target",
///     gatewayIdentifier: exampleAwsBedrockagentcoreGateway.gatewayId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// oauth_example = aws.bedrock.AgentcoreGatewayTarget("oauth_example",
///     credential_provider_configuration={
///         "oauth": {
///             "provider_arn": "arn:aws:iam::123456789012:oidc-provider/oauth.example.com",
///             "scopes": [
///                 "read",
///                 "write",
///             ],
///             "grant_type": "authorization_code",
///             "default_return_url": "https://myapp.example.com/callback",
///             "custom_parameters": {
///                 "client_type": "confidential",
///             },
///         },
///     },
///     target_configuration={
///         "mcp": {
///             "lambda_": {
///                 "tool_schema": {
///                     "inline_payloads": [{
///                         "input_schema": {
///                             "items": {
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
///                                 "type": "object",
///                             },
///                             "type": "array",
///                         },
///                         "name": "oauth_tool",
///                         "description": "OAuth-authenticated service",
///                     }],
///                 },
///                 "lambda_arn": example["arn"],
///             },
///         },
///     },
///     name="oauth-target",
///     gateway_identifier=example_aws_bedrockagentcore_gateway["gatewayId"])
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
///                 GrantType = "authorization_code",
///                 DefaultReturnUrl = "https://myapp.example.com/callback",
///                 CustomParameters =
///                 {
///                     { "client_type", "confidential" },
///                 },
///             },
///         },
///         TargetConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationArgs
///         {
///             Mcp = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs
///             {
///                 Lambda = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs
///                 {
///                     ToolSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs
///                     {
///                         InlinePayloads = new[]
///                         {
///                             new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs
///                             {
///                                 InputSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs
///                                 {
///                                     Items = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsArgs
///                                     {
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
///                                         Type = "object",
///                                     },
///                                     Type = "array",
///                                 },
///                                 Name = "oauth_tool",
///                                 Description = "OAuth-authenticated service",
///                             },
///                         },
///                     },
///                     LambdaArn = example.Arn,
///                 },
///             },
///         },
///         Name = "oauth-target",
///         GatewayIdentifier = exampleAwsBedrockagentcoreGateway.GatewayId,
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
/// 			CredentialProviderConfiguration: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationArgs{
/// 				Oauth: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationOauthArgs{
/// 					ProviderArn: pulumi.String("arn:aws:iam::123456789012:oidc-provider/oauth.example.com"),
/// 					Scopes: pulumi.StringArray{
/// 						pulumi.String("read"),
/// 						pulumi.String("write"),
/// 					},
/// 					GrantType:        pulumi.String("authorization_code"),
/// 					DefaultReturnUrl: pulumi.String("https://myapp.example.com/callback"),
/// 					CustomParameters: pulumi.StringMap{
/// 						"client_type": pulumi.String("confidential"),
/// 					},
/// 				},
/// 			},
/// 			TargetConfiguration: &bedrock.AgentcoreGatewayTargetTargetConfigurationArgs{
/// 				Mcp: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpArgs{
/// 					Lambda: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs{
/// 						ToolSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs{
/// 							InlinePayloads: bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArray{
/// 								&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs{
/// 									InputSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs{
/// 										Items: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsArgs{
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
/// 											Type: pulumi.String("object"),
/// 										},
/// 										Type: pulumi.String("array"),
/// 									},
/// 									Name:        pulumi.String("oauth_tool"),
/// 									Description: pulumi.String("OAuth-authenticated service"),
/// 								},
/// 							},
/// 						},
/// 						LambdaArn: pulumi.Any(example.Arn),
/// 					},
/// 				},
/// 			},
/// 			Name:              pulumi.String("oauth-target"),
/// 			GatewayIdentifier: pulumi.Any(exampleAwsBedrockagentcoreGateway.GatewayId),
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
/// resource "aws_bedrock_agentcoregatewaytarget" "oauth_example" {
///   credential_provider_configuration = {
///     oauth = {
///       provider_arn       = "arn:aws:iam::123456789012:oidc-provider/oauth.example.com"
///       scopes             = ["read", "write"]
///       grant_type         = "authorization_code"
///       default_return_url = "https://myapp.example.com/callback"
///       custom_parameters = {
///         "client_type" = "confidential"
///       }
///     }
///   }
///   target_configuration = {
///     mcp = {
///       lambda = {
///         tool_schema = {
///           inline_payloads = [{
///             "inputSchema" = {
///               "items" = {
///                 "properties" = [{
///                   "name"     = "id"
///                   "type"     = "string"
///                   "required" = true
///                   }, {
///                   "name" = "value"
///                   "type" = "number"
///                 }]
///                 "type" = "object"
///               }
///               "type" = "array"
///             }
///             "name"        = "oauth_tool"
///             "description" = "OAuth-authenticated service"
///           }]
///         }
///         lambda_arn = example.arn
///       }
///     }
///   }
///   name               = "oauth-target"
///   gateway_identifier = exampleAwsBedrockagentcoreGateway.gatewayId
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
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsPropertyArgs;
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
///         var oauthExample = new AgentcoreGatewayTarget("oauthExample", AgentcoreGatewayTargetArgs.builder()
///             .credentialProviderConfiguration(AgentcoreGatewayTargetCredentialProviderConfigurationArgs.builder()
///                 .oauth(AgentcoreGatewayTargetCredentialProviderConfigurationOauthArgs.builder()
///                     .providerArn("arn:aws:iam::123456789012:oidc-provider/oauth.example.com")
///                     .scopes(
///                         "read",
///                         "write")
///                     .grantType("authorization_code")
///                     .defaultReturnUrl("https://myapp.example.com/callback")
///                     .customParameters(Map.of("client_type", "confidential"))
///                     .build())
///                 .build())
///             .targetConfiguration(AgentcoreGatewayTargetTargetConfigurationArgs.builder()
///                 .mcp(AgentcoreGatewayTargetTargetConfigurationMcpArgs.builder()
///                     .lambda(AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs.builder()
///                         .toolSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs.builder()
///                             .inlinePayloads(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs.builder()
///                                 .inputSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs.builder()
///                                     .items(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaItemsArgs.builder()
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
///                                         .type("object")
///                                         .build())
///                                     .type("array")
///                                     .build())
///                                 .name("oauth_tool")
///                                 .description("OAuth-authenticated service")
///                                 .build())
///                             .build())
///                         .lambdaArn(example.arn())
///                         .build())
///                     .build())
///                 .build())
///             .name("oauth-target")
///             .gatewayIdentifier(exampleAwsBedrockagentcoreGateway.gatewayId())
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
///       credentialProviderConfiguration:
///         oauth:
///           providerArn: arn:aws:iam::123456789012:oidc-provider/oauth.example.com
///           scopes:
///             - read
///             - write
///           grantType: authorization_code
///           defaultReturnUrl: https://myapp.example.com/callback
///           customParameters:
///             client_type: confidential
///       targetConfiguration:
///         mcp:
///           lambda:
///             toolSchema:
///               inlinePayloads:
///                 - inputSchema:
///                     items:
///                       properties:
///                         - name: id
///                           type: string
///                           required: true
///                         - name: value
///                           type: number
///                       type: object
///                     type: array
///                   name: oauth_tool
///                   description: OAuth-authenticated service
///             lambdaArn: ${example.arn}
///       name: oauth-target
///       gatewayIdentifier: ${exampleAwsBedrockagentcoreGateway.gatewayId}
/// ```
///
///
/// ### Target with IAM SigV4 Authentication (MCP Server)
///
/// Use this for `mcpServer` targets pointing at AWS-hosted SigV4-protected endpoints (e.g. another Bedrock AgentCore Runtime). The gateway signs upstream requests using its own IAM role.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sigv4Example = new aws.bedrock.AgentcoreGatewayTarget("sigv4_example", {
///     credentialProviderConfiguration: {
///         gatewayIamRole: {
///             service: "bedrock-agentcore",
///         },
///     },
///     targetConfiguration: {
///         mcp: {
///             mcpServer: {
///                 endpoint: "https://example-runtime.bedrock-agentcore.us-east-1.amazonaws.com/runtimes/example/invocations?qualifier=DEFAULT",
///             },
///         },
///     },
///     name: "sigv4-target",
///     gatewayIdentifier: example.gatewayId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sigv4_example = aws.bedrock.AgentcoreGatewayTarget("sigv4_example",
///     credential_provider_configuration={
///         "gateway_iam_role": {
///             "service": "bedrock-agentcore",
///         },
///     },
///     target_configuration={
///         "mcp": {
///             "mcp_server": {
///                 "endpoint": "https://example-runtime.bedrock-agentcore.us-east-1.amazonaws.com/runtimes/example/invocations?qualifier=DEFAULT",
///             },
///         },
///     },
///     name="sigv4-target",
///     gateway_identifier=example["gatewayId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sigv4Example = new Aws.Bedrock.AgentcoreGatewayTarget("sigv4_example", new()
///     {
///         CredentialProviderConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetCredentialProviderConfigurationArgs
///         {
///             GatewayIamRole = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRoleArgs
///             {
///                 Service = "bedrock-agentcore",
///             },
///         },
///         TargetConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationArgs
///         {
///             Mcp = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs
///             {
///                 McpServer = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs
///                 {
///                     Endpoint = "https://example-runtime.bedrock-agentcore.us-east-1.amazonaws.com/runtimes/example/invocations?qualifier=DEFAULT",
///                 },
///             },
///         },
///         Name = "sigv4-target",
///         GatewayIdentifier = example.GatewayId,
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
/// 		_, err := bedrock.NewAgentcoreGatewayTarget(ctx, "sigv4_example", &bedrock.AgentcoreGatewayTargetArgs{
/// 			CredentialProviderConfiguration: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationArgs{
/// 				GatewayIamRole: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRoleArgs{
/// 					Service: pulumi.String("bedrock-agentcore"),
/// 				},
/// 			},
/// 			TargetConfiguration: &bedrock.AgentcoreGatewayTargetTargetConfigurationArgs{
/// 				Mcp: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpArgs{
/// 					McpServer: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs{
/// 						Endpoint: pulumi.String("https://example-runtime.bedrock-agentcore.us-east-1.amazonaws.com/runtimes/example/invocations?qualifier=DEFAULT"),
/// 					},
/// 				},
/// 			},
/// 			Name:              pulumi.String("sigv4-target"),
/// 			GatewayIdentifier: pulumi.Any(example.GatewayId),
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
/// resource "aws_bedrock_agentcoregatewaytarget" "sigv4_example" {
///   credential_provider_configuration = {
///     gateway_iam_role = {
///       service = "bedrock-agentcore"
///     }
///   }
///   target_configuration = {
///     mcp = {
///       mcp_server = {
///         endpoint = "https://example-runtime.bedrock-agentcore.us-east-1.amazonaws.com/runtimes/example/invocations?qualifier=DEFAULT"
///       }
///     }
///   }
///   name               = "sigv4-target"
///   gateway_identifier = example.gatewayId
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
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs;
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
///         var sigv4Example = new AgentcoreGatewayTarget("sigv4Example", AgentcoreGatewayTargetArgs.builder()
///             .credentialProviderConfiguration(AgentcoreGatewayTargetCredentialProviderConfigurationArgs.builder()
///                 .gatewayIamRole(AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRoleArgs.builder()
///                     .service("bedrock-agentcore")
///                     .build())
///                 .build())
///             .targetConfiguration(AgentcoreGatewayTargetTargetConfigurationArgs.builder()
///                 .mcp(AgentcoreGatewayTargetTargetConfigurationMcpArgs.builder()
///                     .mcpServer(AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs.builder()
///                         .endpoint("https://example-runtime.bedrock-agentcore.us-east-1.amazonaws.com/runtimes/example/invocations?qualifier=DEFAULT")
///                         .build())
///                     .build())
///                 .build())
///             .name("sigv4-target")
///             .gatewayIdentifier(example.gatewayId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sigv4Example:
///     type: aws:bedrock:AgentcoreGatewayTarget
///     name: sigv4_example
///     properties:
///       credentialProviderConfiguration:
///         gatewayIamRole:
///           service: bedrock-agentcore
///       targetConfiguration:
///         mcp:
///           mcpServer:
///             endpoint: https://example-runtime.bedrock-agentcore.us-east-1.amazonaws.com/runtimes/example/invocations?qualifier=DEFAULT
///       name: sigv4-target
///       gatewayIdentifier: ${example.gatewayId}
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
///     credentialProviderConfiguration: {
///         gatewayIamRole: {},
///     },
///     targetConfiguration: {
///         mcp: {
///             lambda: {
///                 toolSchema: {
///                     inlinePayloads: [{
///                         inputSchema: {
///                             properties: [{
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
///                                 name: "profile",
///                                 type: "object",
///                             }],
///                             type: "object",
///                         },
///                         name: "complex_tool",
///                         description: "Tool with complex nested schema",
///                     }],
///                 },
///                 lambdaArn: example.arn,
///             },
///         },
///     },
///     name: "complex-target",
///     gatewayIdentifier: exampleAwsBedrockagentcoreGateway.gatewayId,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// complex_schema = aws.bedrock.AgentcoreGatewayTarget("complex_schema",
///     credential_provider_configuration={
///         "gateway_iam_role": {},
///     },
///     target_configuration={
///         "mcp": {
///             "lambda_": {
///                 "tool_schema": {
///                     "inline_payloads": [{
///                         "input_schema": {
///                             "properties": [{
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
///                                 "name": "profile",
///                                 "type": "object",
///                             }],
///                             "type": "object",
///                         },
///                         "name": "complex_tool",
///                         "description": "Tool with complex nested schema",
///                     }],
///                 },
///                 "lambda_arn": example["arn"],
///             },
///         },
///     },
///     name="complex-target",
///     gateway_identifier=example_aws_bedrockagentcore_gateway["gatewayId"])
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
///                     ToolSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs
///                     {
///                         InlinePayloads = new[]
///                         {
///                             new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs
///                             {
///                                 InputSchema = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs
///                                 {
///                                     Properties = new[]
///                                     {
///                                         new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs
///                                         {
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
///                                             Name = "profile",
///                                             Type = "object",
///                                         },
///                                     },
///                                     Type = "object",
///                                 },
///                                 Name = "complex_tool",
///                                 Description = "Tool with complex nested schema",
///                             },
///                         },
///                     },
///                     LambdaArn = example.Arn,
///                 },
///             },
///         },
///         Name = "complex-target",
///         GatewayIdentifier = exampleAwsBedrockagentcoreGateway.GatewayId,
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
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"type": "string",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"properties": map[string]map[string]string{
/// 				"created_at": map[string]string{
/// 					"type": "string",
/// 				},
/// 				"version": map[string]string{
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
/// 			CredentialProviderConfiguration: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationArgs{
/// 				GatewayIamRole: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRoleArgs{},
/// 			},
/// 			TargetConfiguration: &bedrock.AgentcoreGatewayTargetTargetConfigurationArgs{
/// 				Mcp: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpArgs{
/// 					Lambda: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs{
/// 						ToolSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs{
/// 							InlinePayloads: bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArray{
/// 								&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs{
/// 									InputSchema: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs{
/// 										Properties: bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArray{
/// 											&bedrock.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs{
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
/// 												Name: pulumi.String("profile"),
/// 												Type: pulumi.String("object"),
/// 											},
/// 										},
/// 										Type: pulumi.String("object"),
/// 									},
/// 									Name:        pulumi.String("complex_tool"),
/// 									Description: pulumi.String("Tool with complex nested schema"),
/// 								},
/// 							},
/// 						},
/// 						LambdaArn: pulumi.Any(example.Arn),
/// 					},
/// 				},
/// 			},
/// 			Name:              pulumi.String("complex-target"),
/// 			GatewayIdentifier: pulumi.Any(exampleAwsBedrockagentcoreGateway.GatewayId),
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
/// resource "aws_bedrock_agentcoregatewaytarget" "complex_schema" {
///   credential_provider_configuration = {
///     gateway_iam_role = {}
///   }
///   target_configuration = {
///     mcp = {
///       lambda = {
///         tool_schema = {
///           inline_payloads = [{
///             "inputSchema" = {
///               "properties" = [{
///                 "properties" = [{
///                   "name" = "nested_tags"
///                   "type" = "array"
///                   "itemsJson" = jsonencode({
///                     "type" = "string"
///                   })
///                   }, {
///                   "name" = "metadata"
///                   "type" = "object"
///                   "propertiesJson" = jsonencode({
///                     "properties" = {
///                       "created_at" = {
///                         "type" = "string"
///                       }
///                       "version" = {
///                         "type" = "number"
///                       }
///                     }
///                     "required" = ["created_at"]
///                   })
///                 }]
///                 "name" = "profile"
///                 "type" = "object"
///               }]
///               "type" = "object"
///             }
///             "name"        = "complex_tool"
///             "description" = "Tool with complex nested schema"
///           }]
///         }
///         lambda_arn = example.arn
///       }
///     }
///   }
///   name               = "complex-target"
///   gateway_identifier = exampleAwsBedrockagentcoreGateway.gatewayId
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
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyPropertyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var complexSchema = new AgentcoreGatewayTarget("complexSchema", AgentcoreGatewayTargetArgs.builder()
///             .credentialProviderConfiguration(AgentcoreGatewayTargetCredentialProviderConfigurationArgs.builder()
///                 .gatewayIamRole(AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRoleArgs.builder()
///                     .build())
///                 .build())
///             .targetConfiguration(AgentcoreGatewayTargetTargetConfigurationArgs.builder()
///                 .mcp(AgentcoreGatewayTargetTargetConfigurationMcpArgs.builder()
///                     .lambda(AgentcoreGatewayTargetTargetConfigurationMcpLambdaArgs.builder()
///                         .toolSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaArgs.builder()
///                             .inlinePayloads(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadArgs.builder()
///                                 .inputSchema(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaArgs.builder()
///                                     .properties(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchemaPropertyArgs.builder()
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
///                                         .name("profile")
///                                         .type("object")
///                                         .build())
///                                     .type("object")
///                                     .build())
///                                 .name("complex_tool")
///                                 .description("Tool with complex nested schema")
///                                 .build())
///                             .build())
///                         .lambdaArn(example.arn())
///                         .build())
///                     .build())
///                 .build())
///             .name("complex-target")
///             .gatewayIdentifier(exampleAwsBedrockagentcoreGateway.gatewayId())
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
///       credentialProviderConfiguration:
///         gatewayIamRole: {}
///       targetConfiguration:
///         mcp:
///           lambda:
///             toolSchema:
///               inlinePayloads:
///                 - inputSchema:
///                     properties:
///                       - properties:
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
///                         name: profile
///                         type: object
///                     type: object
///                   name: complex_tool
///                   description: Tool with complex nested schema
///             lambdaArn: ${example.arn}
///       name: complex-target
///       gatewayIdentifier: ${exampleAwsBedrockagentcoreGateway.gatewayId}
/// ```
///
///
/// ### MCP Server Target with Header Propagation
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const mcpWithHeaders = new aws.bedrock.AgentcoreGatewayTarget("mcp_with_headers", {
///     targetConfiguration: {
///         mcp: {
///             mcpServer: {
///                 endpoint: "https://example.com/mcp",
///             },
///         },
///     },
///     metadataConfiguration: {
///         allowedRequestHeaders: [
///             "x-correlation-id",
///             "x-tenant-id",
///         ],
///         allowedResponseHeaders: ["x-rate-limit-remaining"],
///         allowedQueryParameters: ["version"],
///     },
///     name: "mcp-target-with-headers",
///     gatewayIdentifier: example.gatewayId,
///     description: "MCP server target with header propagation",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// mcp_with_headers = aws.bedrock.AgentcoreGatewayTarget("mcp_with_headers",
///     target_configuration={
///         "mcp": {
///             "mcp_server": {
///                 "endpoint": "https://example.com/mcp",
///             },
///         },
///     },
///     metadata_configuration={
///         "allowed_request_headers": [
///             "x-correlation-id",
///             "x-tenant-id",
///         ],
///         "allowed_response_headers": ["x-rate-limit-remaining"],
///         "allowed_query_parameters": ["version"],
///     },
///     name="mcp-target-with-headers",
///     gateway_identifier=example["gatewayId"],
///     description="MCP server target with header propagation")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mcpWithHeaders = new Aws.Bedrock.AgentcoreGatewayTarget("mcp_with_headers", new()
///     {
///         TargetConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationArgs
///         {
///             Mcp = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs
///             {
///                 McpServer = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs
///                 {
///                     Endpoint = "https://example.com/mcp",
///                 },
///             },
///         },
///         MetadataConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetMetadataConfigurationArgs
///         {
///             AllowedRequestHeaders = new[]
///             {
///                 "x-correlation-id",
///                 "x-tenant-id",
///             },
///             AllowedResponseHeaders = new[]
///             {
///                 "x-rate-limit-remaining",
///             },
///             AllowedQueryParameters = new[]
///             {
///                 "version",
///             },
///         },
///         Name = "mcp-target-with-headers",
///         GatewayIdentifier = example.GatewayId,
///         Description = "MCP server target with header propagation",
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
/// 		_, err := bedrock.NewAgentcoreGatewayTarget(ctx, "mcp_with_headers", &bedrock.AgentcoreGatewayTargetArgs{
/// 			TargetConfiguration: &bedrock.AgentcoreGatewayTargetTargetConfigurationArgs{
/// 				Mcp: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpArgs{
/// 					McpServer: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs{
/// 						Endpoint: pulumi.String("https://example.com/mcp"),
/// 					},
/// 				},
/// 			},
/// 			MetadataConfiguration: &bedrock.AgentcoreGatewayTargetMetadataConfigurationArgs{
/// 				AllowedRequestHeaders: pulumi.StringArray{
/// 					pulumi.String("x-correlation-id"),
/// 					pulumi.String("x-tenant-id"),
/// 				},
/// 				AllowedResponseHeaders: pulumi.StringArray{
/// 					pulumi.String("x-rate-limit-remaining"),
/// 				},
/// 				AllowedQueryParameters: pulumi.StringArray{
/// 					pulumi.String("version"),
/// 				},
/// 			},
/// 			Name:              pulumi.String("mcp-target-with-headers"),
/// 			GatewayIdentifier: pulumi.Any(example.GatewayId),
/// 			Description:       pulumi.String("MCP server target with header propagation"),
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
/// resource "aws_bedrock_agentcoregatewaytarget" "mcp_with_headers" {
///   target_configuration = {
///     mcp = {
///       mcp_server = {
///         endpoint = "https://example.com/mcp"
///       }
///     }
///   }
///   metadata_configuration = {
///     allowed_request_headers  = ["x-correlation-id", "x-tenant-id"]
///     allowed_response_headers = ["x-rate-limit-remaining"]
///     allowed_query_parameters = ["version"]
///   }
///   name               = "mcp-target-with-headers"
///   gateway_identifier = example.gatewayId
///   description        = "MCP server target with header propagation"
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
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetMetadataConfigurationArgs;
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
///         var mcpWithHeaders = new AgentcoreGatewayTarget("mcpWithHeaders", AgentcoreGatewayTargetArgs.builder()
///             .targetConfiguration(AgentcoreGatewayTargetTargetConfigurationArgs.builder()
///                 .mcp(AgentcoreGatewayTargetTargetConfigurationMcpArgs.builder()
///                     .mcpServer(AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs.builder()
///                         .endpoint("https://example.com/mcp")
///                         .build())
///                     .build())
///                 .build())
///             .metadataConfiguration(AgentcoreGatewayTargetMetadataConfigurationArgs.builder()
///                 .allowedRequestHeaders(
///                     "x-correlation-id",
///                     "x-tenant-id")
///                 .allowedResponseHeaders("x-rate-limit-remaining")
///                 .allowedQueryParameters("version")
///                 .build())
///             .name("mcp-target-with-headers")
///             .gatewayIdentifier(example.gatewayId())
///             .description("MCP server target with header propagation")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mcpWithHeaders:
///     type: aws:bedrock:AgentcoreGatewayTarget
///     name: mcp_with_headers
///     properties:
///       targetConfiguration:
///         mcp:
///           mcpServer:
///             endpoint: https://example.com/mcp
///       metadataConfiguration:
///         allowedRequestHeaders:
///           - x-correlation-id
///           - x-tenant-id
///         allowedResponseHeaders:
///           - x-rate-limit-remaining
///         allowedQueryParameters:
///           - version
///       name: mcp-target-with-headers
///       gatewayIdentifier: ${example.gatewayId}
///       description: MCP server target with header propagation
/// ```
///
///
/// ### HTTP Target Routing to an AgentCore Runtime
///
/// Routes gateway traffic directly to an AgentCore Runtime agent over HTTP, without MCP aggregation. The gateway must not have a `protocolType` set.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreAgentRuntime("example", {
///     agentRuntimeArtifact: {
///         containerConfiguration: {
///             containerUri: "111122223333.dkr.ecr.us-west-2.amazonaws.com/example-runtime:latest",
///         },
///     },
///     networkConfiguration: {
///         networkMode: "PUBLIC",
///     },
///     agentRuntimeName: "example-runtime",
///     roleArn: runtimeRole.arn,
/// });
/// const runtime = new aws.bedrock.AgentcoreGatewayTarget("runtime", {
///     credentialProviderConfiguration: {
///         gatewayIamRole: {},
///     },
///     targetConfiguration: {
///         http: {
///             agentcoreRuntime: {
///                 arn: example.agentRuntimeArn,
///                 qualifier: "DEFAULT",
///             },
///         },
///     },
///     name: "runtime-target",
///     gatewayIdentifier: exampleAwsBedrockagentcoreGateway.gatewayId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreAgentRuntime("example",
///     agent_runtime_artifact={
///         "container_configuration": {
///             "container_uri": "111122223333.dkr.ecr.us-west-2.amazonaws.com/example-runtime:latest",
///         },
///     },
///     network_configuration={
///         "network_mode": "PUBLIC",
///     },
///     agent_runtime_name="example-runtime",
///     role_arn=runtime_role["arn"])
/// runtime = aws.bedrock.AgentcoreGatewayTarget("runtime",
///     credential_provider_configuration={
///         "gateway_iam_role": {},
///     },
///     target_configuration={
///         "http": {
///             "agentcore_runtime": {
///                 "arn": example.agent_runtime_arn,
///                 "qualifier": "DEFAULT",
///             },
///         },
///     },
///     name="runtime-target",
///     gateway_identifier=example_aws_bedrockagentcore_gateway["gatewayId"])
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
///                 ContainerUri = "111122223333.dkr.ecr.us-west-2.amazonaws.com/example-runtime:latest",
///             },
///         },
///         NetworkConfiguration = new Aws.Bedrock.Inputs.AgentcoreAgentRuntimeNetworkConfigurationArgs
///         {
///             NetworkMode = "PUBLIC",
///         },
///         AgentRuntimeName = "example-runtime",
///         RoleArn = runtimeRole.Arn,
///     });
///
///     var runtime = new Aws.Bedrock.AgentcoreGatewayTarget("runtime", new()
///     {
///         CredentialProviderConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetCredentialProviderConfigurationArgs
///         {
///             GatewayIamRole = null,
///         },
///         TargetConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationArgs
///         {
///             Http = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationHttpArgs
///             {
///                 AgentcoreRuntime = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeArgs
///                 {
///                     Arn = example.AgentRuntimeArn,
///                     Qualifier = "DEFAULT",
///                 },
///             },
///         },
///         Name = "runtime-target",
///         GatewayIdentifier = exampleAwsBedrockagentcoreGateway.GatewayId,
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
/// 		example, err := bedrock.NewAgentcoreAgentRuntime(ctx, "example", &bedrock.AgentcoreAgentRuntimeArgs{
/// 			AgentRuntimeArtifact: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactArgs{
/// 				ContainerConfiguration: &bedrock.AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfigurationArgs{
/// 					ContainerUri: pulumi.String("111122223333.dkr.ecr.us-west-2.amazonaws.com/example-runtime:latest"),
/// 				},
/// 			},
/// 			NetworkConfiguration: &bedrock.AgentcoreAgentRuntimeNetworkConfigurationArgs{
/// 				NetworkMode: pulumi.String("PUBLIC"),
/// 			},
/// 			AgentRuntimeName: pulumi.String("example-runtime"),
/// 			RoleArn:          pulumi.Any(runtimeRole.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentcoreGatewayTarget(ctx, "runtime", &bedrock.AgentcoreGatewayTargetArgs{
/// 			CredentialProviderConfiguration: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationArgs{
/// 				GatewayIamRole: &bedrock.AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRoleArgs{},
/// 			},
/// 			TargetConfiguration: &bedrock.AgentcoreGatewayTargetTargetConfigurationArgs{
/// 				Http: &bedrock.AgentcoreGatewayTargetTargetConfigurationHttpArgs{
/// 					AgentcoreRuntime: &bedrock.AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeArgs{
/// 						Arn:       example.AgentRuntimeArn,
/// 						Qualifier: pulumi.String("DEFAULT"),
/// 					},
/// 				},
/// 			},
/// 			Name:              pulumi.String("runtime-target"),
/// 			GatewayIdentifier: pulumi.Any(exampleAwsBedrockagentcoreGateway.GatewayId),
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
///       container_uri = "111122223333.dkr.ecr.us-west-2.amazonaws.com/example-runtime:latest"
///     }
///   }
///   network_configuration = {
///     network_mode = "PUBLIC"
///   }
///   agent_runtime_name = "example-runtime"
///   role_arn           = runtimeRole.arn
/// }
/// resource "aws_bedrock_agentcoregatewaytarget" "runtime" {
///   credential_provider_configuration = {
///     gateway_iam_role = {}
///   }
///   target_configuration = {
///     http = {
///       agentcore_runtime = {
///         arn       = aws_bedrock_agentcoreagentruntime.example.agent_runtime_arn
///         qualifier = "DEFAULT"
///       }
///     }
///   }
///   name               = "runtime-target"
///   gateway_identifier = exampleAwsBedrockagentcoreGateway.gatewayId
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
/// import com.pulumi.aws.bedrock.AgentcoreGatewayTarget;
/// import com.pulumi.aws.bedrock.AgentcoreGatewayTargetArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetCredentialProviderConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRoleArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationHttpArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeArgs;
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
///                     .containerUri("111122223333.dkr.ecr.us-west-2.amazonaws.com/example-runtime:latest")
///                     .build())
///                 .build())
///             .networkConfiguration(AgentcoreAgentRuntimeNetworkConfigurationArgs.builder()
///                 .networkMode("PUBLIC")
///                 .build())
///             .agentRuntimeName("example-runtime")
///             .roleArn(runtimeRole.arn())
///             .build());
///
///         var runtime = new AgentcoreGatewayTarget("runtime", AgentcoreGatewayTargetArgs.builder()
///             .credentialProviderConfiguration(AgentcoreGatewayTargetCredentialProviderConfigurationArgs.builder()
///                 .gatewayIamRole(AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRoleArgs.builder()
///                     .build())
///                 .build())
///             .targetConfiguration(AgentcoreGatewayTargetTargetConfigurationArgs.builder()
///                 .http(AgentcoreGatewayTargetTargetConfigurationHttpArgs.builder()
///                     .agentcoreRuntime(AgentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntimeArgs.builder()
///                         .arn(example.agentRuntimeArn())
///                         .qualifier("DEFAULT")
///                         .build())
///                     .build())
///                 .build())
///             .name("runtime-target")
///             .gatewayIdentifier(exampleAwsBedrockagentcoreGateway.gatewayId())
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
///           containerUri: 111122223333.dkr.ecr.us-west-2.amazonaws.com/example-runtime:latest
///       networkConfiguration:
///         networkMode: PUBLIC
///       agentRuntimeName: example-runtime
///       roleArn: ${runtimeRole.arn}
///   runtime:
///     type: aws:bedrock:AgentcoreGatewayTarget
///     properties:
///       credentialProviderConfiguration:
///         gatewayIamRole: {}
///       targetConfiguration:
///         http:
///           agentcoreRuntime:
///             arn: ${example.agentRuntimeArn}
///             qualifier: DEFAULT
///       name: runtime-target
///       gatewayIdentifier: ${exampleAwsBedrockagentcoreGateway.gatewayId}
/// ```
///
///
/// ### Self-hosted MCP server in a VPC (managed Lattice)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreGatewayTarget("example", {
///     targetConfiguration: {
///         mcp: {
///             mcpServer: {
///                 endpoint: "https://mcp.internal.example.com/mcp",
///             },
///         },
///     },
///     privateEndpoint: {
///         managedVpcResource: {
///             vpcIdentifier: exampleAwsVpc.id,
///             subnetIds: exampleAwsSubnet.map(__item => __item.id),
///             endpointIpAddressType: "IPV4",
///             securityGroupIds: [mcpLattice.id],
///         },
///     },
///     gatewayIdentifier: exampleAwsBedrockagentcoreGateway.gatewayId,
///     name: "my-private-mcp-target",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreGatewayTarget("example",
///     target_configuration={
///         "mcp": {
///             "mcp_server": {
///                 "endpoint": "https://mcp.internal.example.com/mcp",
///             },
///         },
///     },
///     private_endpoint={
///         "managed_vpc_resource": {
///             "vpc_identifier": example_aws_vpc["id"],
///             "subnet_ids": [__item["id"] for __item in example_aws_subnet],
///             "endpoint_ip_address_type": "IPV4",
///             "security_group_ids": [mcp_lattice["id"]],
///         },
///     },
///     gateway_identifier=example_aws_bedrockagentcore_gateway["gatewayId"],
///     name="my-private-mcp-target")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreGatewayTarget("example", new()
///     {
///         TargetConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationArgs
///         {
///             Mcp = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs
///             {
///                 McpServer = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs
///                 {
///                     Endpoint = "https://mcp.internal.example.com/mcp",
///                 },
///             },
///         },
///         PrivateEndpoint = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetPrivateEndpointArgs
///         {
///             ManagedVpcResource = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetPrivateEndpointManagedVpcResourceArgs
///             {
///                 VpcIdentifier = exampleAwsVpc.Id,
///                 SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///                 EndpointIpAddressType = "IPV4",
///                 SecurityGroupIds = new[]
///                 {
///                     mcpLattice.Id,
///                 },
///             },
///         },
///         GatewayIdentifier = exampleAwsBedrockagentcoreGateway.GatewayId,
///         Name = "my-private-mcp-target",
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bedrock.NewAgentcoreGatewayTarget(ctx, "example", &bedrock.AgentcoreGatewayTargetArgs{
/// TargetConfiguration: &bedrock.AgentcoreGatewayTargetTargetConfigurationArgs{
/// Mcp: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpArgs{
/// McpServer: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs{
/// Endpoint: pulumi.String("https://mcp.internal.example.com/mcp"),
/// },
/// },
/// },
/// PrivateEndpoint: &bedrock.AgentcoreGatewayTargetPrivateEndpointArgs{
/// ManagedVpcResource: &bedrock.AgentcoreGatewayTargetPrivateEndpointManagedVpcResourceArgs{
/// VpcIdentifier: pulumi.Any(exampleAwsVpc.Id),
/// SubnetIds: pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:13,31-53)),
/// EndpointIpAddressType: pulumi.String("IPV4"),
/// SecurityGroupIds: pulumi.StringArray{
/// mcpLattice.Id,
/// },
/// },
/// },
/// GatewayIdentifier: pulumi.Any(exampleAwsBedrockagentcoreGateway.GatewayId),
/// Name: pulumi.String("my-private-mcp-target"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// resource "aws_bedrock_agentcoregatewaytarget" "example" {
///   target_configuration = {
///     mcp = {
///       mcp_server = {
///         endpoint = "https://mcp.internal.example.com/mcp"
///       }
///     }
///   }
///   # The MCP server endpoint as seen from inside the VPC.
///   private_endpoint = {
///     managed_vpc_resource = {
///       vpc_identifier           = exampleAwsVpc.id
///       subnet_ids               = exampleAwsSubnet[*].id
///       endpoint_ip_address_type = "IPV4"
///       security_group_ids       = [mcpLattice.id]
///     }
///   }
///   gateway_identifier = exampleAwsBedrockagentcoreGateway.gatewayId
///   name               = "my-private-mcp-target"
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
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetPrivateEndpointArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetPrivateEndpointManagedVpcResourceArgs;
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
///         var example = new AgentcoreGatewayTarget("example", AgentcoreGatewayTargetArgs.builder()
///             .targetConfiguration(AgentcoreGatewayTargetTargetConfigurationArgs.builder()
///                 .mcp(AgentcoreGatewayTargetTargetConfigurationMcpArgs.builder()
///                     .mcpServer(AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs.builder()
///                         .endpoint("https://mcp.internal.example.com/mcp")
///                         .build())
///                     .build())
///                 .build())
///             .privateEndpoint(AgentcoreGatewayTargetPrivateEndpointArgs.builder()
///                 .managedVpcResource(AgentcoreGatewayTargetPrivateEndpointManagedVpcResourceArgs.builder()
///                     .vpcIdentifier(exampleAwsVpc.id())
///                     .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///                     .endpointIpAddressType("IPV4")
///                     .securityGroupIds(mcpLattice.id())
///                     .build())
///                 .build())
///             .gatewayIdentifier(exampleAwsBedrockagentcoreGateway.gatewayId())
///             .name("my-private-mcp-target")
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### Self-hosted MCP server with routing through an internal ALB
///
/// Use `routingDomain` when the MCP server has a private TLS certificate. Place an internal ALB with a public ACM certificate in front of the server and set `routingDomain` to the ALB DNS name.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreGatewayTarget("example", {
///     targetConfiguration: {
///         mcp: {
///             mcpServer: {
///                 endpoint: "https://mcp.example.com/mcp",
///             },
///         },
///     },
///     privateEndpoint: {
///         managedVpcResource: {
///             vpcIdentifier: exampleAwsVpc.id,
///             subnetIds: exampleAwsSubnet.map(__item => __item.id),
///             endpointIpAddressType: "IPV4",
///             routingDomain: mcpAlb.dnsName,
///         },
///     },
///     gatewayIdentifier: exampleAwsBedrockagentcoreGateway.gatewayId,
///     name: "my-private-mcp-via-alb",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreGatewayTarget("example",
///     target_configuration={
///         "mcp": {
///             "mcp_server": {
///                 "endpoint": "https://mcp.example.com/mcp",
///             },
///         },
///     },
///     private_endpoint={
///         "managed_vpc_resource": {
///             "vpc_identifier": example_aws_vpc["id"],
///             "subnet_ids": [__item["id"] for __item in example_aws_subnet],
///             "endpoint_ip_address_type": "IPV4",
///             "routing_domain": mcp_alb["dnsName"],
///         },
///     },
///     gateway_identifier=example_aws_bedrockagentcore_gateway["gatewayId"],
///     name="my-private-mcp-via-alb")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreGatewayTarget("example", new()
///     {
///         TargetConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationArgs
///         {
///             Mcp = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs
///             {
///                 McpServer = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs
///                 {
///                     Endpoint = "https://mcp.example.com/mcp",
///                 },
///             },
///         },
///         PrivateEndpoint = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetPrivateEndpointArgs
///         {
///             ManagedVpcResource = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetPrivateEndpointManagedVpcResourceArgs
///             {
///                 VpcIdentifier = exampleAwsVpc.Id,
///                 SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///                 EndpointIpAddressType = "IPV4",
///                 RoutingDomain = mcpAlb.DnsName,
///             },
///         },
///         GatewayIdentifier = exampleAwsBedrockagentcoreGateway.GatewayId,
///         Name = "my-private-mcp-via-alb",
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bedrock.NewAgentcoreGatewayTarget(ctx, "example", &bedrock.AgentcoreGatewayTargetArgs{
/// TargetConfiguration: &bedrock.AgentcoreGatewayTargetTargetConfigurationArgs{
/// Mcp: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpArgs{
/// McpServer: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs{
/// Endpoint: pulumi.String("https://mcp.example.com/mcp"),
/// },
/// },
/// },
/// PrivateEndpoint: &bedrock.AgentcoreGatewayTargetPrivateEndpointArgs{
/// ManagedVpcResource: &bedrock.AgentcoreGatewayTargetPrivateEndpointManagedVpcResourceArgs{
/// VpcIdentifier: pulumi.Any(exampleAwsVpc.Id),
/// SubnetIds: pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:13,31-53)),
/// EndpointIpAddressType: pulumi.String("IPV4"),
/// RoutingDomain: pulumi.Any(mcpAlb.DnsName),
/// },
/// },
/// GatewayIdentifier: pulumi.Any(exampleAwsBedrockagentcoreGateway.GatewayId),
/// Name: pulumi.String("my-private-mcp-via-alb"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// resource "aws_bedrock_agentcoregatewaytarget" "example" {
///   target_configuration = {
///     mcp = {
///       mcp_server = {
///         endpoint = "https://mcp.example.com/mcp"
///       }
///     }
///   }
///   # Must match the domain on the ALB's ACM certificate.
///   private_endpoint = {
///     managed_vpc_resource = {
///       vpc_identifier           = exampleAwsVpc.id
///       subnet_ids               = exampleAwsSubnet[*].id
///       endpoint_ip_address_type = "IPV4"
///       routing_domain           = mcpAlb.dnsName
///     }
///   }
///   # Route through the internal ALB instead of the actual MCP server domain.
///   gateway_identifier = exampleAwsBedrockagentcoreGateway.gatewayId
///   name               = "my-private-mcp-via-alb"
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
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetPrivateEndpointArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetPrivateEndpointManagedVpcResourceArgs;
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
///         var example = new AgentcoreGatewayTarget("example", AgentcoreGatewayTargetArgs.builder()
///             .targetConfiguration(AgentcoreGatewayTargetTargetConfigurationArgs.builder()
///                 .mcp(AgentcoreGatewayTargetTargetConfigurationMcpArgs.builder()
///                     .mcpServer(AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs.builder()
///                         .endpoint("https://mcp.example.com/mcp")
///                         .build())
///                     .build())
///                 .build())
///             .privateEndpoint(AgentcoreGatewayTargetPrivateEndpointArgs.builder()
///                 .managedVpcResource(AgentcoreGatewayTargetPrivateEndpointManagedVpcResourceArgs.builder()
///                     .vpcIdentifier(exampleAwsVpc.id())
///                     .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///                     .endpointIpAddressType("IPV4")
///                     .routingDomain(mcpAlb.dnsName())
///                     .build())
///                 .build())
///             .gatewayIdentifier(exampleAwsBedrockagentcoreGateway.gatewayId())
///             .name("my-private-mcp-via-alb")
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### Self-managed VPC Lattice resource configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreGatewayTarget("example", {
///     targetConfiguration: {
///         mcp: {
///             mcpServer: {
///                 endpoint: "https://mcp.internal.example.com/mcp",
///             },
///         },
///     },
///     privateEndpoint: {
///         selfManagedLatticeResource: {
///             resourceConfigurationIdentifier: mcp.arn,
///         },
///     },
///     gatewayIdentifier: exampleAwsBedrockagentcoreGateway.gatewayId,
///     name: "my-private-mcp-self-managed",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreGatewayTarget("example",
///     target_configuration={
///         "mcp": {
///             "mcp_server": {
///                 "endpoint": "https://mcp.internal.example.com/mcp",
///             },
///         },
///     },
///     private_endpoint={
///         "self_managed_lattice_resource": {
///             "resource_configuration_identifier": mcp["arn"],
///         },
///     },
///     gateway_identifier=example_aws_bedrockagentcore_gateway["gatewayId"],
///     name="my-private-mcp-self-managed")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreGatewayTarget("example", new()
///     {
///         TargetConfiguration = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationArgs
///         {
///             Mcp = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs
///             {
///                 McpServer = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs
///                 {
///                     Endpoint = "https://mcp.internal.example.com/mcp",
///                 },
///             },
///         },
///         PrivateEndpoint = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetPrivateEndpointArgs
///         {
///             SelfManagedLatticeResource = new Aws.Bedrock.Inputs.AgentcoreGatewayTargetPrivateEndpointSelfManagedLatticeResourceArgs
///             {
///                 ResourceConfigurationIdentifier = mcp.Arn,
///             },
///         },
///         GatewayIdentifier = exampleAwsBedrockagentcoreGateway.GatewayId,
///         Name = "my-private-mcp-self-managed",
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
/// 		_, err := bedrock.NewAgentcoreGatewayTarget(ctx, "example", &bedrock.AgentcoreGatewayTargetArgs{
/// 			TargetConfiguration: &bedrock.AgentcoreGatewayTargetTargetConfigurationArgs{
/// 				Mcp: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpArgs{
/// 					McpServer: &bedrock.AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs{
/// 						Endpoint: pulumi.String("https://mcp.internal.example.com/mcp"),
/// 					},
/// 				},
/// 			},
/// 			PrivateEndpoint: &bedrock.AgentcoreGatewayTargetPrivateEndpointArgs{
/// 				SelfManagedLatticeResource: &bedrock.AgentcoreGatewayTargetPrivateEndpointSelfManagedLatticeResourceArgs{
/// 					ResourceConfigurationIdentifier: pulumi.Any(mcp.Arn),
/// 				},
/// 			},
/// 			GatewayIdentifier: pulumi.Any(exampleAwsBedrockagentcoreGateway.GatewayId),
/// 			Name:              pulumi.String("my-private-mcp-self-managed"),
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
/// resource "aws_bedrock_agentcoregatewaytarget" "example" {
///   target_configuration = {
///     mcp = {
///       mcp_server = {
///         endpoint = "https://mcp.internal.example.com/mcp"
///       }
///     }
///   }
///   private_endpoint = {
///     self_managed_lattice_resource = {
///       resource_configuration_identifier = mcp.arn
///     }
///   }
///   gateway_identifier = exampleAwsBedrockagentcoreGateway.gatewayId
///   name               = "my-private-mcp-self-managed"
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
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetPrivateEndpointArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayTargetPrivateEndpointSelfManagedLatticeResourceArgs;
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
///         var example = new AgentcoreGatewayTarget("example", AgentcoreGatewayTargetArgs.builder()
///             .targetConfiguration(AgentcoreGatewayTargetTargetConfigurationArgs.builder()
///                 .mcp(AgentcoreGatewayTargetTargetConfigurationMcpArgs.builder()
///                     .mcpServer(AgentcoreGatewayTargetTargetConfigurationMcpMcpServerArgs.builder()
///                         .endpoint("https://mcp.internal.example.com/mcp")
///                         .build())
///                     .build())
///                 .build())
///             .privateEndpoint(AgentcoreGatewayTargetPrivateEndpointArgs.builder()
///                 .selfManagedLatticeResource(AgentcoreGatewayTargetPrivateEndpointSelfManagedLatticeResourceArgs.builder()
///                     .resourceConfigurationIdentifier(mcp.arn())
///                     .build())
///                 .build())
///             .gatewayIdentifier(exampleAwsBedrockagentcoreGateway.gatewayId())
///             .name("my-private-mcp-self-managed")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreGatewayTarget
///     properties:
///       targetConfiguration:
///         mcp:
///           mcpServer:
///             endpoint: https://mcp.internal.example.com/mcp
///       privateEndpoint:
///         selfManagedLatticeResource:
///           resourceConfigurationIdentifier: ${mcp.arn}
///       gatewayIdentifier: ${exampleAwsBedrockagentcoreGateway.gatewayId}
///       name: my-private-mcp-self-managed
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
  /// Configuration for authenticating requests to the target. Required when using `lambda`, `openApiSchema` and `smithyModel` in `mcp` block. If using `mcpServer` in `mcp` block with no authorization, it should not be specified. See `credentialProviderConfiguration` below.
  late final pulumi.Output<AgentcoreGatewayTargetCredentialProviderConfiguration?> credentialProviderConfiguration;
  /// Description of the gateway target.
  late final pulumi.Output<String?> description;
  /// Identifier of the gateway that this target belongs to.
  late final pulumi.Output<String> gatewayIdentifier;
  /// Configuration for HTTP header and query parameter propagation between the gateway and target servers. See `metadataConfiguration` below.
  late final pulumi.Output<AgentcoreGatewayTargetMetadataConfiguration?> metadataConfiguration;
  /// Name of the gateway target.
  late final pulumi.Output<String> name;
  /// Configuration for private connectivity from AgentCore Gateway to a resource inside your VPC. Traffic is routed through Amazon VPC Lattice and never traverses the public internet. See `privateEndpoint` below.
  late final pulumi.Output<AgentcoreGatewayTargetPrivateEndpoint?> privateEndpoint;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration for the target endpoint. See `targetConfiguration` below.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    credentialProviderConfiguration = registerOutput<AgentcoreGatewayTargetCredentialProviderConfiguration?>('credentialProviderConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayTargetCredentialProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    gatewayIdentifier = registerOutput<String>('gatewayIdentifier');
    metadataConfiguration = registerOutput<AgentcoreGatewayTargetMetadataConfiguration?>('metadataConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayTargetMetadataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<AgentcoreGatewayTargetPrivateEndpoint?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayTargetPrivateEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    targetConfiguration = registerOutput<AgentcoreGatewayTargetTargetConfiguration>('targetConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayTargetTargetConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetId = registerOutput<String>('targetId');
    timeouts = registerOutput<AgentcoreGatewayTargetTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayTargetTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AgentcoreGatewayTarget] resource's state with the given [name] and [id].
  static AgentcoreGatewayTarget get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreGatewayTargetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentcoreGatewayTarget._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentcoreGatewayTarget._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreGatewayTarget:AgentcoreGatewayTarget',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    credentialProviderConfiguration = registerOutput<AgentcoreGatewayTargetCredentialProviderConfiguration?>('credentialProviderConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayTargetCredentialProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    gatewayIdentifier = registerOutput<String>('gatewayIdentifier');
    metadataConfiguration = registerOutput<AgentcoreGatewayTargetMetadataConfiguration?>('metadataConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayTargetMetadataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<AgentcoreGatewayTargetPrivateEndpoint?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayTargetPrivateEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    targetConfiguration = registerOutput<AgentcoreGatewayTargetTargetConfiguration>('targetConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayTargetTargetConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetId = registerOutput<String>('targetId');
    timeouts = registerOutput<AgentcoreGatewayTargetTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayTargetTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AgentcoreGatewayTarget] resource.
  AgentcoreGatewayTarget.reference(String urn)
    : super(
        'aws:bedrock/agentcoreGatewayTarget:AgentcoreGatewayTarget',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    credentialProviderConfiguration = registerOutput<AgentcoreGatewayTargetCredentialProviderConfiguration?>('credentialProviderConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayTargetCredentialProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    gatewayIdentifier = registerOutput<String>('gatewayIdentifier');
    metadataConfiguration = registerOutput<AgentcoreGatewayTargetMetadataConfiguration?>('metadataConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayTargetMetadataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<AgentcoreGatewayTargetPrivateEndpoint?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayTargetPrivateEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    targetConfiguration = registerOutput<AgentcoreGatewayTargetTargetConfiguration>('targetConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayTargetTargetConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetId = registerOutput<String>('targetId');
    timeouts = registerOutput<AgentcoreGatewayTargetTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayTargetTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
