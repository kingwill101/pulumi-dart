import 'package:pulumi/pulumi.dart' as pulumi;
import 'creation_data_response.dart';
import 'snapshot_args.dart';
import 'system_data_response.dart';

/// A node pool snapshot resource.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2021-08-01, 2021-09-01, 2021-10-01, 2021-11-01-preview, 2022-01-01, 2022-01-02-preview, 2022-02-01, 2022-02-02-preview, 2022-03-01, 2022-03-02-preview, 2022-04-01, 2022-04-02-preview, 2022-05-02-preview, 2022-06-01, 2022-06-02-preview, 2022-07-01, 2022-07-02-preview, 2022-08-02-preview, 2022-08-03-preview, 2022-09-01, 2022-09-02-preview, 2022-10-02-preview, 2022-11-01, 2022-11-02-preview, 2023-01-01, 2023-01-02-preview, 2023-02-01, 2023-02-02-preview, 2023-03-01, 2023-03-02-preview, 2023-04-01, 2023-04-02-preview, 2023-05-01, 2023-05-02-preview, 2023-06-01, 2023-06-02-preview, 2023-07-01, 2023-07-02-preview, 2023-08-01, 2023-08-02-preview, 2023-09-01, 2023-09-02-preview, 2023-10-01, 2023-10-02-preview, 2023-11-01, 2023-11-02-preview, 2024-01-01, 2024-01-02-preview, 2024-02-01, 2024-02-02-preview, 2024-03-02-preview, 2024-04-02-preview, 2024-05-01, 2024-05-02-preview, 2024-06-02-preview, 2024-07-01, 2024-07-02-preview, 2024-08-01, 2024-09-01, 2024-09-02-preview, 2024-10-01, 2024-10-02-preview, 2025-01-01, 2025-01-02-preview, 2025-02-01, 2025-02-02-preview, 2025-03-01, 2025-03-02-preview, 2025-04-01, 2025-04-02-preview, 2025-05-01, 2025-05-02-preview, 2025-06-02-preview, 2025-07-01, 2025-07-02-preview, 2025-08-01, 2025-08-02-preview, 2025-09-02-preview, 2025-10-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create/Update Snapshot
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snapshot = new AzureNative.ContainerService.Snapshot("snapshot", new()
///     {
///         CreationData = new AzureNative.ContainerService.Inputs.CreationDataArgs
///         {
///             SourceResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1/agentPools/pool0",
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
/// 		_, err := containerservice.NewSnapshot(ctx, "snapshot", &containerservice.SnapshotArgs{
/// 			CreationData: &containerservice.CreationDataArgs{
/// 				SourceResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1/agentPools/pool0"),
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
/// import com.pulumi.azurenative.containerservice.Snapshot;
/// import com.pulumi.azurenative.containerservice.SnapshotArgs;
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
///         var snapshot = new Snapshot("snapshot", SnapshotArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .sourceResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1/agentPools/pool0")
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
/// const snapshot = new azure_native.containerservice.Snapshot("snapshot", {
///     creationData: {
///         sourceResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1/agentPools/pool0",
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
/// snapshot = azure_native.containerservice.Snapshot("snapshot",
///     creation_data={
///         "source_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1/agentPools/pool0",
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
///   snapshot:
///     type: azure-native:containerservice:Snapshot
///     properties:
///       creationData:
///         sourceResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1/agentPools/pool0
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
/// $ pulumi import azure-native:containerservice:Snapshot snapshot1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/snapshots/{resourceName}
/// ```
class Snapshot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// CreationData to be used to specify the source agent pool resource ID to create this snapshot.
  late final pulumi.Output<CreationDataResponse?> creationData;
  /// Whether to use a FIPS-enabled OS.
  late final pulumi.Output<bool> enableFIPS;
  /// The version of Kubernetes.
  late final pulumi.Output<String> kubernetesVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The version of node image.
  late final pulumi.Output<String> nodeImageVersion;
  /// Specifies the OS SKU used by the agent pool. The default is Ubuntu if OSType is Linux. The default is Windows2019 when Kubernetes &lt;= 1.24 or Windows2022 when Kubernetes &gt;= 1.25 if OSType is Windows.
  late final pulumi.Output<String> osSku;
  /// The operating system type. The default is Linux.
  late final pulumi.Output<String> osType;
  /// The type of a snapshot. The default is NodePool.
  late final pulumi.Output<String?> snapshotType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The size of the VM.
  late final pulumi.Output<String> vmSize;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_containerservice_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerservice:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationData = registerOutput<CreationDataResponse?>('creationData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CreationDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enableFIPS = registerOutput<bool>('enableFIPS');
    kubernetesVersion = registerOutput<String>('kubernetesVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nodeImageVersion = registerOutput<String>('nodeImageVersion');
    osSku = registerOutput<String>('osSku');
    osType = registerOutput<String>('osType');
    snapshotType = registerOutput<String?>('snapshotType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    vmSize = registerOutput<String>('vmSize');
  }
}
