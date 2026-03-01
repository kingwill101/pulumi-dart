import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_status_response.dart';
import 'gen1_environment_args.dart';
import 'sku_response.dart';
import 'time_series_id_property_response.dart';

/// An environment is a set of time-series data available for query, and is the top level Azure Time Series Insights resource. Gen1 environments have data retention limits.
///
/// Uses Azure REST API version 2020-05-15. In version 2.x of the Azure Native provider, it used API version 2020-05-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EnvironmentsCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gen1Environment = new AzureNative.TimeSeriesInsights.Gen1Environment("gen1Environment", new()
///     {
///         DataRetentionTime = "P31D",
///         EnvironmentName = "env1",
///         Kind = "Gen1",
///         Location = "West US",
///         PartitionKeyProperties = new[]
///         {
///             new AzureNative.TimeSeriesInsights.Inputs.TimeSeriesIdPropertyArgs
///             {
///                 Name = "DeviceId1",
///                 Type = AzureNative.TimeSeriesInsights.PropertyType.String,
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.TimeSeriesInsights.Inputs.SkuArgs
///         {
///             Capacity = 1,
///             Name = AzureNative.TimeSeriesInsights.SkuName.S1,
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
/// 	timeseriesinsights "github.com/pulumi/pulumi-azure-native-sdk/timeseriesinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := timeseriesinsights.NewGen1Environment(ctx, "gen1Environment", &timeseriesinsights.Gen1EnvironmentArgs{
/// 			DataRetentionTime: pulumi.String("P31D"),
/// 			EnvironmentName:   pulumi.String("env1"),
/// 			Kind:              pulumi.String("Gen1"),
/// 			Location:          pulumi.String("West US"),
/// 			PartitionKeyProperties: timeseriesinsights.TimeSeriesIdPropertyArray{
/// 				&timeseriesinsights.TimeSeriesIdPropertyArgs{
/// 					Name: pulumi.String("DeviceId1"),
/// 					Type: pulumi.String(timeseriesinsights.PropertyTypeString),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &timeseriesinsights.SkuArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String(timeseriesinsights.SkuNameS1),
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
/// import com.pulumi.azurenative.timeseriesinsights.Gen1Environment;
/// import com.pulumi.azurenative.timeseriesinsights.Gen1EnvironmentArgs;
/// import com.pulumi.azurenative.timeseriesinsights.inputs.TimeSeriesIdPropertyArgs;
/// import com.pulumi.azurenative.timeseriesinsights.inputs.SkuArgs;
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
///         var gen1Environment = new Gen1Environment("gen1Environment", Gen1EnvironmentArgs.builder()
///             .dataRetentionTime("P31D")
///             .environmentName("env1")
///             .kind("Gen1")
///             .location("West US")
///             .partitionKeyProperties(TimeSeriesIdPropertyArgs.builder()
///                 .name("DeviceId1")
///                 .type("String")
///                 .build())
///             .resourceGroupName("rg1")
///             .sku(SkuArgs.builder()
///                 .capacity(1)
///                 .name("S1")
///                 .build())
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
/// const gen1Environment = new azure_native.timeseriesinsights.Gen1Environment("gen1Environment", {
///     dataRetentionTime: "P31D",
///     environmentName: "env1",
///     kind: "Gen1",
///     location: "West US",
///     partitionKeyProperties: [{
///         name: "DeviceId1",
///         type: azure_native.timeseriesinsights.PropertyType.String,
///     }],
///     resourceGroupName: "rg1",
///     sku: {
///         capacity: 1,
///         name: azure_native.timeseriesinsights.SkuName.S1,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gen1_environment = azure_native.timeseriesinsights.Gen1Environment("gen1Environment",
///     data_retention_time="P31D",
///     environment_name="env1",
///     kind="Gen1",
///     location="West US",
///     partition_key_properties=[{
///         "name": "DeviceId1",
///         "type": azure_native.timeseriesinsights.PropertyType.STRING,
///     }],
///     resource_group_name="rg1",
///     sku={
///         "capacity": 1,
///         "name": azure_native.timeseriesinsights.SkuName.S1,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   gen1Environment:
///     type: azure-native:timeseriesinsights:Gen1Environment
///     properties:
///       dataRetentionTime: P31D
///       environmentName: env1
///       kind: Gen1
///       location: West US
///       partitionKeyProperties:
///         - name: DeviceId1
///           type: String
///       resourceGroupName: rg1
///       sku:
///         capacity: 1
///         name: S1
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
/// $ pulumi import azure-native:timeseriesinsights:Gen1Environment env1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TimeSeriesInsights/environments/{environmentName}
/// ```
class Gen1Environment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The time the resource was created.
  late final pulumi.Output<String> creationTime;
  /// The fully qualified domain name used to access the environment data, e.g. to query the environment's events or upload reference data for the environment.
  late final pulumi.Output<String> dataAccessFqdn;
  /// An id used to access the environment data, e.g. to query the environment's events or upload reference data for the environment.
  late final pulumi.Output<String> dataAccessId;
  /// ISO8601 timespan specifying the minimum number of days the environment's events will be available for query.
  late final pulumi.Output<String> dataRetentionTime;
  /// The kind of the environment.
  /// Expected value is 'Gen1'.
  late final pulumi.Output<String> kind;
  /// Resource location
  late final pulumi.Output<String> location;
  /// Resource name
  late final pulumi.Output<String> name;
  /// The list of event properties which will be used to partition data in the environment. Currently, only a single partition key property is supported.
  late final pulumi.Output<List<TimeSeriesIdPropertyResponse>?> partitionKeyProperties;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The sku determines the type of environment, either Gen1 (S1 or S2) or Gen2 (L1). For Gen1 environments the sku determines the capacity of the environment, the ingress rate, and the billing rate.
  late final pulumi.Output<SkuResponse> sku;
  /// An object that represents the status of the environment, and its internal state in the Time Series Insights service.
  late final pulumi.Output<EnvironmentStatusResponse> status;
  /// The behavior the Time Series Insights service should take when the environment's capacity has been exceeded. If "PauseIngress" is specified, new events will not be read from the event source. If "PurgeOldData" is specified, new events will continue to be read and old events will be deleted from the environment. The default behavior is PurgeOldData.
  late final pulumi.Output<String?> storageLimitExceededBehavior;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [Gen1Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gen1Environment]. {@macro pulumi_timeseriesinsights_gen1_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gen1Environment(
    String name, {
    Gen1EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:timeseriesinsights:Gen1Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.creationTime = registerOutput<String>('creationTime');
    this.dataAccessFqdn = registerOutput<String>('dataAccessFqdn');
    this.dataAccessId = registerOutput<String>('dataAccessId');
    this.dataRetentionTime = registerOutput<String>('dataRetentionTime');
    this.kind = registerOutput<String>('kind');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.partitionKeyProperties = registerOutput<List<TimeSeriesIdPropertyResponse>?>('partitionKeyProperties');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.sku = registerOutput<SkuResponse>('sku');
    this.status = registerOutput<EnvironmentStatusResponse>('status');
    this.storageLimitExceededBehavior = registerOutput<String?>('storageLimitExceededBehavior');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
