import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_event_subscription_args.dart';
import 'rds_event_subscription_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RdsEventSubscriptions_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rdsEventSubscription = new AzureNative.AwsConnector.RdsEventSubscription("rdsEventSubscription", new()
///     {
///         Location = "zw",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.RdsEventSubscriptionPropertiesArgs
///         {
///             Arn = "thfrxqrzoqkdimx",
///             AwsAccountId = "zfsrgkfzsvgfonnvm",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsRdsEventSubscriptionPropertiesArgs
///             {
///                 Enabled = true,
///                 EventCategories = new[]
///                 {
///                     "lvuizykyfm",
///                 },
///                 SnsTopicArn = "bztzoygofaokcwvheylcjtyhzumi",
///                 SourceIds = new[]
///                 {
///                     "yhyohxasdyzulieniumz",
///                 },
///                 SourceType = "tvb",
///                 SubscriptionName = "we",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "msbxnlvpqauwxmkadft",
///                         Value = "mfwztutpnzzxe",
///                     },
///                 },
///             },
///             AwsRegion = "sxpprlqqhjuob",
///             AwsSourceSchema = "ymnxhmzxhihjztmgswvngnhiuzw",
///             AwsTags =
///             {
///                 { "key3613", "dmf" },
///             },
///             PublicCloudConnectorsResourceId = "iyeipvkxsknmro",
///             PublicCloudResourceName = "shpjwd",
///         },
///         ResourceGroupName = "rgrdsEventSubscription",
///         Tags =
///         {
///             { "key9661", "yqugcfnhgotantrltcjoz" },
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
/// 		_, err := awsconnector.NewRdsEventSubscription(ctx, "rdsEventSubscription", &awsconnector.RdsEventSubscriptionArgs{
/// 			Location: pulumi.String("zw"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.RdsEventSubscriptionPropertiesArgs{
/// 				Arn:          pulumi.String("thfrxqrzoqkdimx"),
/// 				AwsAccountId: pulumi.String("zfsrgkfzsvgfonnvm"),
/// 				AwsProperties: &awsconnector.AwsRdsEventSubscriptionPropertiesArgs{
/// 					Enabled: pulumi.Bool(true),
/// 					EventCategories: pulumi.StringArray{
/// 						pulumi.String("lvuizykyfm"),
/// 					},
/// 					SnsTopicArn: pulumi.String("bztzoygofaokcwvheylcjtyhzumi"),
/// 					SourceIds: pulumi.StringArray{
/// 						pulumi.String("yhyohxasdyzulieniumz"),
/// 					},
/// 					SourceType:       pulumi.String("tvb"),
/// 					SubscriptionName: pulumi.String("we"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("msbxnlvpqauwxmkadft"),
/// 							Value: pulumi.String("mfwztutpnzzxe"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("sxpprlqqhjuob"),
/// 				AwsSourceSchema: pulumi.String("ymnxhmzxhihjztmgswvngnhiuzw"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key3613": pulumi.String("dmf"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("iyeipvkxsknmro"),
/// 				PublicCloudResourceName:         pulumi.String("shpjwd"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgrdsEventSubscription"),
/// 			Tags: pulumi.StringMap{
/// 				"key9661": pulumi.String("yqugcfnhgotantrltcjoz"),
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
/// import com.pulumi.azurenative.awsconnector.RdsEventSubscription;
/// import com.pulumi.azurenative.awsconnector.RdsEventSubscriptionArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RdsEventSubscriptionPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsRdsEventSubscriptionPropertiesArgs;
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
///         var rdsEventSubscription = new RdsEventSubscription("rdsEventSubscription", RdsEventSubscriptionArgs.builder()
///             .location("zw")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(RdsEventSubscriptionPropertiesArgs.builder()
///                 .arn("thfrxqrzoqkdimx")
///                 .awsAccountId("zfsrgkfzsvgfonnvm")
///                 .awsProperties(AwsRdsEventSubscriptionPropertiesArgs.builder()
///                     .enabled(true)
///                     .eventCategories("lvuizykyfm")
///                     .snsTopicArn("bztzoygofaokcwvheylcjtyhzumi")
///                     .sourceIds("yhyohxasdyzulieniumz")
///                     .sourceType("tvb")
///                     .subscriptionName("we")
///                     .tags(TagArgs.builder()
///                         .key("msbxnlvpqauwxmkadft")
///                         .value("mfwztutpnzzxe")
///                         .build())
///                     .build())
///                 .awsRegion("sxpprlqqhjuob")
///                 .awsSourceSchema("ymnxhmzxhihjztmgswvngnhiuzw")
///                 .awsTags(Map.of("key3613", "dmf"))
///                 .publicCloudConnectorsResourceId("iyeipvkxsknmro")
///                 .publicCloudResourceName("shpjwd")
///                 .build())
///             .resourceGroupName("rgrdsEventSubscription")
///             .tags(Map.of("key9661", "yqugcfnhgotantrltcjoz"))
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
/// const rdsEventSubscription = new azure_native.awsconnector.RdsEventSubscription("rdsEventSubscription", {
///     location: "zw",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "thfrxqrzoqkdimx",
///         awsAccountId: "zfsrgkfzsvgfonnvm",
///         awsProperties: {
///             enabled: true,
///             eventCategories: ["lvuizykyfm"],
///             snsTopicArn: "bztzoygofaokcwvheylcjtyhzumi",
///             sourceIds: ["yhyohxasdyzulieniumz"],
///             sourceType: "tvb",
///             subscriptionName: "we",
///             tags: [{
///                 key: "msbxnlvpqauwxmkadft",
///                 value: "mfwztutpnzzxe",
///             }],
///         },
///         awsRegion: "sxpprlqqhjuob",
///         awsSourceSchema: "ymnxhmzxhihjztmgswvngnhiuzw",
///         awsTags: {
///             key3613: "dmf",
///         },
///         publicCloudConnectorsResourceId: "iyeipvkxsknmro",
///         publicCloudResourceName: "shpjwd",
///     },
///     resourceGroupName: "rgrdsEventSubscription",
///     tags: {
///         key9661: "yqugcfnhgotantrltcjoz",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rds_event_subscription = azure_native.awsconnector.RdsEventSubscription("rdsEventSubscription",
///     location="zw",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "thfrxqrzoqkdimx",
///         "aws_account_id": "zfsrgkfzsvgfonnvm",
///         "aws_properties": {
///             "enabled": True,
///             "event_categories": ["lvuizykyfm"],
///             "sns_topic_arn": "bztzoygofaokcwvheylcjtyhzumi",
///             "source_ids": ["yhyohxasdyzulieniumz"],
///             "source_type": "tvb",
///             "subscription_name": "we",
///             "tags": [{
///                 "key": "msbxnlvpqauwxmkadft",
///                 "value": "mfwztutpnzzxe",
///             }],
///         },
///         "aws_region": "sxpprlqqhjuob",
///         "aws_source_schema": "ymnxhmzxhihjztmgswvngnhiuzw",
///         "aws_tags": {
///             "key3613": "dmf",
///         },
///         "public_cloud_connectors_resource_id": "iyeipvkxsknmro",
///         "public_cloud_resource_name": "shpjwd",
///     },
///     resource_group_name="rgrdsEventSubscription",
///     tags={
///         "key9661": "yqugcfnhgotantrltcjoz",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   rdsEventSubscription:
///     type: azure-native:awsconnector:RdsEventSubscription
///     properties:
///       location: zw
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: thfrxqrzoqkdimx
///         awsAccountId: zfsrgkfzsvgfonnvm
///         awsProperties:
///           enabled: true
///           eventCategories:
///             - lvuizykyfm
///           snsTopicArn: bztzoygofaokcwvheylcjtyhzumi
///           sourceIds:
///             - yhyohxasdyzulieniumz
///           sourceType: tvb
///           subscriptionName: we
///           tags:
///             - key: msbxnlvpqauwxmkadft
///               value: mfwztutpnzzxe
///         awsRegion: sxpprlqqhjuob
///         awsSourceSchema: ymnxhmzxhihjztmgswvngnhiuzw
///         awsTags:
///           key3613: dmf
///         publicCloudConnectorsResourceId: iyeipvkxsknmro
///         publicCloudResourceName: shpjwd
///       resourceGroupName: rgrdsEventSubscription
///       tags:
///         key9661: yqugcfnhgotantrltcjoz
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
/// $ pulumi import azure-native:awsconnector:RdsEventSubscription zquqlxcpxxejxc /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/rdsEventSubscriptions/{name}
/// ```
class RdsEventSubscription extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<RdsEventSubscriptionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RdsEventSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RdsEventSubscription]. {@macro pulumi_awsconnector_rds_event_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RdsEventSubscription(
    String name, {
    RdsEventSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:RdsEventSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RdsEventSubscriptionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RdsEventSubscriptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
