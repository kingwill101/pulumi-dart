import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_args.dart';
import 'pool_type_response.dart';
import 'resource_operational_status_response.dart';
import 'resources_response.dart';
import 'system_data_response.dart';

/// Pool resource
///
/// Uses Azure REST API version 2023-07-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-07-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Pools_CreateOrUpdate_Ephemeral
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new AzureNative.ContainerStorage.Pool("pool", new()
///     {
///         Assignments = new[]
///         {
///             new AzureNative.ContainerStorage.Inputs.AssignmentArgs
///             {
///                 Id = "/subscriptions/bb4d87a2-4273-466c-a6ba-61d818061b3a/resourceGroups/test-rg/providers/Microsoft.ContainerService/managedClusters/containerstoragetest",
///             },
///         },
///         Location = "eastus",
///         PoolName = "test-pool",
///         PoolType = new AzureNative.ContainerStorage.Inputs.PoolTypeArgs
///         {
///             EphemeralDisk = new AzureNative.ContainerStorage.Inputs.EphemeralDiskArgs
///             {
///                 Replicas = 3,
///             },
///         },
///         ReclaimPolicy = AzureNative.ContainerStorage.ReclaimPolicy.Delete,
///         ResourceGroupName = "test-rg",
///         Resources = new AzureNative.ContainerStorage.Inputs.ResourcesArgs
///         {
///             Requests = new AzureNative.ContainerStorage.Inputs.RequestsArgs
///             {
///                 Storage = 15578,
///             },
///         },
///         Tags =
///         {
///             { "key1888", "value1888" },
///         },
///         Zones = new[]
///         {
///             AzureNative.ContainerStorage.Zone.Zone1,
///             AzureNative.ContainerStorage.Zone.Zone2,
///             AzureNative.ContainerStorage.Zone.Zone3,
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
/// 	containerstorage "github.com/pulumi/pulumi-azure-native-sdk/containerstorage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerstorage.NewPool(ctx, "pool", &containerstorage.PoolArgs{
/// 			Assignments: containerstorage.AssignmentArray{
/// 				&containerstorage.AssignmentArgs{
/// 					Id: pulumi.String("/subscriptions/bb4d87a2-4273-466c-a6ba-61d818061b3a/resourceGroups/test-rg/providers/Microsoft.ContainerService/managedClusters/containerstoragetest"),
/// 				},
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			PoolName: pulumi.String("test-pool"),
/// 			PoolType: &containerstorage.PoolTypeArgs{
/// 				EphemeralDisk: &containerstorage.EphemeralDiskArgs{
/// 					Replicas: pulumi.Float64(3),
/// 				},
/// 			},
/// 			ReclaimPolicy:     pulumi.String(containerstorage.ReclaimPolicyDelete),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			Resources: &containerstorage.ResourcesArgs{
/// 				Requests: &containerstorage.RequestsArgs{
/// 					Storage: pulumi.Float64(15578),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1888": pulumi.String("value1888"),
/// 			},
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String(containerstorage.ZoneZone1),
/// 				pulumi.String(containerstorage.ZoneZone2),
/// 				pulumi.String(containerstorage.ZoneZone3),
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
/// import com.pulumi.azurenative.containerstorage.Pool;
/// import com.pulumi.azurenative.containerstorage.PoolArgs;
/// import com.pulumi.azurenative.containerstorage.inputs.AssignmentArgs;
/// import com.pulumi.azurenative.containerstorage.inputs.PoolTypeArgs;
/// import com.pulumi.azurenative.containerstorage.inputs.EphemeralDiskArgs;
/// import com.pulumi.azurenative.containerstorage.inputs.ResourcesArgs;
/// import com.pulumi.azurenative.containerstorage.inputs.RequestsArgs;
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
///         var pool = new Pool("pool", PoolArgs.builder()
///             .assignments(AssignmentArgs.builder()
///                 .id("/subscriptions/bb4d87a2-4273-466c-a6ba-61d818061b3a/resourceGroups/test-rg/providers/Microsoft.ContainerService/managedClusters/containerstoragetest")
///                 .build())
///             .location("eastus")
///             .poolName("test-pool")
///             .poolType(PoolTypeArgs.builder()
///                 .ephemeralDisk(EphemeralDiskArgs.builder()
///                     .replicas(3.0)
///                     .build())
///                 .build())
///             .reclaimPolicy("Delete")
///             .resourceGroupName("test-rg")
///             .resources(ResourcesArgs.builder()
///                 .requests(RequestsArgs.builder()
///                     .storage(15578.0)
///                     .build())
///                 .build())
///             .tags(Map.of("key1888", "value1888"))
///             .zones(
///                 "1",
///                 "2",
///                 "3")
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
/// const pool = new azure_native.containerstorage.Pool("pool", {
///     assignments: [{
///         id: "/subscriptions/bb4d87a2-4273-466c-a6ba-61d818061b3a/resourceGroups/test-rg/providers/Microsoft.ContainerService/managedClusters/containerstoragetest",
///     }],
///     location: "eastus",
///     poolName: "test-pool",
///     poolType: {
///         ephemeralDisk: {
///             replicas: 3,
///         },
///     },
///     reclaimPolicy: azure_native.containerstorage.ReclaimPolicy.Delete,
///     resourceGroupName: "test-rg",
///     resources: {
///         requests: {
///             storage: 15578,
///         },
///     },
///     tags: {
///         key1888: "value1888",
///     },
///     zones: [
///         azure_native.containerstorage.Zone.Zone1,
///         azure_native.containerstorage.Zone.Zone2,
///         azure_native.containerstorage.Zone.Zone3,
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pool = azure_native.containerstorage.Pool("pool",
///     assignments=[{
///         "id": "/subscriptions/bb4d87a2-4273-466c-a6ba-61d818061b3a/resourceGroups/test-rg/providers/Microsoft.ContainerService/managedClusters/containerstoragetest",
///     }],
///     location="eastus",
///     pool_name="test-pool",
///     pool_type={
///         "ephemeral_disk": {
///             "replicas": 3,
///         },
///     },
///     reclaim_policy=azure_native.containerstorage.ReclaimPolicy.DELETE,
///     resource_group_name="test-rg",
///     resources={
///         "requests": {
///             "storage": 15578,
///         },
///     },
///     tags={
///         "key1888": "value1888",
///     },
///     zones=[
///         azure_native.containerstorage.Zone.ZONE1,
///         azure_native.containerstorage.Zone.ZONE2,
///         azure_native.containerstorage.Zone.ZONE3,
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   pool:
///     type: azure-native:containerstorage:Pool
///     properties:
///       assignments:
///         - id: /subscriptions/bb4d87a2-4273-466c-a6ba-61d818061b3a/resourceGroups/test-rg/providers/Microsoft.ContainerService/managedClusters/containerstoragetest
///       location: eastus
///       poolName: test-pool
///       poolType:
///         ephemeralDisk:
///           replicas: 3
///       reclaimPolicy: Delete
///       resourceGroupName: test-rg
///       resources:
///         requests:
///           storage: 15578
///       tags:
///         key1888: value1888
///       zones:
///         - '1'
///         - '2'
///         - '3'
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
/// $ pulumi import azure-native:containerstorage:Pool test-pool /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerStorage/pools/{poolName}
/// ```
class Pool extends pulumi.CustomResource {
  /// List of resources that should have access to the pool. Typically ARM references to AKS clusters or ACI Container Groups. For local and standard this must be a single reference. For ElasticSAN there can be many.
  late final pulumi.Output<List<Map<String, dynamic>>?> assignments;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Type of the Pool: ephemeralDisk, azureDisk, or elasticsan.
  late final pulumi.Output<PoolTypeResponse> poolType;

  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;

  /// ReclaimPolicy defines what happens to the backend storage when StoragePool is deleted
  late final pulumi.Output<String?> reclaimPolicy;

  /// Resources represent the resources the pool should have.
  late final pulumi.Output<ResourcesResponse?> resources;

  /// The operational status of the resource
  late final pulumi.Output<ResourceOperationalStatusResponse> status;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// List of availability zones that resources can be created in.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [Pool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pool]. {@macro pulumi_containerstorage_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pool(String name, {PoolArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:containerstorage:Pool',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    assignments = registerOutput<List<Map<String, dynamic>>?>('assignments');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    poolType = registerOutput<PoolTypeResponse>('poolType');
    provisioningState = registerOutput<String>('provisioningState');
    reclaimPolicy = registerOutput<String?>('reclaimPolicy');
    resources = registerOutput<ResourcesResponse?>('resources');
    status = registerOutput<ResourceOperationalStatusResponse>('status');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    zones = registerOutput<List<String>?>('zones');
  }
}
