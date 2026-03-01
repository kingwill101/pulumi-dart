import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_api_explorer_api_mcp_server_additional_api_description.dart';
import 'open_api_explorer_api_mcp_server_api.dart';
import 'open_api_explorer_api_mcp_server_args.dart';
import 'open_api_explorer_api_mcp_server_prompt.dart';
import 'open_api_explorer_api_mcp_server_state.dart';
import 'open_api_explorer_api_mcp_server_terraform_tool.dart';

/// Provides a Open Api Explorer Api Mcp Server resource.
///
/// API MCP Server.
///
/// For information about Open Api Explorer Api Mcp Server and how to use it, see [What is Api Mcp Server](https://next.api.alibabacloud.com/document/OpenAPIExplorer/2024-11-30/CreateApiMcpServer).
///
/// > **NOTE:** Available since v1.266.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.OpenApiExplorerApiMcpServer("default", {
///     systemTools: ["FetchRamActionDetails"],
///     description: "Create",
///     prompts: [
///         {
///             description: "Obtain user customization information description",
///             content: "Prompt body,{{name}}",
///             arguments: [{
///                 description: "Name information",
///                 required: true,
///                 name: "name",
///             }],
///             name: "Obtain user customization information",
///         },
///         {
///             description: "Obtain user customization information description",
///             content: "Prompt text, {{name }}, {{age }}, {{description}}",
///             arguments: [
///                 {
///                     description: "Name information",
///                     required: true,
///                     name: "name",
///                 },
///                 {
///                     description: "Age information",
///                     required: true,
///                     name: "age",
///                 },
///                 {
///                     description: "Description Information",
///                     required: true,
///                     name: "description",
///                 },
///             ],
///             name: "Obtain user customization information 1",
///         },
///     ],
///     oauthClientId: "123456",
///     apis: [
///         {
///             apiVersion: "2014-05-26",
///             product: "Ecs",
///             selectors: [
///                 "DescribeAvailableResource",
///                 "DescribeRegions",
///                 "DescribeZones",
///             ],
///         },
///         {
///             apiVersion: "2017-03-21",
///             product: "vod",
///             selectors: ["CreateUploadVideo"],
///         },
///         {
///             apiVersion: "2014-05-15",
///             product: "Slb",
///             selectors: ["DescribeAvailableResource"],
///         },
///     ],
///     instructions: "Describes the role of the entire MCP Server",
///     additionalApiDescriptions: [
///         {
///             apiVersion: "2014-05-26",
///             enableOutputSchema: true,
///             apiName: "DescribeAvailableResource",
///             constParameters: [
///                 {
///                     value: "cn-hangzhou",
///                     key: "x_mcp_region_id",
///                 },
///                 {
///                     value: "B1",
///                     key: "a1",
///                 },
///                 {
///                     value: "b2",
///                     key: "a2",
///                 },
///             ],
///             apiOverrideJson: JSON.stringify({
///                 summary: "This operation supports querying the list of instances based on different request conditions and associating the query instance details. ",
///             }),
///             product: "Ecs",
///             executeCliCommand: false,
///         },
///         {
///             apiVersion: "2014-05-26",
///             enableOutputSchema: true,
///             apiName: "DescribeRegions",
///             product: "Ecs",
///             executeCliCommand: true,
///         },
///         {
///             apiVersion: "2014-05-26",
///             enableOutputSchema: true,
///             apiName: "DescribeZones",
///             product: "Ecs",
///             executeCliCommand: true,
///         },
///     ],
///     vpcWhitelists: [
///         "vpc-examplea",
///         "vpc-exampleb",
///         "vpc-examplec",
///     ],
///     name: "my-name",
///     language: "ZH_CN",
///     enableAssumeRole: true,
///     assumeRoleExtraPolicy: JSON.stringify({
///         Version: "1",
///         Statement: [{
///             Effect: "Allow",
///             Action: [
///                 "ecs:Describe*",
///                 "vpc:Describe*",
///                 "vpc:List*",
///             ],
///             Resource: "*",
///         }],
///     }),
///     terraformTools: [
///         {
///             description: "Terraform as tool example",
///             async: true,
///             destroyPolicy: "NEVER",
///             code: `variable \\"name\\" {
///   default = \\"terraform-example\\"
/// }
///
/// provider \\"alicloud\\" {
///   region = \\"cn-beijing\\"
/// }
///
/// resource \\"alicloud_vpc\\" \\"default\\" {
///   ipv6_isp    = \\"BGP\\"
///   description = \\"example\\"
///   cidr_block  = \\"10.0.0.0/8\\"
///   vpc_name    = var.name
///   enable_ipv6 = true
/// }
/// `,
///             name: "tfexample",
///         },
///         {
///             description: "Terraform as tool example",
///             async: true,
///             destroyPolicy: "NEVER",
///             code: `variable \\"name\\" {
///   default = \\"terraform-example\\"
/// }
///
/// provider \\"alicloud\\" {
///   region = \\"cn-beijing\\"
/// }
///
/// resource \\"alicloud_vpc\\" \\"default\\" {
///   ipv6_isp    = \\"BGP\\"
///   description = \\"example\\"
///   cidr_block  = \\"10.0.0.0/8\\"
///   vpc_name    = var.name
///   enable_ipv6 = true
/// }
/// `,
///             name: "tfexample2",
///         },
///         {
///             description: "Terraform as tool example",
///             async: true,
///             destroyPolicy: "NEVER",
///             code: `variable \\"name\\" {
///   default = \\"terraform-example\\"
/// }
///
/// provider \\"alicloud\\" {
///   region = \\"cn-beijing\\"
/// }
///
/// resource \\"alicloud_vpc\\" \\"default\\" {
///   ipv6_isp    = \\"BGP\\"
///   description = \\"example\\"
///   cidr_block  = \\"10.0.0.0/8\\"
///   vpc_name    = var.name
///   enable_ipv6 = true
/// }
/// `,
///             name: "tfexample3",
///         },
///     ],
///     assumeRoleName: "default-role",
///     publicAccess: "on",
///     enableCustomVpcWhitelist: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.OpenApiExplorerApiMcpServer("default",
///     system_tools=["FetchRamActionDetails"],
///     description="Create",
///     prompts=[
///         {
///             "description": "Obtain user customization information description",
///             "content": "Prompt body,{{name}}",
///             "arguments": [{
///                 "description": "Name information",
///                 "required": True,
///                 "name": "name",
///             }],
///             "name": "Obtain user customization information",
///         },
///         {
///             "description": "Obtain user customization information description",
///             "content": "Prompt text, {{name }}, {{age }}, {{description}}",
///             "arguments": [
///                 {
///                     "description": "Name information",
///                     "required": True,
///                     "name": "name",
///                 },
///                 {
///                     "description": "Age information",
///                     "required": True,
///                     "name": "age",
///                 },
///                 {
///                     "description": "Description Information",
///                     "required": True,
///                     "name": "description",
///                 },
///             ],
///             "name": "Obtain user customization information 1",
///         },
///     ],
///     oauth_client_id="123456",
///     apis=[
///         {
///             "api_version": "2014-05-26",
///             "product": "Ecs",
///             "selectors": [
///                 "DescribeAvailableResource",
///                 "DescribeRegions",
///                 "DescribeZones",
///             ],
///         },
///         {
///             "api_version": "2017-03-21",
///             "product": "vod",
///             "selectors": ["CreateUploadVideo"],
///         },
///         {
///             "api_version": "2014-05-15",
///             "product": "Slb",
///             "selectors": ["DescribeAvailableResource"],
///         },
///     ],
///     instructions="Describes the role of the entire MCP Server",
///     additional_api_descriptions=[
///         {
///             "api_version": "2014-05-26",
///             "enable_output_schema": True,
///             "api_name": "DescribeAvailableResource",
///             "const_parameters": [
///                 {
///                     "value": "cn-hangzhou",
///                     "key": "x_mcp_region_id",
///                 },
///                 {
///                     "value": "B1",
///                     "key": "a1",
///                 },
///                 {
///                     "value": "b2",
///                     "key": "a2",
///                 },
///             ],
///             "api_override_json": json.dumps({
///                 "summary": "This operation supports querying the list of instances based on different request conditions and associating the query instance details. ",
///             }),
///             "product": "Ecs",
///             "execute_cli_command": False,
///         },
///         {
///             "api_version": "2014-05-26",
///             "enable_output_schema": True,
///             "api_name": "DescribeRegions",
///             "product": "Ecs",
///             "execute_cli_command": True,
///         },
///         {
///             "api_version": "2014-05-26",
///             "enable_output_schema": True,
///             "api_name": "DescribeZones",
///             "product": "Ecs",
///             "execute_cli_command": True,
///         },
///     ],
///     vpc_whitelists=[
///         "vpc-examplea",
///         "vpc-exampleb",
///         "vpc-examplec",
///     ],
///     name="my-name",
///     language="ZH_CN",
///     enable_assume_role=True,
///     assume_role_extra_policy=json.dumps({
///         "Version": "1",
///         "Statement": [{
///             "Effect": "Allow",
///             "Action": [
///                 "ecs:Describe*",
///                 "vpc:Describe*",
///                 "vpc:List*",
///             ],
///             "Resource": "*",
///         }],
///     }),
///     terraform_tools=[
///         {
///             "description": "Terraform as tool example",
///             "async_": True,
///             "destroy_policy": "NEVER",
///             "code": """variable \"name\" {
///   default = \"terraform-example\"
/// }
///
/// provider \"alicloud\" {
///   region = \"cn-beijing\"
/// }
///
/// resource \"alicloud_vpc\" \"default\" {
///   ipv6_isp    = \"BGP\"
///   description = \"example\"
///   cidr_block  = \"10.0.0.0/8\"
///   vpc_name    = var.name
///   enable_ipv6 = true
/// }
/// """,
///             "name": "tfexample",
///         },
///         {
///             "description": "Terraform as tool example",
///             "async_": True,
///             "destroy_policy": "NEVER",
///             "code": """variable \"name\" {
///   default = \"terraform-example\"
/// }
///
/// provider \"alicloud\" {
///   region = \"cn-beijing\"
/// }
///
/// resource \"alicloud_vpc\" \"default\" {
///   ipv6_isp    = \"BGP\"
///   description = \"example\"
///   cidr_block  = \"10.0.0.0/8\"
///   vpc_name    = var.name
///   enable_ipv6 = true
/// }
/// """,
///             "name": "tfexample2",
///         },
///         {
///             "description": "Terraform as tool example",
///             "async_": True,
///             "destroy_policy": "NEVER",
///             "code": """variable \"name\" {
///   default = \"terraform-example\"
/// }
///
/// provider \"alicloud\" {
///   region = \"cn-beijing\"
/// }
///
/// resource \"alicloud_vpc\" \"default\" {
///   ipv6_isp    = \"BGP\"
///   description = \"example\"
///   cidr_block  = \"10.0.0.0/8\"
///   vpc_name    = var.name
///   enable_ipv6 = true
/// }
/// """,
///             "name": "tfexample3",
///         },
///     ],
///     assume_role_name="default-role",
///     public_access="on",
///     enable_custom_vpc_whitelist=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.OpenApiExplorerApiMcpServer("default", new()
///     {
///         SystemTools = new[]
///         {
///             "FetchRamActionDetails",
///         },
///         Description = "Create",
///         Prompts = new[]
///         {
///             new AliCloud.Inputs.OpenApiExplorerApiMcpServerPromptArgs
///             {
///                 Description = "Obtain user customization information description",
///                 Content = "Prompt body,{{name}}",
///                 Arguments = new[]
///                 {
///                     new AliCloud.Inputs.OpenApiExplorerApiMcpServerPromptArgumentArgs
///                     {
///                         Description = "Name information",
///                         Required = true,
///                         Name = "name",
///                     },
///                 },
///                 Name = "Obtain user customization information",
///             },
///             new AliCloud.Inputs.OpenApiExplorerApiMcpServerPromptArgs
///             {
///                 Description = "Obtain user customization information description",
///                 Content = "Prompt text, {{name }}, {{age }}, {{description}}",
///                 Arguments = new[]
///                 {
///                     new AliCloud.Inputs.OpenApiExplorerApiMcpServerPromptArgumentArgs
///                     {
///                         Description = "Name information",
///                         Required = true,
///                         Name = "name",
///                     },
///                     new AliCloud.Inputs.OpenApiExplorerApiMcpServerPromptArgumentArgs
///                     {
///                         Description = "Age information",
///                         Required = true,
///                         Name = "age",
///                     },
///                     new AliCloud.Inputs.OpenApiExplorerApiMcpServerPromptArgumentArgs
///                     {
///                         Description = "Description Information",
///                         Required = true,
///                         Name = "description",
///                     },
///                 },
///                 Name = "Obtain user customization information 1",
///             },
///         },
///         OauthClientId = "123456",
///         Apis = new[]
///         {
///             new AliCloud.Inputs.OpenApiExplorerApiMcpServerApiArgs
///             {
///                 ApiVersion = "2014-05-26",
///                 Product = "Ecs",
///                 Selectors = new[]
///                 {
///                     "DescribeAvailableResource",
///                     "DescribeRegions",
///                     "DescribeZones",
///                 },
///             },
///             new AliCloud.Inputs.OpenApiExplorerApiMcpServerApiArgs
///             {
///                 ApiVersion = "2017-03-21",
///                 Product = "vod",
///                 Selectors = new[]
///                 {
///                     "CreateUploadVideo",
///                 },
///             },
///             new AliCloud.Inputs.OpenApiExplorerApiMcpServerApiArgs
///             {
///                 ApiVersion = "2014-05-15",
///                 Product = "Slb",
///                 Selectors = new[]
///                 {
///                     "DescribeAvailableResource",
///                 },
///             },
///         },
///         Instructions = "Describes the role of the entire MCP Server",
///         AdditionalApiDescriptions = new[]
///         {
///             new AliCloud.Inputs.OpenApiExplorerApiMcpServerAdditionalApiDescriptionArgs
///             {
///                 ApiVersion = "2014-05-26",
///                 EnableOutputSchema = true,
///                 ApiName = "DescribeAvailableResource",
///                 ConstParameters = new[]
///                 {
///                     new AliCloud.Inputs.OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameterArgs
///                     {
///                         Value = "cn-hangzhou",
///                         Key = "x_mcp_region_id",
///                     },
///                     new AliCloud.Inputs.OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameterArgs
///                     {
///                         Value = "B1",
///                         Key = "a1",
///                     },
///                     new AliCloud.Inputs.OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameterArgs
///                     {
///                         Value = "b2",
///                         Key = "a2",
///                     },
///                 },
///                 ApiOverrideJson = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["summary"] = "This operation supports querying the list of instances based on different request conditions and associating the query instance details. ",
///                 }),
///                 Product = "Ecs",
///                 ExecuteCliCommand = false,
///             },
///             new AliCloud.Inputs.OpenApiExplorerApiMcpServerAdditionalApiDescriptionArgs
///             {
///                 ApiVersion = "2014-05-26",
///                 EnableOutputSchema = true,
///                 ApiName = "DescribeRegions",
///                 Product = "Ecs",
///                 ExecuteCliCommand = true,
///             },
///             new AliCloud.Inputs.OpenApiExplorerApiMcpServerAdditionalApiDescriptionArgs
///             {
///                 ApiVersion = "2014-05-26",
///                 EnableOutputSchema = true,
///                 ApiName = "DescribeZones",
///                 Product = "Ecs",
///                 ExecuteCliCommand = true,
///             },
///         },
///         VpcWhitelists = new[]
///         {
///             "vpc-examplea",
///             "vpc-exampleb",
///             "vpc-examplec",
///         },
///         Name = "my-name",
///         Language = "ZH_CN",
///         EnableAssumeRole = true,
///         AssumeRoleExtraPolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "1",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Action"] = new[]
///                     {
///                         "ecs:Describe*",
///                         "vpc:Describe*",
///                         "vpc:List*",
///                     },
///                     ["Resource"] = "*",
///                 },
///             },
///         }),
///         TerraformTools = new[]
///         {
///             new AliCloud.Inputs.OpenApiExplorerApiMcpServerTerraformToolArgs
///             {
///                 Description = "Terraform as tool example",
///                 Async = true,
///                 DestroyPolicy = "NEVER",
///                 Code = @"variable \""name\"" {
///   default = \""terraform-example\""
/// }
///
/// provider \""alicloud\"" {
///   region = \""cn-beijing\""
/// }
///
/// resource \""alicloud_vpc\"" \""default\"" {
///   ipv6_isp    = \""BGP\""
///   description = \""example\""
///   cidr_block  = \""10.0.0.0/8\""
///   vpc_name    = var.name
///   enable_ipv6 = true
/// }
/// ",
///                 Name = "tfexample",
///             },
///             new AliCloud.Inputs.OpenApiExplorerApiMcpServerTerraformToolArgs
///             {
///                 Description = "Terraform as tool example",
///                 Async = true,
///                 DestroyPolicy = "NEVER",
///                 Code = @"variable \""name\"" {
///   default = \""terraform-example\""
/// }
///
/// provider \""alicloud\"" {
///   region = \""cn-beijing\""
/// }
///
/// resource \""alicloud_vpc\"" \""default\"" {
///   ipv6_isp    = \""BGP\""
///   description = \""example\""
///   cidr_block  = \""10.0.0.0/8\""
///   vpc_name    = var.name
///   enable_ipv6 = true
/// }
/// ",
///                 Name = "tfexample2",
///             },
///             new AliCloud.Inputs.OpenApiExplorerApiMcpServerTerraformToolArgs
///             {
///                 Description = "Terraform as tool example",
///                 Async = true,
///                 DestroyPolicy = "NEVER",
///                 Code = @"variable \""name\"" {
///   default = \""terraform-example\""
/// }
///
/// provider \""alicloud\"" {
///   region = \""cn-beijing\""
/// }
///
/// resource \""alicloud_vpc\"" \""default\"" {
///   ipv6_isp    = \""BGP\""
///   description = \""example\""
///   cidr_block  = \""10.0.0.0/8\""
///   vpc_name    = var.name
///   enable_ipv6 = true
/// }
/// ",
///                 Name = "tfexample3",
///             },
///         },
///         AssumeRoleName = "default-role",
///         PublicAccess = "on",
///         EnableCustomVpcWhitelist = true,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"summary": "This operation supports querying the list of instances based on different request conditions and associating the query instance details. ",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"Version": "1",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Effect": "Allow",
/// 					"Action": []string{
/// 						"ecs:Describe*",
/// 						"vpc:Describe*",
/// 						"vpc:List*",
/// 					},
/// 					"Resource": "*",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = alicloud.NewOpenApiExplorerApiMcpServer(ctx, "default", &alicloud.OpenApiExplorerApiMcpServerArgs{
/// 			SystemTools: pulumi.StringArray{
/// 				pulumi.String("FetchRamActionDetails"),
/// 			},
/// 			Description: pulumi.String("Create"),
/// 			Prompts: alicloud.OpenApiExplorerApiMcpServerPromptArray{
/// 				&alicloud.OpenApiExplorerApiMcpServerPromptArgs{
/// 					Description: pulumi.String("Obtain user customization information description"),
/// 					Content:     pulumi.String("Prompt body,{{name}}"),
/// 					Arguments: alicloud.OpenApiExplorerApiMcpServerPromptArgumentArray{
/// 						&alicloud.OpenApiExplorerApiMcpServerPromptArgumentArgs{
/// 							Description: pulumi.String("Name information"),
/// 							Required:    pulumi.Bool(true),
/// 							Name:        pulumi.String("name"),
/// 						},
/// 					},
/// 					Name: pulumi.String("Obtain user customization information"),
/// 				},
/// 				&alicloud.OpenApiExplorerApiMcpServerPromptArgs{
/// 					Description: pulumi.String("Obtain user customization information description"),
/// 					Content:     pulumi.String("Prompt text, {{name }}, {{age }}, {{description}}"),
/// 					Arguments: alicloud.OpenApiExplorerApiMcpServerPromptArgumentArray{
/// 						&alicloud.OpenApiExplorerApiMcpServerPromptArgumentArgs{
/// 							Description: pulumi.String("Name information"),
/// 							Required:    pulumi.Bool(true),
/// 							Name:        pulumi.String("name"),
/// 						},
/// 						&alicloud.OpenApiExplorerApiMcpServerPromptArgumentArgs{
/// 							Description: pulumi.String("Age information"),
/// 							Required:    pulumi.Bool(true),
/// 							Name:        pulumi.String("age"),
/// 						},
/// 						&alicloud.OpenApiExplorerApiMcpServerPromptArgumentArgs{
/// 							Description: pulumi.String("Description Information"),
/// 							Required:    pulumi.Bool(true),
/// 							Name:        pulumi.String("description"),
/// 						},
/// 					},
/// 					Name: pulumi.String("Obtain user customization information 1"),
/// 				},
/// 			},
/// 			OauthClientId: pulumi.String("123456"),
/// 			Apis: alicloud.OpenApiExplorerApiMcpServerApiArray{
/// 				&alicloud.OpenApiExplorerApiMcpServerApiArgs{
/// 					ApiVersion: pulumi.String("2014-05-26"),
/// 					Product:    pulumi.String("Ecs"),
/// 					Selectors: pulumi.StringArray{
/// 						pulumi.String("DescribeAvailableResource"),
/// 						pulumi.String("DescribeRegions"),
/// 						pulumi.String("DescribeZones"),
/// 					},
/// 				},
/// 				&alicloud.OpenApiExplorerApiMcpServerApiArgs{
/// 					ApiVersion: pulumi.String("2017-03-21"),
/// 					Product:    pulumi.String("vod"),
/// 					Selectors: pulumi.StringArray{
/// 						pulumi.String("CreateUploadVideo"),
/// 					},
/// 				},
/// 				&alicloud.OpenApiExplorerApiMcpServerApiArgs{
/// 					ApiVersion: pulumi.String("2014-05-15"),
/// 					Product:    pulumi.String("Slb"),
/// 					Selectors: pulumi.StringArray{
/// 						pulumi.String("DescribeAvailableResource"),
/// 					},
/// 				},
/// 			},
/// 			Instructions: pulumi.String("Describes the role of the entire MCP Server"),
/// 			AdditionalApiDescriptions: alicloud.OpenApiExplorerApiMcpServerAdditionalApiDescriptionArray{
/// 				&alicloud.OpenApiExplorerApiMcpServerAdditionalApiDescriptionArgs{
/// 					ApiVersion:         pulumi.String("2014-05-26"),
/// 					EnableOutputSchema: pulumi.Bool(true),
/// 					ApiName:            pulumi.String("DescribeAvailableResource"),
/// 					ConstParameters: alicloud.OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameterArray{
/// 						&alicloud.OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameterArgs{
/// 							Value: pulumi.String("cn-hangzhou"),
/// 							Key:   pulumi.String("x_mcp_region_id"),
/// 						},
/// 						&alicloud.OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameterArgs{
/// 							Value: pulumi.String("B1"),
/// 							Key:   pulumi.String("a1"),
/// 						},
/// 						&alicloud.OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameterArgs{
/// 							Value: pulumi.String("b2"),
/// 							Key:   pulumi.String("a2"),
/// 						},
/// 					},
/// 					ApiOverrideJson:   pulumi.String(json0),
/// 					Product:           pulumi.String("Ecs"),
/// 					ExecuteCliCommand: pulumi.Bool(false),
/// 				},
/// 				&alicloud.OpenApiExplorerApiMcpServerAdditionalApiDescriptionArgs{
/// 					ApiVersion:         pulumi.String("2014-05-26"),
/// 					EnableOutputSchema: pulumi.Bool(true),
/// 					ApiName:            pulumi.String("DescribeRegions"),
/// 					Product:            pulumi.String("Ecs"),
/// 					ExecuteCliCommand:  pulumi.Bool(true),
/// 				},
/// 				&alicloud.OpenApiExplorerApiMcpServerAdditionalApiDescriptionArgs{
/// 					ApiVersion:         pulumi.String("2014-05-26"),
/// 					EnableOutputSchema: pulumi.Bool(true),
/// 					ApiName:            pulumi.String("DescribeZones"),
/// 					Product:            pulumi.String("Ecs"),
/// 					ExecuteCliCommand:  pulumi.Bool(true),
/// 				},
/// 			},
/// 			VpcWhitelists: pulumi.StringArray{
/// 				pulumi.String("vpc-examplea"),
/// 				pulumi.String("vpc-exampleb"),
/// 				pulumi.String("vpc-examplec"),
/// 			},
/// 			Name:                  pulumi.String("my-name"),
/// 			Language:              pulumi.String("ZH_CN"),
/// 			EnableAssumeRole:      pulumi.Bool(true),
/// 			AssumeRoleExtraPolicy: pulumi.String(json1),
/// 			TerraformTools: alicloud.OpenApiExplorerApiMcpServerTerraformToolArray{
/// 				&alicloud.OpenApiExplorerApiMcpServerTerraformToolArgs{
/// 					Description:   pulumi.String("Terraform as tool example"),
/// 					Async:         pulumi.Bool(true),
/// 					DestroyPolicy: pulumi.String("NEVER"),
/// 					Code: pulumi.String(`variable \"name\" {
///   default = \"terraform-example\"
/// }
///
/// provider \"alicloud\" {
///   region = \"cn-beijing\"
/// }
///
/// resource \"alicloud_vpc\" \"default\" {
///   ipv6_isp    = \"BGP\"
///   description = \"example\"
///   cidr_block  = \"10.0.0.0/8\"
///   vpc_name    = var.name
///   enable_ipv6 = true
/// }
/// `),
/// 					Name: pulumi.String("tfexample"),
/// 				},
/// 				&alicloud.OpenApiExplorerApiMcpServerTerraformToolArgs{
/// 					Description:   pulumi.String("Terraform as tool example"),
/// 					Async:         pulumi.Bool(true),
/// 					DestroyPolicy: pulumi.String("NEVER"),
/// 					Code: pulumi.String(`variable \"name\" {
///   default = \"terraform-example\"
/// }
///
/// provider \"alicloud\" {
///   region = \"cn-beijing\"
/// }
///
/// resource \"alicloud_vpc\" \"default\" {
///   ipv6_isp    = \"BGP\"
///   description = \"example\"
///   cidr_block  = \"10.0.0.0/8\"
///   vpc_name    = var.name
///   enable_ipv6 = true
/// }
/// `),
/// 					Name: pulumi.String("tfexample2"),
/// 				},
/// 				&alicloud.OpenApiExplorerApiMcpServerTerraformToolArgs{
/// 					Description:   pulumi.String("Terraform as tool example"),
/// 					Async:         pulumi.Bool(true),
/// 					DestroyPolicy: pulumi.String("NEVER"),
/// 					Code: pulumi.String(`variable \"name\" {
///   default = \"terraform-example\"
/// }
///
/// provider \"alicloud\" {
///   region = \"cn-beijing\"
/// }
///
/// resource \"alicloud_vpc\" \"default\" {
///   ipv6_isp    = \"BGP\"
///   description = \"example\"
///   cidr_block  = \"10.0.0.0/8\"
///   vpc_name    = var.name
///   enable_ipv6 = true
/// }
/// `),
/// 					Name: pulumi.String("tfexample3"),
/// 				},
/// 			},
/// 			AssumeRoleName:           pulumi.String("default-role"),
/// 			PublicAccess:             pulumi.String("on"),
/// 			EnableCustomVpcWhitelist: pulumi.Bool(true),
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
/// import com.pulumi.alicloud.OpenApiExplorerApiMcpServer;
/// import com.pulumi.alicloud.OpenApiExplorerApiMcpServerArgs;
/// import com.pulumi.alicloud.inputs.OpenApiExplorerApiMcpServerPromptArgs;
/// import com.pulumi.alicloud.inputs.OpenApiExplorerApiMcpServerApiArgs;
/// import com.pulumi.alicloud.inputs.OpenApiExplorerApiMcpServerAdditionalApiDescriptionArgs;
/// import com.pulumi.alicloud.inputs.OpenApiExplorerApiMcpServerTerraformToolArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new OpenApiExplorerApiMcpServer("default", OpenApiExplorerApiMcpServerArgs.builder()
///             .systemTools("FetchRamActionDetails")
///             .description("Create")
///             .prompts(
///                 OpenApiExplorerApiMcpServerPromptArgs.builder()
///                     .description("Obtain user customization information description")
///                     .content("Prompt body,{{name}}")
///                     .arguments(OpenApiExplorerApiMcpServerPromptArgumentArgs.builder()
///                         .description("Name information")
///                         .required(true)
///                         .name("name")
///                         .build())
///                     .name("Obtain user customization information")
///                     .build(),
///                 OpenApiExplorerApiMcpServerPromptArgs.builder()
///                     .description("Obtain user customization information description")
///                     .content("Prompt text, {{name }}, {{age }}, {{description}}")
///                     .arguments(
///                         OpenApiExplorerApiMcpServerPromptArgumentArgs.builder()
///                             .description("Name information")
///                             .required(true)
///                             .name("name")
///                             .build(),
///                         OpenApiExplorerApiMcpServerPromptArgumentArgs.builder()
///                             .description("Age information")
///                             .required(true)
///                             .name("age")
///                             .build(),
///                         OpenApiExplorerApiMcpServerPromptArgumentArgs.builder()
///                             .description("Description Information")
///                             .required(true)
///                             .name("description")
///                             .build())
///                     .name("Obtain user customization information 1")
///                     .build())
///             .oauthClientId("123456")
///             .apis(
///                 OpenApiExplorerApiMcpServerApiArgs.builder()
///                     .apiVersion("2014-05-26")
///                     .product("Ecs")
///                     .selectors(
///                         "DescribeAvailableResource",
///                         "DescribeRegions",
///                         "DescribeZones")
///                     .build(),
///                 OpenApiExplorerApiMcpServerApiArgs.builder()
///                     .apiVersion("2017-03-21")
///                     .product("vod")
///                     .selectors("CreateUploadVideo")
///                     .build(),
///                 OpenApiExplorerApiMcpServerApiArgs.builder()
///                     .apiVersion("2014-05-15")
///                     .product("Slb")
///                     .selectors("DescribeAvailableResource")
///                     .build())
///             .instructions("Describes the role of the entire MCP Server")
///             .additionalApiDescriptions(
///                 OpenApiExplorerApiMcpServerAdditionalApiDescriptionArgs.builder()
///                     .apiVersion("2014-05-26")
///                     .enableOutputSchema(true)
///                     .apiName("DescribeAvailableResource")
///                     .constParameters(
///                         OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameterArgs.builder()
///                             .value("cn-hangzhou")
///                             .key("x_mcp_region_id")
///                             .build(),
///                         OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameterArgs.builder()
///                             .value("B1")
///                             .key("a1")
///                             .build(),
///                         OpenApiExplorerApiMcpServerAdditionalApiDescriptionConstParameterArgs.builder()
///                             .value("b2")
///                             .key("a2")
///                             .build())
///                     .apiOverrideJson(serializeJson(
///                         jsonObject(
///                             jsonProperty("summary", "This operation supports querying the list of instances based on different request conditions and associating the query instance details. ")
///                         )))
///                     .product("Ecs")
///                     .executeCliCommand(false)
///                     .build(),
///                 OpenApiExplorerApiMcpServerAdditionalApiDescriptionArgs.builder()
///                     .apiVersion("2014-05-26")
///                     .enableOutputSchema(true)
///                     .apiName("DescribeRegions")
///                     .product("Ecs")
///                     .executeCliCommand(true)
///                     .build(),
///                 OpenApiExplorerApiMcpServerAdditionalApiDescriptionArgs.builder()
///                     .apiVersion("2014-05-26")
///                     .enableOutputSchema(true)
///                     .apiName("DescribeZones")
///                     .product("Ecs")
///                     .executeCliCommand(true)
///                     .build())
///             .vpcWhitelists(
///                 "vpc-examplea",
///                 "vpc-exampleb",
///                 "vpc-examplec")
///             .name("my-name")
///             .language("ZH_CN")
///             .enableAssumeRole(true)
///             .assumeRoleExtraPolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "1"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Action", jsonArray(
///                             "ecs:Describe*",
///                             "vpc:Describe*",
///                             "vpc:List*"
///                         )),
///                         jsonProperty("Resource", "*")
///                     )))
///                 )))
///             .terraformTools(
///                 OpenApiExplorerApiMcpServerTerraformToolArgs.builder()
///                     .description("Terraform as tool example")
///                     .async(true)
///                     .destroyPolicy("NEVER")
///                     .code("""
/// variable \"name\" {
///   default = \"terraform-example\"
/// }
///
/// provider \"alicloud\" {
///   region = \"cn-beijing\"
/// }
///
/// resource \"alicloud_vpc\" \"default\" {
///   ipv6_isp    = \"BGP\"
///   description = \"example\"
///   cidr_block  = \"10.0.0.0/8\"
///   vpc_name    = var.name
///   enable_ipv6 = true
/// }
///                     """)
///                     .name("tfexample")
///                     .build(),
///                 OpenApiExplorerApiMcpServerTerraformToolArgs.builder()
///                     .description("Terraform as tool example")
///                     .async(true)
///                     .destroyPolicy("NEVER")
///                     .code("""
/// variable \"name\" {
///   default = \"terraform-example\"
/// }
///
/// provider \"alicloud\" {
///   region = \"cn-beijing\"
/// }
///
/// resource \"alicloud_vpc\" \"default\" {
///   ipv6_isp    = \"BGP\"
///   description = \"example\"
///   cidr_block  = \"10.0.0.0/8\"
///   vpc_name    = var.name
///   enable_ipv6 = true
/// }
///                     """)
///                     .name("tfexample2")
///                     .build(),
///                 OpenApiExplorerApiMcpServerTerraformToolArgs.builder()
///                     .description("Terraform as tool example")
///                     .async(true)
///                     .destroyPolicy("NEVER")
///                     .code("""
/// variable \"name\" {
///   default = \"terraform-example\"
/// }
///
/// provider \"alicloud\" {
///   region = \"cn-beijing\"
/// }
///
/// resource \"alicloud_vpc\" \"default\" {
///   ipv6_isp    = \"BGP\"
///   description = \"example\"
///   cidr_block  = \"10.0.0.0/8\"
///   vpc_name    = var.name
///   enable_ipv6 = true
/// }
///                     """)
///                     .name("tfexample3")
///                     .build())
///             .assumeRoleName("default-role")
///             .publicAccess("on")
///             .enableCustomVpcWhitelist(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:OpenApiExplorerApiMcpServer
///     properties:
///       systemTools:
///         - FetchRamActionDetails
///       description: Create
///       prompts:
///         - description: Obtain user customization information description
///           content: Prompt body,{{name}}
///           arguments:
///             - description: Name information
///               required: true
///               name: name
///           name: Obtain user customization information
///         - description: Obtain user customization information description
///           content: Prompt text, {{name }}, {{age }}, {{description}}
///           arguments:
///             - description: Name information
///               required: true
///               name: name
///             - description: Age information
///               required: true
///               name: age
///             - description: Description Information
///               required: true
///               name: description
///           name: Obtain user customization information 1
///       oauthClientId: '123456'
///       apis:
///         - apiVersion: 2014-05-26
///           product: Ecs
///           selectors:
///             - DescribeAvailableResource
///             - DescribeRegions
///             - DescribeZones
///         - apiVersion: 2017-03-21
///           product: vod
///           selectors:
///             - CreateUploadVideo
///         - apiVersion: 2014-05-15
///           product: Slb
///           selectors:
///             - DescribeAvailableResource
///       instructions: Describes the role of the entire MCP Server
///       additionalApiDescriptions:
///         - apiVersion: 2014-05-26
///           enableOutputSchema: true
///           apiName: DescribeAvailableResource
///           constParameters:
///             - value: cn-hangzhou
///               key: x_mcp_region_id
///             - value: B1
///               key: a1
///             - value: b2
///               key: a2
///           apiOverrideJson:
///             fn::toJSON:
///               summary: 'This operation supports querying the list of instances based on different request conditions and associating the query instance details. '
///           product: Ecs
///           executeCliCommand: false
///         - apiVersion: 2014-05-26
///           enableOutputSchema: true
///           apiName: DescribeRegions
///           product: Ecs
///           executeCliCommand: true
///         - apiVersion: 2014-05-26
///           enableOutputSchema: true
///           apiName: DescribeZones
///           product: Ecs
///           executeCliCommand: true
///       vpcWhitelists:
///         - vpc-examplea
///         - vpc-exampleb
///         - vpc-examplec
///       name: my-name
///       language: ZH_CN
///       enableAssumeRole: true
///       assumeRoleExtraPolicy:
///         fn::toJSON:
///           Version: '1'
///           Statement:
///             - Effect: Allow
///               Action:
///                 - ecs:Describe*
///                 - vpc:Describe*
///                 - vpc:List*
///               Resource: '*'
///       terraformTools:
///         - description: Terraform as tool example
///           async: true
///           destroyPolicy: NEVER
///           code: |
///             variable \"name\" {
///               default = \"terraform-example\"
///             }
///
///             provider \"alicloud\" {
///               region = \"cn-beijing\"
///             }
///
///             resource \"alicloud_vpc\" \"default\" {
///               ipv6_isp    = \"BGP\"
///               description = \"example\"
///               cidr_block  = \"10.0.0.0/8\"
///               vpc_name    = var.name
///               enable_ipv6 = true
///             }
///           name: tfexample
///         - description: Terraform as tool example
///           async: true
///           destroyPolicy: NEVER
///           code: |
///             variable \"name\" {
///               default = \"terraform-example\"
///             }
///
///             provider \"alicloud\" {
///               region = \"cn-beijing\"
///             }
///
///             resource \"alicloud_vpc\" \"default\" {
///               ipv6_isp    = \"BGP\"
///               description = \"example\"
///               cidr_block  = \"10.0.0.0/8\"
///               vpc_name    = var.name
///               enable_ipv6 = true
///             }
///           name: tfexample2
///         - description: Terraform as tool example
///           async: true
///           destroyPolicy: NEVER
///           code: |
///             variable \"name\" {
///               default = \"terraform-example\"
///             }
///
///             provider \"alicloud\" {
///               region = \"cn-beijing\"
///             }
///
///             resource \"alicloud_vpc\" \"default\" {
///               ipv6_isp    = \"BGP\"
///               description = \"example\"
///               cidr_block  = \"10.0.0.0/8\"
///               vpc_name    = var.name
///               enable_ipv6 = true
///             }
///           name: tfexample3
///       assumeRoleName: default-role
///       publicAccess: on
///       enableCustomVpcWhitelist: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Open Api Explorer Api Mcp Server can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:index/openApiExplorerApiMcpServer:OpenApiExplorerApiMcpServer example <id>
/// ```
class OpenApiExplorerApiMcpServer extends pulumi.CustomResource {
  /// Additional OpenAPI description information that can override the default behavior of APIs, including:
  /// - API name
  /// - Modification or removal of API parameter names
  /// - Whether to exclude the API from the output API response structure definition
  /// - Whether to return a CLI execution command instead of directly executing the API
  /// - Configuration of constant values for API parameters; parameters set as constants will not have their definitions returned in the tool list   See `additional_api_descriptions` below.
  late final pulumi.Output<List<OpenApiExplorerApiMcpServerAdditionalApiDescription>?> additionalApiDescriptions;
  /// The list of APIs to be included in the API MCP Server. See `apis` below.
  late final pulumi.Output<List<OpenApiExplorerApiMcpServerApi>> apis;
  /// When multi-account access is enabled, this field defines an additional policy for role assumption. If specified, this policy overrides the original permissions defined for the role, and the assumed role’s permissions are determined solely by this policy.
  late final pulumi.Output<String?> assumeRoleExtraPolicy;
  /// The name of the RAM role in the target account to assume when enabling multi-account access for cross-account operations.
  late final pulumi.Output<String?> assumeRoleName;
  /// MCP Server creation time in China Standard Time (CST), for example, 2025-12-04 19:46:52.
  late final pulumi.Output<String> createTime;
  /// Description of the API MCP service.
  late final pulumi.Output<String?> description;
  /// Specifies whether to enable multi-account access. When enabled, the MCP Server exposes the x_assume_account_id parameter by default. When this parameter is provided, the MCP Server switches to the specified account to perform operations.
  late final pulumi.Output<bool?> enableAssumeRole;
  /// Whether to enable a custom VPC whitelist. If disabled, the configuration follows the account-level setting.
  late final pulumi.Output<bool?> enableCustomVpcWhitelist;
  /// MCP instructions that guide the large language model on how to use this MCP. The client must support the Instructions field defined in the MCP standard protocol.
  late final pulumi.Output<String?> instructions;
  /// Documentation language for the API MCP service. You can select either Chinese or English API documentation. The choice of language may affect the AI's response quality due to differences in prompt wording. Supported values are EN_US and ZH_CN.
  late final pulumi.Output<String?> language;
  /// Name of the MCP Server. It can contain digits, English letters, and hyphens (-).
  late final pulumi.Output<String> name;
  /// The custom OAuth Client ID when selecting a custom OAuth configuration.
  /// `Supported only for Web/Native applications, and the OAuth scope must include /acs/mcp-server.`
  late final pulumi.Output<String?> oauthClientId;
  /// List of prompts supported by the MCP Server. For the MCP protocol, clients retrieve this list through the prompts/list RPC call. See `prompts` below.
  late final pulumi.Output<List<OpenApiExplorerApiMcpServerPrompt>?> prompts;
  /// Whether to enable public network access. This setting takes precedence over the account-level configuration and supports the following options:
  /// - on: enables public network access;
  /// - off: disables public network access;
  /// - follow: inherits the account-level configuration.
  late final pulumi.Output<String?> publicAccess;
  /// Enabled system services.
  late final pulumi.Output<List<String>?> systemTools;
  late final pulumi.Output<List<OpenApiExplorerApiMcpServerTerraformTool>?> terraformTools;
  /// When public network access is disabled, this field specifies the VPC whitelist that restricts source VPCs. If not set or left empty, no restriction is applied to the source.
  late final pulumi.Output<List<String>?> vpcWhitelists;

