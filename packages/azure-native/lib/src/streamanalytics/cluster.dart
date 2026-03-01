import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_sku_response.dart';

/// A Stream Analytics Cluster object
///
/// Uses Azure REST API version 2020-03-01. In version 2.x of the Azure Native provider, it used API version 2020-03-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a new cluster
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.StreamAnalytics.Cluster("cluster", new()
///     {
///         ClusterName = "An Example Cluster",
///         Location = "North US",
///         ResourceGroupName = "sjrg",
///         Sku = new AzureNative.StreamAnalytics.Inputs.ClusterSkuArgs
///         {
///             Capacity = 48,
///             Name = AzureNative.StreamAnalytics.ClusterSkuName.Default,
///         },
///         Tags =
///         {
///             { "key", "value" },
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
/// 	streamanalytics "github.com/pulumi/pulumi-azure-native-sdk/streamanalytics/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := streamanalytics.NewCluster(ctx, "cluster", &streamanalytics.ClusterArgs{
/// 			ClusterName:       pulumi.String("An Example Cluster"),
/// 			Location:          pulumi.String("North US"),
/// 			ResourceGroupName: pulumi.String("sjrg"),
/// 			Sku: &streamanalytics.ClusterSkuArgs{
/// 				Capacity: pulumi.Int(48),
/// 				Name:     pulumi.String(streamanalytics.ClusterSkuNameDefault),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
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
/// import com.pulumi.azurenative.streamanalytics.Cluster;
/// import com.pulumi.azurenative.streamanalytics.ClusterArgs;
/// import com.pulumi.azurenative.streamanalytics.inputs.ClusterSkuArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterName("An Example Cluster")
///             .location("North US")
///             .resourceGroupName("sjrg")
///             .sku(ClusterSkuArgs.builder()
///                 .capacity(48)
///                 .name("Default")
///                 .build())
///             .tags(Map.of("key", "value"))
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
/// const cluster = new azure_native.streamanalytics.Cluster("cluster", {
///     clusterName: "An Example Cluster",
///     location: "North US",
///     resourceGroupName: "sjrg",
///     sku: {
///         capacity: 48,
///         name: azure_native.streamanalytics.ClusterSkuName.Default,
///     },
///     tags: {
///         key: "value",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.streamanalytics.Cluster("cluster",
///     cluster_name="An Example Cluster",
///     location="North US",
///     resource_group_name="sjrg",
///     sku={
///         "capacity": 48,
///         "name": azure_native.streamanalytics.ClusterSkuName.DEFAULT,
///     },
///     tags={
///         "key": "value",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:streamanalytics:Cluster
///     properties:
///       clusterName: An Example Cluster
///       location: North US
///       resourceGroupName: sjrg
///       sku:
///         capacity: 48
///         name: Default
///       tags:
///         key: value
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
/// $ pulumi import azure-native:streamanalytics:Cluster An Example Cluster /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StreamAnalytics/clusters/{clusterName}
/// ```
class Cluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Represents the number of streaming units currently being used on the cluster.
  late final pulumi.Output<int> capacityAllocated;
  /// Represents the sum of the SUs of all streaming jobs associated with the cluster. If all of the jobs were running, this would be the capacity allocated.
  late final pulumi.Output<int> capacityAssigned;
  /// Unique identifier for the cluster.
  late final pulumi.Output<String> clusterId;
  /// The date this cluster was created.
  late final pulumi.Output<String> createdDate;
  /// The current entity tag for the cluster. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  late final pulumi.Output<String> etag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the cluster provisioning. The three terminal states are: Succeeded, Failed and Canceled
  late final pulumi.Output<String> provisioningState;
  /// The SKU of the cluster. This determines the size/capacity of the cluster. Required on PUT (CreateOrUpdate) requests.
  late final pulumi.Output<ClusterSkuResponse?> sku;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_streamanalytics_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:streamanalytics:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.capacityAllocated = registerOutput<int>('capacityAllocated');
    this.capacityAssigned = registerOutput<int>('capacityAssigned');
    this.clusterId = registerOutput<String>('clusterId');
    this.createdDate = registerOutput<String>('createdDate');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.sku = registerOutput<ClusterSkuResponse?>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
