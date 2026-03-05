import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_build_source_credentials_info_args.dart';
import 'code_build_source_credentials_info_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CodeBuildSourceCredentialsInfos_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var codeBuildSourceCredentialsInfo = new AzureNative.AwsConnector.CodeBuildSourceCredentialsInfo("codeBuildSourceCredentialsInfo", new()
///     {
///         Location = "ckmgfv",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.CodeBuildSourceCredentialsInfoPropertiesArgs
///         {
///             Arn = "wdxdkxuukdnrlpqgkmmvfagzrwom",
///             AwsAccountId = "bgwhzakphzjipkxqwy",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsCodeBuildSourceCredentialsInfoPropertiesArgs
///             {
///                 Arn = "ewe",
///                 AuthType = new AzureNative.AwsConnector.Inputs.AuthTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.AuthType.BASIC_AUTH,
///                 },
///                 Resource = "cnzfvgfcneqgffgfclggx",
///                 ServerType = new AzureNative.AwsConnector.Inputs.ServerTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.ServerType.BITBUCKET,
///                 },
///             },
///             AwsRegion = "vywlxfetnso",
///             AwsSourceSchema = "rhibtnvrfkidnqhyynub",
///             AwsTags =
///             {
///                 { "key3224", "eky" },
///             },
///             PublicCloudConnectorsResourceId = "cidijgvkoos",
///             PublicCloudResourceName = "uazcojlwlavznbfsrjzbtthat",
///         },
///         ResourceGroupName = "rgcodeBuildSourceCredentialsInfo",
///         Tags =
///         {
///             { "key9473", "osnuolokdgmmhzpdajuqnguse" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	awsconnector "github.com/pulumi/pulumi-azure-native-sdk/awsconnector/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := awsconnector.NewCodeBuildSourceCredentialsInfo(ctx, "codeBuildSourceCredentialsInfo", &awsconnector.CodeBuildSourceCredentialsInfoArgs{
/// 			Location: pulumi.String("ckmgfv"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.CodeBuildSourceCredentialsInfoPropertiesArgs{
/// 				Arn:          pulumi.String("wdxdkxuukdnrlpqgkmmvfagzrwom"),
/// 				AwsAccountId: pulumi.String("bgwhzakphzjipkxqwy"),
/// 				AwsProperties: &awsconnector.AwsCodeBuildSourceCredentialsInfoPropertiesArgs{
/// 					Arn: pulumi.String("ewe"),
/// 					AuthType: &awsconnector.AuthTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.AuthType_BASIC_AUTH),
/// 					},
/// 					Resource: pulumi.String("cnzfvgfcneqgffgfclggx"),
/// 					ServerType: &awsconnector.ServerTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.ServerTypeBITBUCKET),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("vywlxfetnso"),
/// 				AwsSourceSchema: pulumi.String("rhibtnvrfkidnqhyynub"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key3224": pulumi.String("eky"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("cidijgvkoos"),
/// 				PublicCloudResourceName:         pulumi.String("uazcojlwlavznbfsrjzbtthat"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgcodeBuildSourceCredentialsInfo"),
/// 			Tags: pulumi.StringMap{
/// 				"key9473": pulumi.String("osnuolokdgmmhzpdajuqnguse"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.awsconnector.CodeBuildSourceCredentialsInfo;
/// import com.pulumi.azurenative.awsconnector.CodeBuildSourceCredentialsInfoArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CodeBuildSourceCredentialsInfoPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsCodeBuildSourceCredentialsInfoPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AuthTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ServerTypeEnumValueArgs;
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
///         var codeBuildSourceCredentialsInfo = new CodeBuildSourceCredentialsInfo("codeBuildSourceCredentialsInfo", CodeBuildSourceCredentialsInfoArgs.builder()
///             .location("ckmgfv")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(CodeBuildSourceCredentialsInfoPropertiesArgs.builder()
///                 .arn("wdxdkxuukdnrlpqgkmmvfagzrwom")
///                 .awsAccountId("bgwhzakphzjipkxqwy")
///                 .awsProperties(AwsCodeBuildSourceCredentialsInfoPropertiesArgs.builder()
///                     .arn("ewe")
///                     .authType(AuthTypeEnumValueArgs.builder()
///                         .value("BASIC_AUTH")
///                         .build())
///                     .resource("cnzfvgfcneqgffgfclggx")
///                     .serverType(ServerTypeEnumValueArgs.builder()
///                         .value("BITBUCKET")
///                         .build())
///                     .build())
///                 .awsRegion("vywlxfetnso")
///                 .awsSourceSchema("rhibtnvrfkidnqhyynub")
///                 .awsTags(Map.of("key3224", "eky"))
///                 .publicCloudConnectorsResourceId("cidijgvkoos")
///                 .publicCloudResourceName("uazcojlwlavznbfsrjzbtthat")
///                 .build())
///             .resourceGroupName("rgcodeBuildSourceCredentialsInfo")
///             .tags(Map.of("key9473", "osnuolokdgmmhzpdajuqnguse"))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const codeBuildSourceCredentialsInfo = new azure_native.awsconnector.CodeBuildSourceCredentialsInfo("codeBuildSourceCredentialsInfo", {
///     location: "ckmgfv",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "wdxdkxuukdnrlpqgkmmvfagzrwom",
///         awsAccountId: "bgwhzakphzjipkxqwy",
///         awsProperties: {
///             arn: "ewe",
///             authType: {
///                 value: azure_native.awsconnector.AuthType.BASIC_AUTH,
///             },
///             resource: "cnzfvgfcneqgffgfclggx",
///             serverType: {
///                 value: azure_native.awsconnector.ServerType.BITBUCKET,
///             },
///         },
///         awsRegion: "vywlxfetnso",
///         awsSourceSchema: "rhibtnvrfkidnqhyynub",
///         awsTags: {
///             key3224: "eky",
///         },
///         publicCloudConnectorsResourceId: "cidijgvkoos",
///         publicCloudResourceName: "uazcojlwlavznbfsrjzbtthat",
///     },
///     resourceGroupName: "rgcodeBuildSourceCredentialsInfo",
///     tags: {
///         key9473: "osnuolokdgmmhzpdajuqnguse",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// code_build_source_credentials_info = azure_native.awsconnector.CodeBuildSourceCredentialsInfo("codeBuildSourceCredentialsInfo",
///     location="ckmgfv",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "wdxdkxuukdnrlpqgkmmvfagzrwom",
///         "aws_account_id": "bgwhzakphzjipkxqwy",
///         "aws_properties": {
///             "arn": "ewe",
///             "auth_type": {
///                 "value": azure_native.awsconnector.AuthType.BASI_C_AUTH,
///             },
///             "resource": "cnzfvgfcneqgffgfclggx",
///             "server_type": {
///                 "value": azure_native.awsconnector.ServerType.BITBUCKET,
///             },
///         },
///         "aws_region": "vywlxfetnso",
///         "aws_source_schema": "rhibtnvrfkidnqhyynub",
///         "aws_tags": {
///             "key3224": "eky",
///         },
///         "public_cloud_connectors_resource_id": "cidijgvkoos",
///         "public_cloud_resource_name": "uazcojlwlavznbfsrjzbtthat",
///     },
///     resource_group_name="rgcodeBuildSourceCredentialsInfo",
///     tags={
///         "key9473": "osnuolokdgmmhzpdajuqnguse",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   codeBuildSourceCredentialsInfo:
///     type: azure-native:awsconnector:CodeBuildSourceCredentialsInfo
///     properties:
///       location: ckmgfv
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: wdxdkxuukdnrlpqgkmmvfagzrwom
///         awsAccountId: bgwhzakphzjipkxqwy
///         awsProperties:
///           arn: ewe
///           authType:
///             value: BASIC_AUTH
///           resource: cnzfvgfcneqgffgfclggx
///           serverType:
///             value: BITBUCKET
///         awsRegion: vywlxfetnso
///         awsSourceSchema: rhibtnvrfkidnqhyynub
///         awsTags:
///           key3224: eky
///         publicCloudConnectorsResourceId: cidijgvkoos
///         publicCloudResourceName: uazcojlwlavznbfsrjzbtthat
///       resourceGroupName: rgcodeBuildSourceCredentialsInfo
///       tags:
///         key9473: osnuolokdgmmhzpdajuqnguse
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:awsconnector:CodeBuildSourceCredentialsInfo abybajjjrfhfmlcj /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/codeBuildSourceCredentialsInfos/{name}
/// ```
class CodeBuildSourceCredentialsInfo extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<CodeBuildSourceCredentialsInfoPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CodeBuildSourceCredentialsInfo].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CodeBuildSourceCredentialsInfo]. {@macro pulumi_awsconnector_code_build_source_credentials_info_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CodeBuildSourceCredentialsInfo(
    String name, {
    CodeBuildSourceCredentialsInfoArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:CodeBuildSourceCredentialsInfo',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CodeBuildSourceCredentialsInfoPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CodeBuildSourceCredentialsInfoPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
