import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_access_key_metadata_info_args.dart';
import 'iam_access_key_metadata_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IamAccessKeyMetadataInfo_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iamAccessKeyMetadataInfo = new AzureNative.AwsConnector.IamAccessKeyMetadataInfo("iamAccessKeyMetadataInfo", new()
///     {
///         Location = "dqubptgcoomyzlodtswea",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.IamAccessKeyMetadataPropertiesArgs
///         {
///             Arn = "gcbewovmmukvp",
///             AwsAccountId = "i",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsIamAccessKeyMetadataPropertiesArgs
///             {
///                 AccessKeyId = "ybrtvadgwepioqesepjpoxemlvu",
///                 CreateDate = "2024-10-08T03:50:53.022Z",
///                 Status = new AzureNative.AwsConnector.Inputs.StatusTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.StatusType.Active,
///                 },
///                 UserName = "obogutgiddo",
///             },
///             AwsRegion = "e",
///             AwsSourceSchema = "bcflc",
///             AwsTags =
///             {
///                 { "key5899", "nnfwyaxbohwiqqvlegvbeuwx" },
///             },
///             PublicCloudConnectorsResourceId = "iwcumigpcnebbhmwmaerblylcgdtt",
///             PublicCloudResourceName = "ctvpxuzxqwzhmtivtftc",
///         },
///         ResourceGroupName = "rgiamAccessKeyMetadata",
///         Tags =
///         {
///             { "key4454", "phceybsnzjaxtgagqgovz" },
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
/// 		_, err := awsconnector.NewIamAccessKeyMetadataInfo(ctx, "iamAccessKeyMetadataInfo", &awsconnector.IamAccessKeyMetadataInfoArgs{
/// 			Location: pulumi.String("dqubptgcoomyzlodtswea"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.IamAccessKeyMetadataPropertiesArgs{
/// 				Arn:          pulumi.String("gcbewovmmukvp"),
/// 				AwsAccountId: pulumi.String("i"),
/// 				AwsProperties: &awsconnector.AwsIamAccessKeyMetadataPropertiesArgs{
/// 					AccessKeyId: pulumi.String("ybrtvadgwepioqesepjpoxemlvu"),
/// 					CreateDate:  pulumi.String("2024-10-08T03:50:53.022Z"),
/// 					Status: &awsconnector.StatusTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.StatusTypeActive),
/// 					},
/// 					UserName: pulumi.String("obogutgiddo"),
/// 				},
/// 				AwsRegion:       pulumi.String("e"),
/// 				AwsSourceSchema: pulumi.String("bcflc"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key5899": pulumi.String("nnfwyaxbohwiqqvlegvbeuwx"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("iwcumigpcnebbhmwmaerblylcgdtt"),
/// 				PublicCloudResourceName:         pulumi.String("ctvpxuzxqwzhmtivtftc"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiamAccessKeyMetadata"),
/// 			Tags: pulumi.StringMap{
/// 				"key4454": pulumi.String("phceybsnzjaxtgagqgovz"),
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
/// import com.pulumi.azurenative.awsconnector.IamAccessKeyMetadataInfo;
/// import com.pulumi.azurenative.awsconnector.IamAccessKeyMetadataInfoArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.IamAccessKeyMetadataPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsIamAccessKeyMetadataPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.StatusTypeEnumValueArgs;
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
///         var iamAccessKeyMetadataInfo = new IamAccessKeyMetadataInfo("iamAccessKeyMetadataInfo", IamAccessKeyMetadataInfoArgs.builder()
///             .location("dqubptgcoomyzlodtswea")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(IamAccessKeyMetadataPropertiesArgs.builder()
///                 .arn("gcbewovmmukvp")
///                 .awsAccountId("i")
///                 .awsProperties(AwsIamAccessKeyMetadataPropertiesArgs.builder()
///                     .accessKeyId("ybrtvadgwepioqesepjpoxemlvu")
///                     .createDate("2024-10-08T03:50:53.022Z")
///                     .status(StatusTypeEnumValueArgs.builder()
///                         .value("Active")
///                         .build())
///                     .userName("obogutgiddo")
///                     .build())
///                 .awsRegion("e")
///                 .awsSourceSchema("bcflc")
///                 .awsTags(Map.of("key5899", "nnfwyaxbohwiqqvlegvbeuwx"))
///                 .publicCloudConnectorsResourceId("iwcumigpcnebbhmwmaerblylcgdtt")
///                 .publicCloudResourceName("ctvpxuzxqwzhmtivtftc")
///                 .build())
///             .resourceGroupName("rgiamAccessKeyMetadata")
///             .tags(Map.of("key4454", "phceybsnzjaxtgagqgovz"))
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
/// const iamAccessKeyMetadataInfo = new azure_native.awsconnector.IamAccessKeyMetadataInfo("iamAccessKeyMetadataInfo", {
///     location: "dqubptgcoomyzlodtswea",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "gcbewovmmukvp",
///         awsAccountId: "i",
///         awsProperties: {
///             accessKeyId: "ybrtvadgwepioqesepjpoxemlvu",
///             createDate: "2024-10-08T03:50:53.022Z",
///             status: {
///                 value: azure_native.awsconnector.StatusType.Active,
///             },
///             userName: "obogutgiddo",
///         },
///         awsRegion: "e",
///         awsSourceSchema: "bcflc",
///         awsTags: {
///             key5899: "nnfwyaxbohwiqqvlegvbeuwx",
///         },
///         publicCloudConnectorsResourceId: "iwcumigpcnebbhmwmaerblylcgdtt",
///         publicCloudResourceName: "ctvpxuzxqwzhmtivtftc",
///     },
///     resourceGroupName: "rgiamAccessKeyMetadata",
///     tags: {
///         key4454: "phceybsnzjaxtgagqgovz",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iam_access_key_metadata_info = azure_native.awsconnector.IamAccessKeyMetadataInfo("iamAccessKeyMetadataInfo",
///     location="dqubptgcoomyzlodtswea",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "gcbewovmmukvp",
///         "aws_account_id": "i",
///         "aws_properties": {
///             "access_key_id": "ybrtvadgwepioqesepjpoxemlvu",
///             "create_date": "2024-10-08T03:50:53.022Z",
///             "status": {
///                 "value": azure_native.awsconnector.StatusType.ACTIVE,
///             },
///             "user_name": "obogutgiddo",
///         },
///         "aws_region": "e",
///         "aws_source_schema": "bcflc",
///         "aws_tags": {
///             "key5899": "nnfwyaxbohwiqqvlegvbeuwx",
///         },
///         "public_cloud_connectors_resource_id": "iwcumigpcnebbhmwmaerblylcgdtt",
///         "public_cloud_resource_name": "ctvpxuzxqwzhmtivtftc",
///     },
///     resource_group_name="rgiamAccessKeyMetadata",
///     tags={
///         "key4454": "phceybsnzjaxtgagqgovz",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   iamAccessKeyMetadataInfo:
///     type: azure-native:awsconnector:IamAccessKeyMetadataInfo
///     properties:
///       location: dqubptgcoomyzlodtswea
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: gcbewovmmukvp
///         awsAccountId: i
///         awsProperties:
///           accessKeyId: ybrtvadgwepioqesepjpoxemlvu
///           createDate: 2024-10-08T03:50:53.022Z
///           status:
///             value: Active
///           userName: obogutgiddo
///         awsRegion: e
///         awsSourceSchema: bcflc
///         awsTags:
///           key5899: nnfwyaxbohwiqqvlegvbeuwx
///         publicCloudConnectorsResourceId: iwcumigpcnebbhmwmaerblylcgdtt
///         publicCloudResourceName: ctvpxuzxqwzhmtivtftc
///       resourceGroupName: rgiamAccessKeyMetadata
///       tags:
///         key4454: phceybsnzjaxtgagqgovz
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
/// $ pulumi import azure-native:awsconnector:IamAccessKeyMetadataInfo nzwilyzbgboyvjfhjmpqknqj /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/iamAccessKeyMetadata/{name}
/// ```
class IamAccessKeyMetadataInfo extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<IamAccessKeyMetadataPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IamAccessKeyMetadataInfo].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IamAccessKeyMetadataInfo]. {@macro pulumi_awsconnector_iam_access_key_metadata_info_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IamAccessKeyMetadataInfo(
    String name, {
    IamAccessKeyMetadataInfoArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:IamAccessKeyMetadataInfo',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<IamAccessKeyMetadataPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
