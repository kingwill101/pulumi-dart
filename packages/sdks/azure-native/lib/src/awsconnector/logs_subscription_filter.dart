import 'package:pulumi/pulumi.dart' as pulumi;
import 'logs_subscription_filter_args.dart';
import 'logs_subscription_filter_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LogsSubscriptionFilters_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var logsSubscriptionFilter = new AzureNative.AwsConnector.LogsSubscriptionFilter("logsSubscriptionFilter", new()
///     {
///         Location = "chliijcrgqpxjf",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.LogsSubscriptionFilterPropertiesArgs
///         {
///             Arn = "sbvdldikixyoalpxj",
///             AwsAccountId = "fckvzypgfibfyknjwyrvmez",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsLogsSubscriptionFilterPropertiesArgs
///             {
///                 DestinationArn = "k",
///                 Distribution = AzureNative.AwsConnector.Distribution.ByLogStream,
///                 FilterName = "tboamjix",
///                 FilterPattern = "ui",
///                 LogGroupName = "ku",
///                 RoleArn = "qgjbnrzdeigsxsfrkkfiaf",
///             },
///             AwsRegion = "oogmbpnzqlvdmcntbzbsi",
///             AwsSourceSchema = "anvmszmmknfesvacxje",
///             AwsTags =
///             {
///                 { "key7628", "ipzrwulgfuznh" },
///             },
///             PublicCloudConnectorsResourceId = "ywjmogqrbdroewncecotnxyijemqjz",
///             PublicCloudResourceName = "gilkw",
///         },
///         ResourceGroupName = "rglogsSubscriptionFilter",
///         Tags =
///         {
///             { "key9410", "ajuntrgfwfnfaobudwmc" },
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
/// 		_, err := awsconnector.NewLogsSubscriptionFilter(ctx, "logsSubscriptionFilter", &awsconnector.LogsSubscriptionFilterArgs{
/// 			Location: pulumi.String("chliijcrgqpxjf"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.LogsSubscriptionFilterPropertiesArgs{
/// 				Arn:          pulumi.String("sbvdldikixyoalpxj"),
/// 				AwsAccountId: pulumi.String("fckvzypgfibfyknjwyrvmez"),
/// 				AwsProperties: &awsconnector.AwsLogsSubscriptionFilterPropertiesArgs{
/// 					DestinationArn: pulumi.String("k"),
/// 					Distribution:   pulumi.String(awsconnector.DistributionByLogStream),
/// 					FilterName:     pulumi.String("tboamjix"),
/// 					FilterPattern:  pulumi.String("ui"),
/// 					LogGroupName:   pulumi.String("ku"),
/// 					RoleArn:        pulumi.String("qgjbnrzdeigsxsfrkkfiaf"),
/// 				},
/// 				AwsRegion:       pulumi.String("oogmbpnzqlvdmcntbzbsi"),
/// 				AwsSourceSchema: pulumi.String("anvmszmmknfesvacxje"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key7628": pulumi.String("ipzrwulgfuznh"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("ywjmogqrbdroewncecotnxyijemqjz"),
/// 				PublicCloudResourceName:         pulumi.String("gilkw"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rglogsSubscriptionFilter"),
/// 			Tags: pulumi.StringMap{
/// 				"key9410": pulumi.String("ajuntrgfwfnfaobudwmc"),
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
/// import com.pulumi.azurenative.awsconnector.LogsSubscriptionFilter;
/// import com.pulumi.azurenative.awsconnector.LogsSubscriptionFilterArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LogsSubscriptionFilterPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsLogsSubscriptionFilterPropertiesArgs;
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
///         var logsSubscriptionFilter = new LogsSubscriptionFilter("logsSubscriptionFilter", LogsSubscriptionFilterArgs.builder()
///             .location("chliijcrgqpxjf")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(LogsSubscriptionFilterPropertiesArgs.builder()
///                 .arn("sbvdldikixyoalpxj")
///                 .awsAccountId("fckvzypgfibfyknjwyrvmez")
///                 .awsProperties(AwsLogsSubscriptionFilterPropertiesArgs.builder()
///                     .destinationArn("k")
///                     .distribution("ByLogStream")
///                     .filterName("tboamjix")
///                     .filterPattern("ui")
///                     .logGroupName("ku")
///                     .roleArn("qgjbnrzdeigsxsfrkkfiaf")
///                     .build())
///                 .awsRegion("oogmbpnzqlvdmcntbzbsi")
///                 .awsSourceSchema("anvmszmmknfesvacxje")
///                 .awsTags(Map.of("key7628", "ipzrwulgfuznh"))
///                 .publicCloudConnectorsResourceId("ywjmogqrbdroewncecotnxyijemqjz")
///                 .publicCloudResourceName("gilkw")
///                 .build())
///             .resourceGroupName("rglogsSubscriptionFilter")
///             .tags(Map.of("key9410", "ajuntrgfwfnfaobudwmc"))
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
/// const logsSubscriptionFilter = new azure_native.awsconnector.LogsSubscriptionFilter("logsSubscriptionFilter", {
///     location: "chliijcrgqpxjf",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "sbvdldikixyoalpxj",
///         awsAccountId: "fckvzypgfibfyknjwyrvmez",
///         awsProperties: {
///             destinationArn: "k",
///             distribution: azure_native.awsconnector.Distribution.ByLogStream,
///             filterName: "tboamjix",
///             filterPattern: "ui",
///             logGroupName: "ku",
///             roleArn: "qgjbnrzdeigsxsfrkkfiaf",
///         },
///         awsRegion: "oogmbpnzqlvdmcntbzbsi",
///         awsSourceSchema: "anvmszmmknfesvacxje",
///         awsTags: {
///             key7628: "ipzrwulgfuznh",
///         },
///         publicCloudConnectorsResourceId: "ywjmogqrbdroewncecotnxyijemqjz",
///         publicCloudResourceName: "gilkw",
///     },
///     resourceGroupName: "rglogsSubscriptionFilter",
///     tags: {
///         key9410: "ajuntrgfwfnfaobudwmc",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// logs_subscription_filter = azure_native.awsconnector.LogsSubscriptionFilter("logsSubscriptionFilter",
///     location="chliijcrgqpxjf",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "sbvdldikixyoalpxj",
///         "aws_account_id": "fckvzypgfibfyknjwyrvmez",
///         "aws_properties": {
///             "destination_arn": "k",
///             "distribution": azure_native.awsconnector.Distribution.BY_LOG_STREAM,
///             "filter_name": "tboamjix",
///             "filter_pattern": "ui",
///             "log_group_name": "ku",
///             "role_arn": "qgjbnrzdeigsxsfrkkfiaf",
///         },
///         "aws_region": "oogmbpnzqlvdmcntbzbsi",
///         "aws_source_schema": "anvmszmmknfesvacxje",
///         "aws_tags": {
///             "key7628": "ipzrwulgfuznh",
///         },
///         "public_cloud_connectors_resource_id": "ywjmogqrbdroewncecotnxyijemqjz",
///         "public_cloud_resource_name": "gilkw",
///     },
///     resource_group_name="rglogsSubscriptionFilter",
///     tags={
///         "key9410": "ajuntrgfwfnfaobudwmc",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   logsSubscriptionFilter:
///     type: azure-native:awsconnector:LogsSubscriptionFilter
///     properties:
///       location: chliijcrgqpxjf
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: sbvdldikixyoalpxj
///         awsAccountId: fckvzypgfibfyknjwyrvmez
///         awsProperties:
///           destinationArn: k
///           distribution: ByLogStream
///           filterName: tboamjix
///           filterPattern: ui
///           logGroupName: ku
///           roleArn: qgjbnrzdeigsxsfrkkfiaf
///         awsRegion: oogmbpnzqlvdmcntbzbsi
///         awsSourceSchema: anvmszmmknfesvacxje
///         awsTags:
///           key7628: ipzrwulgfuznh
///         publicCloudConnectorsResourceId: ywjmogqrbdroewncecotnxyijemqjz
///         publicCloudResourceName: gilkw
///       resourceGroupName: rglogsSubscriptionFilter
///       tags:
///         key9410: ajuntrgfwfnfaobudwmc
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
/// $ pulumi import azure-native:awsconnector:LogsSubscriptionFilter absefomwvezvofheloadtrcpwldja /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/logsSubscriptionFilters/{name}
/// ```
class LogsSubscriptionFilter extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<LogsSubscriptionFilterPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LogsSubscriptionFilter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogsSubscriptionFilter]. {@macro pulumi_awsconnector_logs_subscription_filter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogsSubscriptionFilter(
    String name, {
    LogsSubscriptionFilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:LogsSubscriptionFilter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LogsSubscriptionFilterPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LogsSubscriptionFilterPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
