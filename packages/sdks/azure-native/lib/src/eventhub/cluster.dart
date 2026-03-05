import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_sku_response.dart';
import 'system_data_response.dart';

/// Single Event Hubs Cluster resource in List or Get operations.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ClusterPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.EventHub.Cluster("cluster", new()
///     {
///         ClusterName = "testCluster",
///         Location = "South Central US",
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.EventHub.Inputs.ClusterSkuArgs
///         {
///             Capacity = 1,
///             Name = AzureNative.EventHub.ClusterSkuName.Dedicated,
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
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
/// 	eventhub "github.com/pulumi/pulumi-azure-native-sdk/eventhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventhub.NewCluster(ctx, "cluster", &eventhub.ClusterArgs{
/// 			ClusterName:       pulumi.String("testCluster"),
/// 			Location:          pulumi.String("South Central US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &eventhub.ClusterSkuArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String(eventhub.ClusterSkuNameDedicated),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
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
/// import com.pulumi.azurenative.eventhub.Cluster;
/// import com.pulumi.azurenative.eventhub.ClusterArgs;
/// import com.pulumi.azurenative.eventhub.inputs.ClusterSkuArgs;
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
///             .clusterName("testCluster")
///             .location("South Central US")
///             .resourceGroupName("myResourceGroup")
///             .sku(ClusterSkuArgs.builder()
///                 .capacity(1)
///                 .name("Dedicated")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
///             ))
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
/// const cluster = new azure_native.eventhub.Cluster("cluster", {
///     clusterName: "testCluster",
///     location: "South Central US",
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 1,
///         name: azure_native.eventhub.ClusterSkuName.Dedicated,
///     },
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.eventhub.Cluster("cluster",
///     cluster_name="testCluster",
///     location="South Central US",
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 1,
///         "name": azure_native.eventhub.ClusterSkuName.DEDICATED,
///     },
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:eventhub:Cluster
///     properties:
///       clusterName: testCluster
///       location: South Central US
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 1
///         name: Dedicated
///       tags:
///         tag1: value1
///         tag2: value2
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
/// $ pulumi import azure-native:eventhub:Cluster testCluster /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/clusters/{clusterName}
/// ```
class Cluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The UTC time when the Event Hubs Cluster was created.
  late final pulumi.Output<String> createdAt;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// The metric ID of the cluster resource. Provided by the service and not modifiable by the user.
  late final pulumi.Output<String> metricId;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Provisioning state of the Cluster.
  late final pulumi.Output<String> provisioningState;

  /// Properties of the cluster SKU.
  late final pulumi.Output<ClusterSkuResponse?> sku;

  /// Status of the Cluster resource
  late final pulumi.Output<String> status;

  /// A value that indicates whether Scaling is Supported.
  late final pulumi.Output<bool?> supportsScaling;

  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// The UTC time when the Event Hubs Cluster was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_eventhub_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:eventhub:Cluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdAt = registerOutput<String>('createdAt');
    location = registerOutput<String?>('location');
    metricId = registerOutput<String>('metricId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<ClusterSkuResponse?>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ClusterSkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<String>('status');
    supportsScaling = registerOutput<bool?>('supportsScaling');
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
    updatedAt = registerOutput<String>('updatedAt');
  }
}
