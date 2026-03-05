import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_flow_log_args.dart';
import 'ec2_flow_log_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2FlowLogs_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2FlowLog = new AzureNative.AwsConnector.Ec2FlowLog("ec2FlowLog", new()
///     {
///         Location = "iheortzyczwfplyjuuqwhdtpscn",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2FlowLogPropertiesArgs
///         {
///             Arn = "ilajcrcqxitnhyhorqitssmvsfwen",
///             AwsAccountId = "shsomlkgpjnxnonvrv",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2FlowLogPropertiesArgs
///             {
///                 DeliverCrossAccountRole = "upu",
///                 DeliverLogsPermissionArn = "sfhmarwniuptmkaegsplmsozsmc",
///                 DestinationOptions = new AzureNative.AwsConnector.Inputs.DestinationOptionsModelPropertiesArgs
///                 {
///                     FileFormat = AzureNative.AwsConnector.FileFormat.Parquet,
///                     HiveCompatiblePartitions = true,
///                     PerHourPartition = true,
///                 },
///                 Id = "idflwxdxpu",
///                 LogDestination = "ztqhcrirplxmgncvubutyzqefvd",
///                 LogDestinationType = AzureNative.AwsConnector.LogDestinationType.CloudWatchLogs,
///                 LogFormat = "miqwrkvqyq",
///                 LogGroupName = "gptervjekilsbzqokcmrbumaie",
///                 MaxAggregationInterval = 15,
///                 ResourceId = "mokmavuqvq",
///                 ResourceType = "NetworkInterface",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "hpdlgqvamjjtqreaoxergrowvu",
///                         Value = "qdqsngozfinennzbilnzeemjzilpb",
///                     },
///                 },
///                 TrafficType = AzureNative.AwsConnector.TrafficType.ACCEPT,
///             },
///             AwsRegion = "stazvnpsmrpkoxyyzngdkkuif",
///             AwsSourceSchema = "pnjgqxqhnwhcs",
///             AwsTags =
///             {
///                 { "key3000", "acmzumzbkwgpabbmyshaigqlt" },
///             },
///             PublicCloudConnectorsResourceId = "djh",
///             PublicCloudResourceName = "ymv",
///         },
///         ResourceGroupName = "rgec2FlowLog",
///         Tags =
///         {
///             { "key8783", "hbgkwojrzrpoaac" },
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
/// 		_, err := awsconnector.NewEc2FlowLog(ctx, "ec2FlowLog", &awsconnector.Ec2FlowLogArgs{
/// 			Location: pulumi.String("iheortzyczwfplyjuuqwhdtpscn"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Ec2FlowLogPropertiesArgs{
/// 				Arn:          pulumi.String("ilajcrcqxitnhyhorqitssmvsfwen"),
/// 				AwsAccountId: pulumi.String("shsomlkgpjnxnonvrv"),
/// 				AwsProperties: &awsconnector.AwsEc2FlowLogPropertiesArgs{
/// 					DeliverCrossAccountRole:  pulumi.String("upu"),
/// 					DeliverLogsPermissionArn: pulumi.String("sfhmarwniuptmkaegsplmsozsmc"),
/// 					DestinationOptions: &awsconnector.DestinationOptionsModelPropertiesArgs{
/// 						FileFormat:               pulumi.String(awsconnector.FileFormatParquet),
/// 						HiveCompatiblePartitions: pulumi.Bool(true),
/// 						PerHourPartition:         pulumi.Bool(true),
/// 					},
/// 					Id:                     pulumi.String("idflwxdxpu"),
/// 					LogDestination:         pulumi.String("ztqhcrirplxmgncvubutyzqefvd"),
/// 					LogDestinationType:     pulumi.String(awsconnector.LogDestinationTypeCloudWatchLogs),
/// 					LogFormat:              pulumi.String("miqwrkvqyq"),
/// 					LogGroupName:           pulumi.String("gptervjekilsbzqokcmrbumaie"),
/// 					MaxAggregationInterval: pulumi.Int(15),
/// 					ResourceId:             pulumi.String("mokmavuqvq"),
/// 					ResourceType:           pulumi.String("NetworkInterface"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("hpdlgqvamjjtqreaoxergrowvu"),
/// 							Value: pulumi.String("qdqsngozfinennzbilnzeemjzilpb"),
/// 						},
/// 					},
/// 					TrafficType: pulumi.String(awsconnector.TrafficTypeACCEPT),
/// 				},
/// 				AwsRegion:       pulumi.String("stazvnpsmrpkoxyyzngdkkuif"),
/// 				AwsSourceSchema: pulumi.String("pnjgqxqhnwhcs"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key3000": pulumi.String("acmzumzbkwgpabbmyshaigqlt"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("djh"),
/// 				PublicCloudResourceName:         pulumi.String("ymv"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgec2FlowLog"),
/// 			Tags: pulumi.StringMap{
/// 				"key8783": pulumi.String("hbgkwojrzrpoaac"),
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
/// import com.pulumi.azurenative.awsconnector.Ec2FlowLog;
/// import com.pulumi.azurenative.awsconnector.Ec2FlowLogArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2FlowLogPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2FlowLogPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DestinationOptionsModelPropertiesArgs;
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
///         var ec2FlowLog = new Ec2FlowLog("ec2FlowLog", Ec2FlowLogArgs.builder()
///             .location("iheortzyczwfplyjuuqwhdtpscn")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Ec2FlowLogPropertiesArgs.builder()
///                 .arn("ilajcrcqxitnhyhorqitssmvsfwen")
///                 .awsAccountId("shsomlkgpjnxnonvrv")
///                 .awsProperties(AwsEc2FlowLogPropertiesArgs.builder()
///                     .deliverCrossAccountRole("upu")
///                     .deliverLogsPermissionArn("sfhmarwniuptmkaegsplmsozsmc")
///                     .destinationOptions(DestinationOptionsModelPropertiesArgs.builder()
///                         .fileFormat("parquet")
///                         .hiveCompatiblePartitions(true)
///                         .perHourPartition(true)
///                         .build())
///                     .id("idflwxdxpu")
///                     .logDestination("ztqhcrirplxmgncvubutyzqefvd")
///                     .logDestinationType("cloud-watch-logs")
///                     .logFormat("miqwrkvqyq")
///                     .logGroupName("gptervjekilsbzqokcmrbumaie")
///                     .maxAggregationInterval(15)
///                     .resourceId("mokmavuqvq")
///                     .resourceType("NetworkInterface")
///                     .tags(TagArgs.builder()
///                         .key("hpdlgqvamjjtqreaoxergrowvu")
///                         .value("qdqsngozfinennzbilnzeemjzilpb")
///                         .build())
///                     .trafficType("ACCEPT")
///                     .build())
///                 .awsRegion("stazvnpsmrpkoxyyzngdkkuif")
///                 .awsSourceSchema("pnjgqxqhnwhcs")
///                 .awsTags(Map.of("key3000", "acmzumzbkwgpabbmyshaigqlt"))
///                 .publicCloudConnectorsResourceId("djh")
///                 .publicCloudResourceName("ymv")
///                 .build())
///             .resourceGroupName("rgec2FlowLog")
///             .tags(Map.of("key8783", "hbgkwojrzrpoaac"))
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
/// const ec2FlowLog = new azure_native.awsconnector.Ec2FlowLog("ec2FlowLog", {
///     location: "iheortzyczwfplyjuuqwhdtpscn",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "ilajcrcqxitnhyhorqitssmvsfwen",
///         awsAccountId: "shsomlkgpjnxnonvrv",
///         awsProperties: {
///             deliverCrossAccountRole: "upu",
///             deliverLogsPermissionArn: "sfhmarwniuptmkaegsplmsozsmc",
///             destinationOptions: {
///                 fileFormat: azure_native.awsconnector.FileFormat.Parquet,
///                 hiveCompatiblePartitions: true,
///                 perHourPartition: true,
///             },
///             id: "idflwxdxpu",
///             logDestination: "ztqhcrirplxmgncvubutyzqefvd",
///             logDestinationType: azure_native.awsconnector.LogDestinationType.CloudWatchLogs,
///             logFormat: "miqwrkvqyq",
///             logGroupName: "gptervjekilsbzqokcmrbumaie",
///             maxAggregationInterval: 15,
///             resourceId: "mokmavuqvq",
///             resourceType: "NetworkInterface",
///             tags: [{
///                 key: "hpdlgqvamjjtqreaoxergrowvu",
///                 value: "qdqsngozfinennzbilnzeemjzilpb",
///             }],
///             trafficType: azure_native.awsconnector.TrafficType.ACCEPT,
///         },
///         awsRegion: "stazvnpsmrpkoxyyzngdkkuif",
///         awsSourceSchema: "pnjgqxqhnwhcs",
///         awsTags: {
///             key3000: "acmzumzbkwgpabbmyshaigqlt",
///         },
///         publicCloudConnectorsResourceId: "djh",
///         publicCloudResourceName: "ymv",
///     },
///     resourceGroupName: "rgec2FlowLog",
///     tags: {
///         key8783: "hbgkwojrzrpoaac",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_flow_log = azure_native.awsconnector.Ec2FlowLog("ec2FlowLog",
///     location="iheortzyczwfplyjuuqwhdtpscn",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "ilajcrcqxitnhyhorqitssmvsfwen",
///         "aws_account_id": "shsomlkgpjnxnonvrv",
///         "aws_properties": {
///             "deliver_cross_account_role": "upu",
///             "deliver_logs_permission_arn": "sfhmarwniuptmkaegsplmsozsmc",
///             "destination_options": {
///                 "file_format": azure_native.awsconnector.FileFormat.PARQUET,
///                 "hive_compatible_partitions": True,
///                 "per_hour_partition": True,
///             },
///             "id": "idflwxdxpu",
///             "log_destination": "ztqhcrirplxmgncvubutyzqefvd",
///             "log_destination_type": azure_native.awsconnector.LogDestinationType.CLOUD_WATCH_LOGS,
///             "log_format": "miqwrkvqyq",
///             "log_group_name": "gptervjekilsbzqokcmrbumaie",
///             "max_aggregation_interval": 15,
///             "resource_id": "mokmavuqvq",
///             "resource_type": "NetworkInterface",
///             "tags": [{
///                 "key": "hpdlgqvamjjtqreaoxergrowvu",
///                 "value": "qdqsngozfinennzbilnzeemjzilpb",
///             }],
///             "traffic_type": azure_native.awsconnector.TrafficType.ACCEPT,
///         },
///         "aws_region": "stazvnpsmrpkoxyyzngdkkuif",
///         "aws_source_schema": "pnjgqxqhnwhcs",
///         "aws_tags": {
///             "key3000": "acmzumzbkwgpabbmyshaigqlt",
///         },
///         "public_cloud_connectors_resource_id": "djh",
///         "public_cloud_resource_name": "ymv",
///     },
///     resource_group_name="rgec2FlowLog",
///     tags={
///         "key8783": "hbgkwojrzrpoaac",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ec2FlowLog:
///     type: azure-native:awsconnector:Ec2FlowLog
///     properties:
///       location: iheortzyczwfplyjuuqwhdtpscn
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: ilajcrcqxitnhyhorqitssmvsfwen
///         awsAccountId: shsomlkgpjnxnonvrv
///         awsProperties:
///           deliverCrossAccountRole: upu
///           deliverLogsPermissionArn: sfhmarwniuptmkaegsplmsozsmc
///           destinationOptions:
///             fileFormat: parquet
///             hiveCompatiblePartitions: true
///             perHourPartition: true
///           id: idflwxdxpu
///           logDestination: ztqhcrirplxmgncvubutyzqefvd
///           logDestinationType: cloud-watch-logs
///           logFormat: miqwrkvqyq
///           logGroupName: gptervjekilsbzqokcmrbumaie
///           maxAggregationInterval: 15
///           resourceId: mokmavuqvq
///           resourceType: NetworkInterface
///           tags:
///             - key: hpdlgqvamjjtqreaoxergrowvu
///               value: qdqsngozfinennzbilnzeemjzilpb
///           trafficType: ACCEPT
///         awsRegion: stazvnpsmrpkoxyyzngdkkuif
///         awsSourceSchema: pnjgqxqhnwhcs
///         awsTags:
///           key3000: acmzumzbkwgpabbmyshaigqlt
///         publicCloudConnectorsResourceId: djh
///         publicCloudResourceName: ymv
///       resourceGroupName: rgec2FlowLog
///       tags:
///         key8783: hbgkwojrzrpoaac
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
/// $ pulumi import azure-native:awsconnector:Ec2FlowLog tpcivqsrlbvmapaplm /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ec2FlowLogs/{name}
/// ```
class Ec2FlowLog extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2FlowLogPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2FlowLog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2FlowLog]. {@macro pulumi_awsconnector_ec2_flow_log_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2FlowLog(
    String name, {
    Ec2FlowLogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:Ec2FlowLog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2FlowLogPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Ec2FlowLogPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
