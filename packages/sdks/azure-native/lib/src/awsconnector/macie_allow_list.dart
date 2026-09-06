import 'package:pulumi/pulumi.dart' as pulumi;
import 'macie_allow_list_args.dart';
import 'macie_allow_list_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MacieAllowLists_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var macieAllowList = new AzureNative.AwsConnector.MacieAllowList("macieAllowList", new()
///     {
///         Location = "ljfzlbopfuubipqzi",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.MacieAllowListPropertiesArgs
///         {
///             Arn = "iuotvbrnfqcexaumxdelcobenu",
///             AwsAccountId = "jf",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsMacieAllowListPropertiesArgs
///             {
///                 Arn = "xdvleyfipecptdivylwygmlsaua",
///                 Criteria = new AzureNative.AwsConnector.Inputs.CriteriaArgs
///                 {
///                     Regex = "lixefi",
///                     S3WordsList = new AzureNative.AwsConnector.Inputs.S3WordsListArgs
///                     {
///                         BucketName = "nfztmnzebbxtnmqmrmyqnuho",
///                         ObjectKey = "pobipzkebqlgjxfwucoq",
///                     },
///                 },
///                 Description = "wvwzsjgqyvyjbb",
///                 Id = "ssesuxsvbo",
///                 Name = "nkimocnjypmzr",
///                 Status = "OK",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "hjfhvyhpoebquxi",
///                         Value = "hipfzph",
///                     },
///                 },
///             },
///             AwsRegion = "x",
///             AwsSourceSchema = "vviqkggctwa",
///             AwsTags =
///             {
///                 { "key6335", "ewozmljpzvhwyzkp" },
///             },
///             PublicCloudConnectorsResourceId = "rqoahjiblmrymixvgegzwfqdq",
///             PublicCloudResourceName = "ggubisvuvunhxrj",
///         },
///         ResourceGroupName = "rgmacieAllowList",
///         Tags =
///         {
///             { "key2466", "ptogkwqufoxaylatzvn" },
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
/// 		_, err := awsconnector.NewMacieAllowList(ctx, "macieAllowList", &awsconnector.MacieAllowListArgs{
/// 			Location: pulumi.String("ljfzlbopfuubipqzi"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.MacieAllowListPropertiesArgs{
/// 				Arn:          pulumi.String("iuotvbrnfqcexaumxdelcobenu"),
/// 				AwsAccountId: pulumi.String("jf"),
/// 				AwsProperties: &awsconnector.AwsMacieAllowListPropertiesArgs{
/// 					Arn: pulumi.String("xdvleyfipecptdivylwygmlsaua"),
/// 					Criteria: &awsconnector.CriteriaArgs{
/// 						Regex: pulumi.String("lixefi"),
/// 						S3WordsList: &awsconnector.S3WordsListArgs{
/// 							BucketName: pulumi.String("nfztmnzebbxtnmqmrmyqnuho"),
/// 							ObjectKey:  pulumi.String("pobipzkebqlgjxfwucoq"),
/// 						},
/// 					},
/// 					Description: pulumi.String("wvwzsjgqyvyjbb"),
/// 					Id:          pulumi.String("ssesuxsvbo"),
/// 					Name:        pulumi.String("nkimocnjypmzr"),
/// 					Status:      pulumi.String("OK"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("hjfhvyhpoebquxi"),
/// 							Value: pulumi.String("hipfzph"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("x"),
/// 				AwsSourceSchema: pulumi.String("vviqkggctwa"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key6335": pulumi.String("ewozmljpzvhwyzkp"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("rqoahjiblmrymixvgegzwfqdq"),
/// 				PublicCloudResourceName:         pulumi.String("ggubisvuvunhxrj"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgmacieAllowList"),
/// 			Tags: pulumi.StringMap{
/// 				"key2466": pulumi.String("ptogkwqufoxaylatzvn"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_awsconnector_macieallowlist" "macieAllowList" {
///   location = "ljfzlbopfuubipqzi"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "iuotvbrnfqcexaumxdelcobenu"
///     aws_account_id = "jf"
///     aws_properties = {
///       arn = "xdvleyfipecptdivylwygmlsaua"
///       criteria = {
///         regex = "lixefi"
///         s3_words_list = {
///           bucket_name = "nfztmnzebbxtnmqmrmyqnuho"
///           object_key  = "pobipzkebqlgjxfwucoq"
///         }
///       }
///       description = "wvwzsjgqyvyjbb"
///       id          = "ssesuxsvbo"
///       name        = "nkimocnjypmzr"
///       status      = "OK"
///       tags = [{
///         "key"   = "hjfhvyhpoebquxi"
///         "value" = "hipfzph"
///       }]
///     }
///     aws_region        = "x"
///     aws_source_schema = "vviqkggctwa"
///     aws_tags = {
///       "key6335" = "ewozmljpzvhwyzkp"
///     }
///     public_cloud_connectors_resource_id = "rqoahjiblmrymixvgegzwfqdq"
///     public_cloud_resource_name          = "ggubisvuvunhxrj"
///   }
///   resource_group_name = "rgmacieAllowList"
///   tags = {
///     "key2466" = "ptogkwqufoxaylatzvn"
///   }
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
/// import com.pulumi.azurenative.awsconnector.MacieAllowList;
/// import com.pulumi.azurenative.awsconnector.MacieAllowListArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.MacieAllowListPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsMacieAllowListPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CriteriaArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.S3WordsListArgs;
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
///         var macieAllowList = new MacieAllowList("macieAllowList", MacieAllowListArgs.builder()
///             .location("ljfzlbopfuubipqzi")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(MacieAllowListPropertiesArgs.builder()
///                 .arn("iuotvbrnfqcexaumxdelcobenu")
///                 .awsAccountId("jf")
///                 .awsProperties(AwsMacieAllowListPropertiesArgs.builder()
///                     .arn("xdvleyfipecptdivylwygmlsaua")
///                     .criteria(CriteriaArgs.builder()
///                         .regex("lixefi")
///                         .s3WordsList(S3WordsListArgs.builder()
///                             .bucketName("nfztmnzebbxtnmqmrmyqnuho")
///                             .objectKey("pobipzkebqlgjxfwucoq")
///                             .build())
///                         .build())
///                     .description("wvwzsjgqyvyjbb")
///                     .id("ssesuxsvbo")
///                     .name("nkimocnjypmzr")
///                     .status("OK")
///                     .tags(TagArgs.builder()
///                         .key("hjfhvyhpoebquxi")
///                         .value("hipfzph")
///                         .build())
///                     .build())
///                 .awsRegion("x")
///                 .awsSourceSchema("vviqkggctwa")
///                 .awsTags(Map.of("key6335", "ewozmljpzvhwyzkp"))
///                 .publicCloudConnectorsResourceId("rqoahjiblmrymixvgegzwfqdq")
///                 .publicCloudResourceName("ggubisvuvunhxrj")
///                 .build())
///             .resourceGroupName("rgmacieAllowList")
///             .tags(Map.of("key2466", "ptogkwqufoxaylatzvn"))
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
/// const macieAllowList = new azure_native.awsconnector.MacieAllowList("macieAllowList", {
///     location: "ljfzlbopfuubipqzi",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "iuotvbrnfqcexaumxdelcobenu",
///         awsAccountId: "jf",
///         awsProperties: {
///             arn: "xdvleyfipecptdivylwygmlsaua",
///             criteria: {
///                 regex: "lixefi",
///                 s3WordsList: {
///                     bucketName: "nfztmnzebbxtnmqmrmyqnuho",
///                     objectKey: "pobipzkebqlgjxfwucoq",
///                 },
///             },
///             description: "wvwzsjgqyvyjbb",
///             id: "ssesuxsvbo",
///             name: "nkimocnjypmzr",
///             status: "OK",
///             tags: [{
///                 key: "hjfhvyhpoebquxi",
///                 value: "hipfzph",
///             }],
///         },
///         awsRegion: "x",
///         awsSourceSchema: "vviqkggctwa",
///         awsTags: {
///             key6335: "ewozmljpzvhwyzkp",
///         },
///         publicCloudConnectorsResourceId: "rqoahjiblmrymixvgegzwfqdq",
///         publicCloudResourceName: "ggubisvuvunhxrj",
///     },
///     resourceGroupName: "rgmacieAllowList",
///     tags: {
///         key2466: "ptogkwqufoxaylatzvn",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// macie_allow_list = azure_native.awsconnector.MacieAllowList("macieAllowList",
///     location="ljfzlbopfuubipqzi",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "iuotvbrnfqcexaumxdelcobenu",
///         "aws_account_id": "jf",
///         "aws_properties": {
///             "arn": "xdvleyfipecptdivylwygmlsaua",
///             "criteria": {
///                 "regex": "lixefi",
///                 "s3_words_list": {
///                     "bucket_name": "nfztmnzebbxtnmqmrmyqnuho",
///                     "object_key": "pobipzkebqlgjxfwucoq",
///                 },
///             },
///             "description": "wvwzsjgqyvyjbb",
///             "id": "ssesuxsvbo",
///             "name": "nkimocnjypmzr",
///             "status": "OK",
///             "tags": [{
///                 "key": "hjfhvyhpoebquxi",
///                 "value": "hipfzph",
///             }],
///         },
///         "aws_region": "x",
///         "aws_source_schema": "vviqkggctwa",
///         "aws_tags": {
///             "key6335": "ewozmljpzvhwyzkp",
///         },
///         "public_cloud_connectors_resource_id": "rqoahjiblmrymixvgegzwfqdq",
///         "public_cloud_resource_name": "ggubisvuvunhxrj",
///     },
///     resource_group_name="rgmacieAllowList",
///     tags={
///         "key2466": "ptogkwqufoxaylatzvn",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   macieAllowList:
///     type: azure-native:awsconnector:MacieAllowList
///     properties:
///       location: ljfzlbopfuubipqzi
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: iuotvbrnfqcexaumxdelcobenu
///         awsAccountId: jf
///         awsProperties:
///           arn: xdvleyfipecptdivylwygmlsaua
///           criteria:
///             regex: lixefi
///             s3WordsList:
///               bucketName: nfztmnzebbxtnmqmrmyqnuho
///               objectKey: pobipzkebqlgjxfwucoq
///           description: wvwzsjgqyvyjbb
///           id: ssesuxsvbo
///           name: nkimocnjypmzr
///           status: OK
///           tags:
///             - key: hjfhvyhpoebquxi
///               value: hipfzph
///         awsRegion: x
///         awsSourceSchema: vviqkggctwa
///         awsTags:
///           key6335: ewozmljpzvhwyzkp
///         publicCloudConnectorsResourceId: rqoahjiblmrymixvgegzwfqdq
///         publicCloudResourceName: ggubisvuvunhxrj
///       resourceGroupName: rgmacieAllowList
///       tags:
///         key2466: ptogkwqufoxaylatzvn
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
/// $ pulumi import azure-native:awsconnector:MacieAllowList hvagfcfptxeifjf /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/macieAllowLists/{name}
/// ```
class MacieAllowList extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<MacieAllowListPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MacieAllowList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MacieAllowList]. {@macro pulumi_awsconnector_macie_allow_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MacieAllowList(
    String name, {
    MacieAllowListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:MacieAllowList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<MacieAllowListPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MacieAllowListPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [MacieAllowList] resource.
  MacieAllowList.reference(String urn)
    : super(
        'azure-native:awsconnector:MacieAllowList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<MacieAllowListPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MacieAllowListPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
