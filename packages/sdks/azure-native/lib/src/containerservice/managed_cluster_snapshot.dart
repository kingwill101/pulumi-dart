import 'package:pulumi/pulumi.dart' as pulumi;
import 'creation_data_response.dart';
import 'managed_cluster_properties_for_snapshot_response.dart';
import 'managed_cluster_snapshot_args.dart';
import 'system_data_response.dart';

/// A managed cluster snapshot resource.
///
/// Uses Azure REST API version 2024-10-02-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-02-preview.
///
/// Other available API versions: 2022-02-02-preview, 2022-03-02-preview, 2022-04-02-preview, 2022-05-02-preview, 2022-06-02-preview, 2022-07-02-preview, 2022-08-02-preview, 2022-08-03-preview, 2022-09-02-preview, 2022-10-02-preview, 2022-11-02-preview, 2023-01-02-preview, 2023-02-02-preview, 2023-03-02-preview, 2023-04-02-preview, 2023-05-02-preview, 2023-06-02-preview, 2023-07-02-preview, 2023-08-02-preview, 2023-09-02-preview, 2023-10-02-preview, 2023-11-02-preview, 2024-01-02-preview, 2024-02-02-preview, 2024-03-02-preview, 2024-04-02-preview, 2024-05-02-preview, 2024-06-02-preview, 2024-07-02-preview, 2024-09-02-preview, 2025-01-02-preview, 2025-02-02-preview, 2025-03-02-preview, 2025-04-02-preview, 2025-05-02-preview, 2025-06-02-preview, 2025-07-02-preview, 2025-08-02-preview, 2025-09-02-preview, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create/Update Managed Cluster Snapshot
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedClusterSnapshot = new AzureNative.ContainerService.ManagedClusterSnapshot("managedClusterSnapshot", new()
///     {
///         CreationData = new AzureNative.ContainerService.Inputs.CreationDataArgs
///         {
///             SourceResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1",
///         },
///         Location = "westus",
///         ResourceGroupName = "rg1",
///         ResourceName = "snapshot1",
///         Tags =
///         {
///             { "key1", "val1" },
///             { "key2", "val2" },
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedClusterSnapshot(ctx, "managedClusterSnapshot", &containerservice.ManagedClusterSnapshotArgs{
/// 			CreationData: &containerservice.CreationDataArgs{
/// 				SourceResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1"),
/// 			},
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("snapshot1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 				"key2": pulumi.String("val2"),
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
/// import com.pulumi.azurenative.containerservice.ManagedClusterSnapshot;
/// import com.pulumi.azurenative.containerservice.ManagedClusterSnapshotArgs;
/// import com.pulumi.azurenative.containerservice.inputs.CreationDataArgs;
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
///         var managedClusterSnapshot = new ManagedClusterSnapshot("managedClusterSnapshot", ManagedClusterSnapshotArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .sourceResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1")
///                 .build())
///             .location("westus")
///             .resourceGroupName("rg1")
///             .resourceName("snapshot1")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "val1"),
///                 Map.entry("key2", "val2")
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
/// const managedClusterSnapshot = new azure_native.containerservice.ManagedClusterSnapshot("managedClusterSnapshot", {
///     creationData: {
///         sourceResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1",
///     },
///     location: "westus",
///     resourceGroupName: "rg1",
///     resourceName: "snapshot1",
///     tags: {
///         key1: "val1",
///         key2: "val2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster_snapshot = azure_native.containerservice.ManagedClusterSnapshot("managedClusterSnapshot",
///     creation_data={
///         "source_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1",
///     },
///     location="westus",
///     resource_group_name="rg1",
///     resource_name_="snapshot1",
///     tags={
///         "key1": "val1",
///         "key2": "val2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedClusterSnapshot:
///     type: azure-native:containerservice:ManagedClusterSnapshot
///     properties:
///       creationData:
///         sourceResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1
///       location: westus
///       resourceGroupName: rg1
///       resourceName: snapshot1
///       tags:
///         key1: val1
///         key2: val2
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
/// $ pulumi import azure-native:containerservice:ManagedClusterSnapshot snapshot1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedclustersnapshots/{resourceName}
/// ```
class ManagedClusterSnapshot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// CreationData to be used to specify the source resource ID to create this snapshot.
  late final pulumi.Output<CreationDataResponse?> creationData;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// What the properties will be showed when getting managed cluster snapshot. Those properties are read-only.
  late final pulumi.Output<ManagedClusterPropertiesForSnapshotResponse> managedClusterPropertiesReadOnly;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of a snapshot. The default is NodePool.
  late final pulumi.Output<String?> snapshotType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedClusterSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedClusterSnapshot]. {@macro pulumi_containerservice_managed_cluster_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedClusterSnapshot(
    String name, {
    ManagedClusterSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerservice:ManagedClusterSnapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationData = registerOutput<CreationDataResponse?>('creationData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CreationDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    managedClusterPropertiesReadOnly = registerOutput<ManagedClusterPropertiesForSnapshotResponse>('managedClusterPropertiesReadOnly', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterPropertiesForSnapshotResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    snapshotType = registerOutput<String?>('snapshotType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
