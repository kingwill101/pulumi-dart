import 'package:pulumi/pulumi.dart' as pulumi;
import 'logs_metric_filter_args.dart';
import 'logs_metric_filter_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LogsMetricFilters_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var logsMetricFilter = new AzureNative.AwsConnector.LogsMetricFilter("logsMetricFilter", new()
///     {
///         Location = "hvjoetfjcwqioibnqqj",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.LogsMetricFilterPropertiesArgs
///         {
///             Arn = "cjjfhzeoyddkfmdmwsl",
///             AwsAccountId = "z",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsLogsMetricFilterPropertiesArgs
///             {
///                 FilterName = "xexgsguaaqmkiteqgc",
///                 FilterPattern = "xkejasx",
///                 LogGroupName = "cugxyp",
///                 MetricTransformations = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.MetricTransformationArgs
///                     {
///                         DefaultValue = 7,
///                         Dimensions = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.DimensionArgs
///                             {
///                                 Value = "rosnaljwmrdesiticsc",
///                             },
///                         },
///                         MetricName = "oybfr",
///                         MetricNamespace = "iabzdcxljvduduha",
///                         MetricValue = "rpkrrqxywciyvedsvrlbujqjenrlpr",
///                         Unit = AzureNative.AwsConnector.MetricTransformationUnit.Bits,
///                     },
///                 },
///             },
///             AwsRegion = "qjqubwwtlycfy",
///             AwsSourceSchema = "tekgcey",
///             AwsTags =
///             {
///                 { "key5547", "bdcrhaondaponausevadhudvvfitd" },
///             },
///             PublicCloudConnectorsResourceId = "dabxbsdvufxltivnlbpft",
///             PublicCloudResourceName = "ljjatut",
///         },
///         ResourceGroupName = "rglogsMetricFilter",
///         Tags =
///         {
///             { "key5537", "lpylvddirnglehlucv" },
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
/// 		_, err := awsconnector.NewLogsMetricFilter(ctx, "logsMetricFilter", &awsconnector.LogsMetricFilterArgs{
/// 			Location: pulumi.String("hvjoetfjcwqioibnqqj"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.LogsMetricFilterPropertiesArgs{
/// 				Arn:          pulumi.String("cjjfhzeoyddkfmdmwsl"),
/// 				AwsAccountId: pulumi.String("z"),
/// 				AwsProperties: &awsconnector.AwsLogsMetricFilterPropertiesArgs{
/// 					FilterName:    pulumi.String("xexgsguaaqmkiteqgc"),
/// 					FilterPattern: pulumi.String("xkejasx"),
/// 					LogGroupName:  pulumi.String("cugxyp"),
/// 					MetricTransformations: awsconnector.MetricTransformationArray{
/// 						&awsconnector.MetricTransformationArgs{
/// 							DefaultValue: pulumi.Int(7),
/// 							Dimensions: awsconnector.DimensionArray{
/// 								&awsconnector.DimensionArgs{
/// 									Value: pulumi.String("rosnaljwmrdesiticsc"),
/// 								},
/// 							},
/// 							MetricName:      pulumi.String("oybfr"),
/// 							MetricNamespace: pulumi.String("iabzdcxljvduduha"),
/// 							MetricValue:     pulumi.String("rpkrrqxywciyvedsvrlbujqjenrlpr"),
/// 							Unit:            pulumi.String(awsconnector.MetricTransformationUnitBits),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("qjqubwwtlycfy"),
/// 				AwsSourceSchema: pulumi.String("tekgcey"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key5547": pulumi.String("bdcrhaondaponausevadhudvvfitd"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("dabxbsdvufxltivnlbpft"),
/// 				PublicCloudResourceName:         pulumi.String("ljjatut"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rglogsMetricFilter"),
/// 			Tags: pulumi.StringMap{
/// 				"key5537": pulumi.String("lpylvddirnglehlucv"),
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
/// import com.pulumi.azurenative.awsconnector.LogsMetricFilter;
/// import com.pulumi.azurenative.awsconnector.LogsMetricFilterArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LogsMetricFilterPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsLogsMetricFilterPropertiesArgs;
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
///         var logsMetricFilter = new LogsMetricFilter("logsMetricFilter", LogsMetricFilterArgs.builder()
///             .location("hvjoetfjcwqioibnqqj")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(LogsMetricFilterPropertiesArgs.builder()
///                 .arn("cjjfhzeoyddkfmdmwsl")
///                 .awsAccountId("z")
///                 .awsProperties(AwsLogsMetricFilterPropertiesArgs.builder()
///                     .filterName("xexgsguaaqmkiteqgc")
///                     .filterPattern("xkejasx")
///                     .logGroupName("cugxyp")
///                     .metricTransformations(MetricTransformationArgs.builder()
///                         .defaultValue(7)
///                         .dimensions(DimensionArgs.builder()
///                             .value("rosnaljwmrdesiticsc")
///                             .build())
///                         .metricName("oybfr")
///                         .metricNamespace("iabzdcxljvduduha")
///                         .metricValue("rpkrrqxywciyvedsvrlbujqjenrlpr")
///                         .unit("Bits")
///                         .build())
///                     .build())
///                 .awsRegion("qjqubwwtlycfy")
///                 .awsSourceSchema("tekgcey")
///                 .awsTags(Map.of("key5547", "bdcrhaondaponausevadhudvvfitd"))
///                 .publicCloudConnectorsResourceId("dabxbsdvufxltivnlbpft")
///                 .publicCloudResourceName("ljjatut")
///                 .build())
///             .resourceGroupName("rglogsMetricFilter")
///             .tags(Map.of("key5537", "lpylvddirnglehlucv"))
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
/// const logsMetricFilter = new azure_native.awsconnector.LogsMetricFilter("logsMetricFilter", {
///     location: "hvjoetfjcwqioibnqqj",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "cjjfhzeoyddkfmdmwsl",
///         awsAccountId: "z",
///         awsProperties: {
///             filterName: "xexgsguaaqmkiteqgc",
///             filterPattern: "xkejasx",
///             logGroupName: "cugxyp",
///             metricTransformations: [{
///                 defaultValue: 7,
///                 dimensions: [{
///                     value: "rosnaljwmrdesiticsc",
///                 }],
///                 metricName: "oybfr",
///                 metricNamespace: "iabzdcxljvduduha",
///                 metricValue: "rpkrrqxywciyvedsvrlbujqjenrlpr",
///                 unit: azure_native.awsconnector.MetricTransformationUnit.Bits,
///             }],
///         },
///         awsRegion: "qjqubwwtlycfy",
///         awsSourceSchema: "tekgcey",
///         awsTags: {
///             key5547: "bdcrhaondaponausevadhudvvfitd",
///         },
///         publicCloudConnectorsResourceId: "dabxbsdvufxltivnlbpft",
///         publicCloudResourceName: "ljjatut",
///     },
///     resourceGroupName: "rglogsMetricFilter",
///     tags: {
///         key5537: "lpylvddirnglehlucv",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// logs_metric_filter = azure_native.awsconnector.LogsMetricFilter("logsMetricFilter",
///     location="hvjoetfjcwqioibnqqj",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "cjjfhzeoyddkfmdmwsl",
///         "aws_account_id": "z",
///         "aws_properties": {
///             "filter_name": "xexgsguaaqmkiteqgc",
///             "filter_pattern": "xkejasx",
///             "log_group_name": "cugxyp",
///             "metric_transformations": [{
///                 "default_value": 7,
///                 "dimensions": [{
///                     "value": "rosnaljwmrdesiticsc",
///                 }],
///                 "metric_name": "oybfr",
///                 "metric_namespace": "iabzdcxljvduduha",
///                 "metric_value": "rpkrrqxywciyvedsvrlbujqjenrlpr",
///                 "unit": azure_native.awsconnector.MetricTransformationUnit.BITS,
///             }],
///         },
///         "aws_region": "qjqubwwtlycfy",
///         "aws_source_schema": "tekgcey",
///         "aws_tags": {
///             "key5547": "bdcrhaondaponausevadhudvvfitd",
///         },
///         "public_cloud_connectors_resource_id": "dabxbsdvufxltivnlbpft",
///         "public_cloud_resource_name": "ljjatut",
///     },
///     resource_group_name="rglogsMetricFilter",
///     tags={
///         "key5537": "lpylvddirnglehlucv",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   logsMetricFilter:
///     type: azure-native:awsconnector:LogsMetricFilter
///     properties:
///       location: hvjoetfjcwqioibnqqj
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: cjjfhzeoyddkfmdmwsl
///         awsAccountId: z
///         awsProperties:
///           filterName: xexgsguaaqmkiteqgc
///           filterPattern: xkejasx
///           logGroupName: cugxyp
///           metricTransformations:
///             - defaultValue: 7
///               dimensions:
///                 - value: rosnaljwmrdesiticsc
///               metricName: oybfr
///               metricNamespace: iabzdcxljvduduha
///               metricValue: rpkrrqxywciyvedsvrlbujqjenrlpr
///               unit: Bits
///         awsRegion: qjqubwwtlycfy
///         awsSourceSchema: tekgcey
///         awsTags:
///           key5547: bdcrhaondaponausevadhudvvfitd
///         publicCloudConnectorsResourceId: dabxbsdvufxltivnlbpft
///         publicCloudResourceName: ljjatut
///       resourceGroupName: rglogsMetricFilter
///       tags:
///         key5537: lpylvddirnglehlucv
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
/// $ pulumi import azure-native:awsconnector:LogsMetricFilter dqrq /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/logsMetricFilters/{name}
/// ```
class LogsMetricFilter extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<LogsMetricFilterPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LogsMetricFilter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogsMetricFilter]. {@macro pulumi_awsconnector_logs_metric_filter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogsMetricFilter(
    String name, {
    LogsMetricFilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:LogsMetricFilter',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LogsMetricFilterPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
