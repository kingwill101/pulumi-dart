import 'package:pulumi/pulumi.dart' as pulumi;
import 'lightsail_bucket_args.dart';
import 'lightsail_bucket_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LightsailBuckets_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lightsailBucket = new AzureNative.AwsConnector.LightsailBucket("lightsailBucket", new()
///     {
///         Location = "ctcjoqkhbmgwtqztn",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.LightsailBucketPropertiesArgs
///         {
///             Arn = "uoyqkdsfok",
///             AwsAccountId = "wqlujalgyyyfgmedzj",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsLightsailBucketPropertiesArgs
///             {
///                 AbleToUpdateBundle = true,
///                 AccessRules = new AzureNative.AwsConnector.Inputs.AccessRulesArgs
///                 {
///                     AllowPublicOverrides = true,
///                     GetObject = "rzsbxpoywnkypgcjndwgjxurwaggf",
///                 },
///                 BucketArn = "khrxjzjloawhlsscrupp",
///                 BucketName = "rbqqhyugkapyxigvfygdmmsig",
///                 BundleId = "s",
///                 ObjectVersioning = true,
///                 ReadOnlyAccessAccounts = new[]
///                 {
///                     "yptmppbxsgfmbvcoourx",
///                 },
///                 ResourcesReceivingAccess = new[]
///                 {
///                     "abmltbmvfqgzha",
///                 },
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "pllzblljxgv",
///                         Value = "onksgozpshqfschbsuyhhui",
///                     },
///                 },
///                 Url = "dzofeppuoqkmehqcpzpezbmbvrvqbn",
///             },
///             AwsRegion = "kozgryjoinum",
///             AwsSourceSchema = "kcjmzaxkkbztlm",
///             AwsTags =
///             {
///                 { "key7074", "efcntnbhiifsphfneto" },
///             },
///             PublicCloudConnectorsResourceId = "vcenimpnlashmiz",
///             PublicCloudResourceName = "aqpayfdjm",
///         },
///         ResourceGroupName = "rglightsailBucket",
///         Tags =
///         {
///             { "key4407", "iuaeevz" },
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
/// 		_, err := awsconnector.NewLightsailBucket(ctx, "lightsailBucket", &awsconnector.LightsailBucketArgs{
/// 			Location: pulumi.String("ctcjoqkhbmgwtqztn"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.LightsailBucketPropertiesArgs{
/// 				Arn:          pulumi.String("uoyqkdsfok"),
/// 				AwsAccountId: pulumi.String("wqlujalgyyyfgmedzj"),
/// 				AwsProperties: &awsconnector.AwsLightsailBucketPropertiesArgs{
/// 					AbleToUpdateBundle: pulumi.Bool(true),
/// 					AccessRules: &awsconnector.AccessRulesArgs{
/// 						AllowPublicOverrides: pulumi.Bool(true),
/// 						GetObject:            pulumi.String("rzsbxpoywnkypgcjndwgjxurwaggf"),
/// 					},
/// 					BucketArn:        pulumi.String("khrxjzjloawhlsscrupp"),
/// 					BucketName:       pulumi.String("rbqqhyugkapyxigvfygdmmsig"),
/// 					BundleId:         pulumi.String("s"),
/// 					ObjectVersioning: pulumi.Bool(true),
/// 					ReadOnlyAccessAccounts: pulumi.StringArray{
/// 						pulumi.String("yptmppbxsgfmbvcoourx"),
/// 					},
/// 					ResourcesReceivingAccess: pulumi.StringArray{
/// 						pulumi.String("abmltbmvfqgzha"),
/// 					},
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("pllzblljxgv"),
/// 							Value: pulumi.String("onksgozpshqfschbsuyhhui"),
/// 						},
/// 					},
/// 					Url: pulumi.String("dzofeppuoqkmehqcpzpezbmbvrvqbn"),
/// 				},
/// 				AwsRegion:       pulumi.String("kozgryjoinum"),
/// 				AwsSourceSchema: pulumi.String("kcjmzaxkkbztlm"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key7074": pulumi.String("efcntnbhiifsphfneto"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("vcenimpnlashmiz"),
/// 				PublicCloudResourceName:         pulumi.String("aqpayfdjm"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rglightsailBucket"),
/// 			Tags: pulumi.StringMap{
/// 				"key4407": pulumi.String("iuaeevz"),
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
/// import com.pulumi.azurenative.awsconnector.LightsailBucket;
/// import com.pulumi.azurenative.awsconnector.LightsailBucketArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LightsailBucketPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsLightsailBucketPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AccessRulesArgs;
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
///         var lightsailBucket = new LightsailBucket("lightsailBucket", LightsailBucketArgs.builder()
///             .location("ctcjoqkhbmgwtqztn")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(LightsailBucketPropertiesArgs.builder()
///                 .arn("uoyqkdsfok")
///                 .awsAccountId("wqlujalgyyyfgmedzj")
///                 .awsProperties(AwsLightsailBucketPropertiesArgs.builder()
///                     .ableToUpdateBundle(true)
///                     .accessRules(AccessRulesArgs.builder()
///                         .allowPublicOverrides(true)
///                         .getObject("rzsbxpoywnkypgcjndwgjxurwaggf")
///                         .build())
///                     .bucketArn("khrxjzjloawhlsscrupp")
///                     .bucketName("rbqqhyugkapyxigvfygdmmsig")
///                     .bundleId("s")
///                     .objectVersioning(true)
///                     .readOnlyAccessAccounts("yptmppbxsgfmbvcoourx")
///                     .resourcesReceivingAccess("abmltbmvfqgzha")
///                     .tags(TagArgs.builder()
///                         .key("pllzblljxgv")
///                         .value("onksgozpshqfschbsuyhhui")
///                         .build())
///                     .url("dzofeppuoqkmehqcpzpezbmbvrvqbn")
///                     .build())
///                 .awsRegion("kozgryjoinum")
///                 .awsSourceSchema("kcjmzaxkkbztlm")
///                 .awsTags(Map.of("key7074", "efcntnbhiifsphfneto"))
///                 .publicCloudConnectorsResourceId("vcenimpnlashmiz")
///                 .publicCloudResourceName("aqpayfdjm")
///                 .build())
///             .resourceGroupName("rglightsailBucket")
///             .tags(Map.of("key4407", "iuaeevz"))
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
/// const lightsailBucket = new azure_native.awsconnector.LightsailBucket("lightsailBucket", {
///     location: "ctcjoqkhbmgwtqztn",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "uoyqkdsfok",
///         awsAccountId: "wqlujalgyyyfgmedzj",
///         awsProperties: {
///             ableToUpdateBundle: true,
///             accessRules: {
///                 allowPublicOverrides: true,
///                 getObject: "rzsbxpoywnkypgcjndwgjxurwaggf",
///             },
///             bucketArn: "khrxjzjloawhlsscrupp",
///             bucketName: "rbqqhyugkapyxigvfygdmmsig",
///             bundleId: "s",
///             objectVersioning: true,
///             readOnlyAccessAccounts: ["yptmppbxsgfmbvcoourx"],
///             resourcesReceivingAccess: ["abmltbmvfqgzha"],
///             tags: [{
///                 key: "pllzblljxgv",
///                 value: "onksgozpshqfschbsuyhhui",
///             }],
///             url: "dzofeppuoqkmehqcpzpezbmbvrvqbn",
///         },
///         awsRegion: "kozgryjoinum",
///         awsSourceSchema: "kcjmzaxkkbztlm",
///         awsTags: {
///             key7074: "efcntnbhiifsphfneto",
///         },
///         publicCloudConnectorsResourceId: "vcenimpnlashmiz",
///         publicCloudResourceName: "aqpayfdjm",
///     },
///     resourceGroupName: "rglightsailBucket",
///     tags: {
///         key4407: "iuaeevz",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// lightsail_bucket = azure_native.awsconnector.LightsailBucket("lightsailBucket",
///     location="ctcjoqkhbmgwtqztn",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "uoyqkdsfok",
///         "aws_account_id": "wqlujalgyyyfgmedzj",
///         "aws_properties": {
///             "able_to_update_bundle": True,
///             "access_rules": {
///                 "allow_public_overrides": True,
///                 "get_object": "rzsbxpoywnkypgcjndwgjxurwaggf",
///             },
///             "bucket_arn": "khrxjzjloawhlsscrupp",
///             "bucket_name": "rbqqhyugkapyxigvfygdmmsig",
///             "bundle_id": "s",
///             "object_versioning": True,
///             "read_only_access_accounts": ["yptmppbxsgfmbvcoourx"],
///             "resources_receiving_access": ["abmltbmvfqgzha"],
///             "tags": [{
///                 "key": "pllzblljxgv",
///                 "value": "onksgozpshqfschbsuyhhui",
///             }],
///             "url": "dzofeppuoqkmehqcpzpezbmbvrvqbn",
///         },
///         "aws_region": "kozgryjoinum",
///         "aws_source_schema": "kcjmzaxkkbztlm",
///         "aws_tags": {
///             "key7074": "efcntnbhiifsphfneto",
///         },
///         "public_cloud_connectors_resource_id": "vcenimpnlashmiz",
///         "public_cloud_resource_name": "aqpayfdjm",
///     },
///     resource_group_name="rglightsailBucket",
///     tags={
///         "key4407": "iuaeevz",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   lightsailBucket:
///     type: azure-native:awsconnector:LightsailBucket
///     properties:
///       location: ctcjoqkhbmgwtqztn
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: uoyqkdsfok
///         awsAccountId: wqlujalgyyyfgmedzj
///         awsProperties:
///           ableToUpdateBundle: true
///           accessRules:
///             allowPublicOverrides: true
///             getObject: rzsbxpoywnkypgcjndwgjxurwaggf
///           bucketArn: khrxjzjloawhlsscrupp
///           bucketName: rbqqhyugkapyxigvfygdmmsig
///           bundleId: s
///           objectVersioning: true
///           readOnlyAccessAccounts:
///             - yptmppbxsgfmbvcoourx
///           resourcesReceivingAccess:
///             - abmltbmvfqgzha
///           tags:
///             - key: pllzblljxgv
///               value: onksgozpshqfschbsuyhhui
///           url: dzofeppuoqkmehqcpzpezbmbvrvqbn
///         awsRegion: kozgryjoinum
///         awsSourceSchema: kcjmzaxkkbztlm
///         awsTags:
///           key7074: efcntnbhiifsphfneto
///         publicCloudConnectorsResourceId: vcenimpnlashmiz
///         publicCloudResourceName: aqpayfdjm
///       resourceGroupName: rglightsailBucket
///       tags:
///         key4407: iuaeevz
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
/// $ pulumi import azure-native:awsconnector:LightsailBucket rkporzdndsluhrdrkavuxzbdhl /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/lightsailBuckets/{name}
/// ```
class LightsailBucket extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<LightsailBucketPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LightsailBucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LightsailBucket]. {@macro pulumi_awsconnector_lightsail_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LightsailBucket(
    String name, {
    LightsailBucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:LightsailBucket',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LightsailBucketPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LightsailBucketPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
