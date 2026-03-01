import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_access_point_args.dart';
import 's3_access_point_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### S3AccessPoints_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var s3AccessPoint = new AzureNative.AwsConnector.S3AccessPoint("s3AccessPoint", new()
///     {
///         Location = "azmnzomeh",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.S3AccessPointPropertiesArgs
///         {
///             Arn = "dputejthukqrofpuygrkatazvamcge",
///             AwsAccountId = "rqzqzkncomjg",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsS3AccessPointPropertiesArgs
///             {
///                 Alias = "sv",
///                 Arn = "sizkkllnnrgdfkaov",
///                 Bucket = "hsqprhqjtcqrizzbhao",
///                 BucketAccountId = "bmjnxdssnshenybwnws",
///                 Name = "ve",
///                 NetworkOrigin = AzureNative.AwsConnector.NetworkOrigin.Internet,
///                 PublicAccessBlockConfiguration = new AzureNative.AwsConnector.Inputs.PublicAccessBlockConfigurationArgs
///                 {
///                     BlockPublicAcls = true,
///                     BlockPublicPolicy = true,
///                     IgnorePublicAcls = true,
///                     RestrictPublicBuckets = true,
///                 },
///                 VpcConfiguration = new AzureNative.AwsConnector.Inputs.VpcConfigurationArgs
///                 {
///                     VpcId = "hhzyvprnlxearagzmfsg",
///                 },
///             },
///             AwsRegion = "elrkktihogsptpwwazywnyyzs",
///             AwsSourceSchema = "utriogwvkzanqypvldgboyemujg",
///             AwsTags =
///             {
///                 { "key2658", "bhytpvuo" },
///             },
///             PublicCloudConnectorsResourceId = "ixhnqrsogifbzagpdzakwjxqlt",
///             PublicCloudResourceName = "swojnpzcxwqfvhrikxhgu",
///         },
///         ResourceGroupName = "rgs3AccessPoint",
///         Tags =
///         {
///             { "key2363", "vhrwgmqmjqdfyeutonv" },
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
/// 		_, err := awsconnector.NewS3AccessPoint(ctx, "s3AccessPoint", &awsconnector.S3AccessPointArgs{
/// 			Location: pulumi.String("azmnzomeh"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.S3AccessPointPropertiesArgs{
/// 				Arn:          pulumi.String("dputejthukqrofpuygrkatazvamcge"),
/// 				AwsAccountId: pulumi.String("rqzqzkncomjg"),
/// 				AwsProperties: &awsconnector.AwsS3AccessPointPropertiesArgs{
/// 					Alias:           pulumi.String("sv"),
/// 					Arn:             pulumi.String("sizkkllnnrgdfkaov"),
/// 					Bucket:          pulumi.String("hsqprhqjtcqrizzbhao"),
/// 					BucketAccountId: pulumi.String("bmjnxdssnshenybwnws"),
/// 					Name:            pulumi.String("ve"),
/// 					NetworkOrigin:   pulumi.String(awsconnector.NetworkOriginInternet),
/// 					PublicAccessBlockConfiguration: &awsconnector.PublicAccessBlockConfigurationArgs{
/// 						BlockPublicAcls:       pulumi.Bool(true),
/// 						BlockPublicPolicy:     pulumi.Bool(true),
/// 						IgnorePublicAcls:      pulumi.Bool(true),
/// 						RestrictPublicBuckets: pulumi.Bool(true),
/// 					},
/// 					VpcConfiguration: &awsconnector.VpcConfigurationArgs{
/// 						VpcId: pulumi.String("hhzyvprnlxearagzmfsg"),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("elrkktihogsptpwwazywnyyzs"),
/// 				AwsSourceSchema: pulumi.String("utriogwvkzanqypvldgboyemujg"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key2658": pulumi.String("bhytpvuo"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("ixhnqrsogifbzagpdzakwjxqlt"),
/// 				PublicCloudResourceName:         pulumi.String("swojnpzcxwqfvhrikxhgu"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgs3AccessPoint"),
/// 			Tags: pulumi.StringMap{
/// 				"key2363": pulumi.String("vhrwgmqmjqdfyeutonv"),
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
/// import com.pulumi.azurenative.awsconnector.S3AccessPoint;
/// import com.pulumi.azurenative.awsconnector.S3AccessPointArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.S3AccessPointPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsS3AccessPointPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.PublicAccessBlockConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.VpcConfigurationArgs;
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
///         var s3AccessPoint = new S3AccessPoint("s3AccessPoint", S3AccessPointArgs.builder()
///             .location("azmnzomeh")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(S3AccessPointPropertiesArgs.builder()
///                 .arn("dputejthukqrofpuygrkatazvamcge")
///                 .awsAccountId("rqzqzkncomjg")
///                 .awsProperties(AwsS3AccessPointPropertiesArgs.builder()
///                     .alias("sv")
///                     .arn("sizkkllnnrgdfkaov")
///                     .bucket("hsqprhqjtcqrizzbhao")
///                     .bucketAccountId("bmjnxdssnshenybwnws")
///                     .name("ve")
///                     .networkOrigin("Internet")
///                     .publicAccessBlockConfiguration(PublicAccessBlockConfigurationArgs.builder()
///                         .blockPublicAcls(true)
///                         .blockPublicPolicy(true)
///                         .ignorePublicAcls(true)
///                         .restrictPublicBuckets(true)
///                         .build())
///                     .vpcConfiguration(VpcConfigurationArgs.builder()
///                         .vpcId("hhzyvprnlxearagzmfsg")
///                         .build())
///                     .build())
///                 .awsRegion("elrkktihogsptpwwazywnyyzs")
///                 .awsSourceSchema("utriogwvkzanqypvldgboyemujg")
///                 .awsTags(Map.of("key2658", "bhytpvuo"))
///                 .publicCloudConnectorsResourceId("ixhnqrsogifbzagpdzakwjxqlt")
///                 .publicCloudResourceName("swojnpzcxwqfvhrikxhgu")
///                 .build())
///             .resourceGroupName("rgs3AccessPoint")
///             .tags(Map.of("key2363", "vhrwgmqmjqdfyeutonv"))
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
/// const s3AccessPoint = new azure_native.awsconnector.S3AccessPoint("s3AccessPoint", {
///     location: "azmnzomeh",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "dputejthukqrofpuygrkatazvamcge",
///         awsAccountId: "rqzqzkncomjg",
///         awsProperties: {
///             alias: "sv",
///             arn: "sizkkllnnrgdfkaov",
///             bucket: "hsqprhqjtcqrizzbhao",
///             bucketAccountId: "bmjnxdssnshenybwnws",
///             name: "ve",
///             networkOrigin: azure_native.awsconnector.NetworkOrigin.Internet,
///             publicAccessBlockConfiguration: {
///                 blockPublicAcls: true,
///                 blockPublicPolicy: true,
///                 ignorePublicAcls: true,
///                 restrictPublicBuckets: true,
///             },
///             vpcConfiguration: {
///                 vpcId: "hhzyvprnlxearagzmfsg",
///             },
///         },
///         awsRegion: "elrkktihogsptpwwazywnyyzs",
///         awsSourceSchema: "utriogwvkzanqypvldgboyemujg",
///         awsTags: {
///             key2658: "bhytpvuo",
///         },
///         publicCloudConnectorsResourceId: "ixhnqrsogifbzagpdzakwjxqlt",
///         publicCloudResourceName: "swojnpzcxwqfvhrikxhgu",
///     },
///     resourceGroupName: "rgs3AccessPoint",
///     tags: {
///         key2363: "vhrwgmqmjqdfyeutonv",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// s3_access_point = azure_native.awsconnector.S3AccessPoint("s3AccessPoint",
///     location="azmnzomeh",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "dputejthukqrofpuygrkatazvamcge",
///         "aws_account_id": "rqzqzkncomjg",
///         "aws_properties": {
///             "alias": "sv",
///             "arn": "sizkkllnnrgdfkaov",
///             "bucket": "hsqprhqjtcqrizzbhao",
///             "bucket_account_id": "bmjnxdssnshenybwnws",
///             "name": "ve",
///             "network_origin": azure_native.awsconnector.NetworkOrigin.INTERNET,
///             "public_access_block_configuration": {
///                 "block_public_acls": True,
///                 "block_public_policy": True,
///                 "ignore_public_acls": True,
///                 "restrict_public_buckets": True,
///             },
///             "vpc_configuration": {
///                 "vpc_id": "hhzyvprnlxearagzmfsg",
///             },
///         },
///         "aws_region": "elrkktihogsptpwwazywnyyzs",
///         "aws_source_schema": "utriogwvkzanqypvldgboyemujg",
///         "aws_tags": {
///             "key2658": "bhytpvuo",
///         },
///         "public_cloud_connectors_resource_id": "ixhnqrsogifbzagpdzakwjxqlt",
///         "public_cloud_resource_name": "swojnpzcxwqfvhrikxhgu",
///     },
///     resource_group_name="rgs3AccessPoint",
///     tags={
///         "key2363": "vhrwgmqmjqdfyeutonv",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   s3AccessPoint:
///     type: azure-native:awsconnector:S3AccessPoint
///     properties:
///       location: azmnzomeh
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: dputejthukqrofpuygrkatazvamcge
///         awsAccountId: rqzqzkncomjg
///         awsProperties:
///           alias: sv
///           arn: sizkkllnnrgdfkaov
///           bucket: hsqprhqjtcqrizzbhao
///           bucketAccountId: bmjnxdssnshenybwnws
///           name: ve
///           networkOrigin: Internet
///           publicAccessBlockConfiguration:
///             blockPublicAcls: true
///             blockPublicPolicy: true
///             ignorePublicAcls: true
///             restrictPublicBuckets: true
///           vpcConfiguration:
///             vpcId: hhzyvprnlxearagzmfsg
///         awsRegion: elrkktihogsptpwwazywnyyzs
///         awsSourceSchema: utriogwvkzanqypvldgboyemujg
///         awsTags:
///           key2658: bhytpvuo
///         publicCloudConnectorsResourceId: ixhnqrsogifbzagpdzakwjxqlt
///         publicCloudResourceName: swojnpzcxwqfvhrikxhgu
///       resourceGroupName: rgs3AccessPoint
///       tags:
///         key2363: vhrwgmqmjqdfyeutonv
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
/// $ pulumi import azure-native:awsconnector:S3AccessPoint zlyclqdkaecrmrt /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/s3AccessPoints/{name}
/// ```
class S3AccessPoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<S3AccessPointPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [S3AccessPoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [S3AccessPoint]. {@macro pulumi_awsconnector_s3_access_point_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  S3AccessPoint(
    String name, {
    S3AccessPointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:S3AccessPoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<S3AccessPointPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
