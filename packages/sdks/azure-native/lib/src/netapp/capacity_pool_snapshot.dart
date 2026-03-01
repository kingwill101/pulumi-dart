import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_pool_snapshot_args.dart';
import 'system_data_response.dart';

/// Snapshot of a Volume
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Snapshots_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var capacityPoolSnapshot = new AzureNative.NetApp.CapacityPoolSnapshot("capacityPoolSnapshot", new()
///     {
///         AccountName = "account1",
///         Location = "eastus",
///         PoolName = "pool1",
///         ResourceGroupName = "myRG",
///         SnapshotName = "snapshot1",
///         VolumeName = "volume1",
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
/// 	netapp "github.com/pulumi/pulumi-azure-native-sdk/netapp/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewCapacityPoolSnapshot(ctx, "capacityPoolSnapshot", &netapp.CapacityPoolSnapshotArgs{
/// 			AccountName:       pulumi.String("account1"),
/// 			Location:          pulumi.String("eastus"),
/// 			PoolName:          pulumi.String("pool1"),
/// 			ResourceGroupName: pulumi.String("myRG"),
/// 			SnapshotName:      pulumi.String("snapshot1"),
/// 			VolumeName:        pulumi.String("volume1"),
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
/// import com.pulumi.azurenative.netapp.CapacityPoolSnapshot;
/// import com.pulumi.azurenative.netapp.CapacityPoolSnapshotArgs;
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
///         var capacityPoolSnapshot = new CapacityPoolSnapshot("capacityPoolSnapshot", CapacityPoolSnapshotArgs.builder()
///             .accountName("account1")
///             .location("eastus")
///             .poolName("pool1")
///             .resourceGroupName("myRG")
///             .snapshotName("snapshot1")
///             .volumeName("volume1")
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
/// const capacityPoolSnapshot = new azure_native.netapp.CapacityPoolSnapshot("capacityPoolSnapshot", {
///     accountName: "account1",
///     location: "eastus",
///     poolName: "pool1",
///     resourceGroupName: "myRG",
///     snapshotName: "snapshot1",
///     volumeName: "volume1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// capacity_pool_snapshot = azure_native.netapp.CapacityPoolSnapshot("capacityPoolSnapshot",
///     account_name="account1",
///     location="eastus",
///     pool_name="pool1",
///     resource_group_name="myRG",
///     snapshot_name="snapshot1",
///     volume_name="volume1")
///
/// ```
///
/// ```yaml
/// resources:
///   capacityPoolSnapshot:
///     type: azure-native:netapp:CapacityPoolSnapshot
///     properties:
///       accountName: account1
///       location: eastus
///       poolName: pool1
///       resourceGroupName: myRG
///       snapshotName: snapshot1
///       volumeName: volume1
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
/// $ pulumi import azure-native:netapp:CapacityPoolSnapshot account1/pool1/volume1/snapshot1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/capacityPools/{poolName}/volumes/{volumeName}/snapshots/{snapshotName}
/// ```
class CapacityPoolSnapshot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The creation date of the snapshot
  late final pulumi.Output<String> created;
  /// Resource location
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure lifecycle management
  late final pulumi.Output<String> provisioningState;
  /// UUID v4 used to identify the Snapshot
  late final pulumi.Output<String> snapshotId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CapacityPoolSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityPoolSnapshot]. {@macro pulumi_netapp_capacity_pool_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityPoolSnapshot(
    String name, {
    CapacityPoolSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:netapp:CapacityPoolSnapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.created = registerOutput<String>('created');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.snapshotId = registerOutput<String>('snapshotId');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