  /// Creates a new [OpenApiExplorerApiMcpServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OpenApiExplorerApiMcpServer]. {@macro pulumi_index_open_api_explorer_api_mcp_server_open_api_explorer_api_mcp_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OpenApiExplorerApiMcpServer(
    String name, {
    OpenApiExplorerApiMcpServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:index/openApiExplorerApiMcpServer:OpenApiExplorerApiMcpServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalApiDescriptions = registerOutput<List<OpenApiExplorerApiMcpServerAdditionalApiDescription>?>('additionalApiDescriptions');
    this.apis = registerOutput<List<OpenApiExplorerApiMcpServerApi>>('apis');
    this.assumeRoleExtraPolicy = registerOutput<String?>('assumeRoleExtraPolicy');
    this.assumeRoleName = registerOutput<String?>('assumeRoleName');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.enableAssumeRole = registerOutput<bool?>('enableAssumeRole');
    this.enableCustomVpcWhitelist = registerOutput<bool?>('enableCustomVpcWhitelist');
    this.instructions = registerOutput<String?>('instructions');
    this.language = registerOutput<String?>('language');
    this.name = registerOutput<String>('name');
    this.oauthClientId = registerOutput<String?>('oauthClientId');
    this.prompts = registerOutput<List<OpenApiExplorerApiMcpServerPrompt>?>('prompts');
    this.publicAccess = registerOutput<String?>('publicAccess');
    this.systemTools = registerOutput<List<String>?>('systemTools');
    this.terraformTools = registerOutput<List<OpenApiExplorerApiMcpServerTerraformTool>?>('terraformTools');
    this.vpcWhitelists = registerOutput<List<String>?>('vpcWhitelists');
  }

