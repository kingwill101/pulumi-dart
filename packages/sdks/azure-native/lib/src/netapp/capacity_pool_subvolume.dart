import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_pool_subvolume_args.dart';
import 'system_data_response.dart';

/// Subvolume Information properties
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Subvolumes_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var capacityPoolSubvolume = new AzureNative.NetApp.CapacityPoolSubvolume("capacityPoolSubvolume", new()
///     {
///         AccountName = "account1",
///         Path = "/subvolumePath",
///         PoolName = "pool1",
///         ResourceGroupName = "myRG",
///         SubvolumeName = "subvolume1",
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
/// 		_, err := netapp.NewCapacityPoolSubvolume(ctx, "capacityPoolSubvolume", &netapp.CapacityPoolSubvolumeArgs{
/// 			AccountName:       pulumi.String("account1"),
/// 			Path:              pulumi.String("/subvolumePath"),
/// 			PoolName:          pulumi.String("pool1"),
/// 			ResourceGroupName: pulumi.String("myRG"),
/// 			SubvolumeName:     pulumi.String("subvolume1"),
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
/// import com.pulumi.azurenative.netapp.CapacityPoolSubvolume;
/// import com.pulumi.azurenative.netapp.CapacityPoolSubvolumeArgs;
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
///         var capacityPoolSubvolume = new CapacityPoolSubvolume("capacityPoolSubvolume", CapacityPoolSubvolumeArgs.builder()
///             .accountName("account1")
///             .path("/subvolumePath")
///             .poolName("pool1")
///             .resourceGroupName("myRG")
///             .subvolumeName("subvolume1")
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
/// const capacityPoolSubvolume = new azure_native.netapp.CapacityPoolSubvolume("capacityPoolSubvolume", {
///     accountName: "account1",
///     path: "/subvolumePath",
///     poolName: "pool1",
///     resourceGroupName: "myRG",
///     subvolumeName: "subvolume1",
///     volumeName: "volume1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// capacity_pool_subvolume = azure_native.netapp.CapacityPoolSubvolume("capacityPoolSubvolume",
///     account_name="account1",
///     path="/subvolumePath",
///     pool_name="pool1",
///     resource_group_name="myRG",
///     subvolume_name="subvolume1",
///     volume_name="volume1")
///
/// ```
///
/// ```yaml
/// resources:
///   capacityPoolSubvolume:
///     type: azure-native:netapp:CapacityPoolSubvolume
///     properties:
///       accountName: account1
///       path: /subvolumePath
///       poolName: pool1
///       resourceGroupName: myRG
///       subvolumeName: subvolume1
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
/// $ pulumi import azure-native:netapp:CapacityPoolSubvolume account1/pool1/volume1/subvolume1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/capacityPools/{poolName}/volumes/{volumeName}/subvolumes/{subvolumeName}
/// ```
class CapacityPoolSubvolume extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// parent path to the subvolume
  late final pulumi.Output<String?> parentPath;
  /// Path to the subvolume
  late final pulumi.Output<String?> path;
  /// Azure lifecycle management
  late final pulumi.Output<String> provisioningState;
  /// Truncate subvolume to the provided size in bytes
  late final pulumi.Output<double?> size;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CapacityPoolSubvolume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityPoolSubvolume]. {@macro pulumi_netapp_capacity_pool_subvolume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityPoolSubvolume(
    String name, {
    CapacityPoolSubvolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:netapp:CapacityPoolSubvolume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    parentPath = registerOutput<String?>('parentPath');
    path = registerOutput<String?>('path');
    provisioningState = registerOutput<String>('provisioningState');
    size = registerOutput<double?>('size');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