  /// Gets an existing [OpenApiExplorerApiMcpServer] resource's state with the given [name] and [id].
  static OpenApiExplorerApiMcpServer get(
    String name,
    pulumi.Input<String> id, {
    OpenApiExplorerApiMcpServerState? state,
  }) {
    return OpenApiExplorerApiMcpServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OpenApiExplorerApiMcpServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:index/openApiExplorerApiMcpServer:OpenApiExplorerApiMcpServer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalApiDescriptions = registerOutput<List<OpenApiExplorerApiMcpServerAdditionalApiDescription>?>('additionalApiDescriptions');
    this.apis = registerOutput<List<OpenApiExplorerApiMcpServerApi>>('apis');
    this.assumeRoleExtraPolicy = registerOutput<String?>('assumeRoleExtraPolicy');
    this.assumeRoleName = registerOutput<String?>('assumeRoleName');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.enableAssumeRole = registerOutput<bool?>('enableAssumeRole');
    this.enableCustomVpcWhitelist = registerOutput<bool?>('enableCustomVpcWhitelist');
    this.instructions = registerOutput<String?>('instructions');
    this.language = registerOutput<String?>('language');
    this.name = registerOutput<String>('name');
    this.oauthClientId = registerOutput<String?>('oauthClientId');
    this.prompts = registerOutput<List<OpenApiExplorerApiMcpServerPrompt>?>('prompts');
    this.publicAccess = registerOutput<String?>('publicAccess');
    this.systemTools = registerOutput<List<String>?>('systemTools');
    this.terraformTools = registerOutput<List<OpenApiExplorerApiMcpServerTerraformTool>?>('terraformTools');
    this.vpcWhitelists = registerOutput<List<String>?>('vpcWhitelists');
  }
}
