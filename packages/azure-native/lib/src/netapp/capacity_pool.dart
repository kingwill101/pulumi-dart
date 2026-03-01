import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_pool_args.dart';
import 'system_data_response.dart';

/// Capacity pool resource
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Pools_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var capacityPool = new AzureNative.NetApp.CapacityPool("capacityPool", new()
///     {
///         AccountName = "account1",
///         Location = "eastus",
///         PoolName = "pool1",
///         QosType = AzureNative.NetApp.QosType.Auto,
///         ResourceGroupName = "myRG",
///         ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///         Size = 4398046511104,
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
/// 		_, err := netapp.NewCapacityPool(ctx, "capacityPool", &netapp.CapacityPoolArgs{
/// 			AccountName:       pulumi.String("account1"),
/// 			Location:          pulumi.String("eastus"),
/// 			PoolName:          pulumi.String("pool1"),
/// 			QosType:           pulumi.String(netapp.QosTypeAuto),
/// 			ResourceGroupName: pulumi.String("myRG"),
/// 			ServiceLevel:      pulumi.String(netapp.ServiceLevelPremium),
/// 			Size:              pulumi.Float64(4398046511104),
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
/// import com.pulumi.azurenative.netapp.CapacityPool;
/// import com.pulumi.azurenative.netapp.CapacityPoolArgs;
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
///         var capacityPool = new CapacityPool("capacityPool", CapacityPoolArgs.builder()
///             .accountName("account1")
///             .location("eastus")
///             .poolName("pool1")
///             .qosType("Auto")
///             .resourceGroupName("myRG")
///             .serviceLevel("Premium")
///             .size(4398046511104.0)
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
/// const capacityPool = new azure_native.netapp.CapacityPool("capacityPool", {
///     accountName: "account1",
///     location: "eastus",
///     poolName: "pool1",
///     qosType: azure_native.netapp.QosType.Auto,
///     resourceGroupName: "myRG",
///     serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///     size: 4398046511104,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// capacity_pool = azure_native.netapp.CapacityPool("capacityPool",
///     account_name="account1",
///     location="eastus",
///     pool_name="pool1",
///     qos_type=azure_native.netapp.QosType.AUTO,
///     resource_group_name="myRG",
///     service_level=azure_native.netapp.ServiceLevel.PREMIUM,
///     size=4398046511104)
///
/// ```
///
/// ```yaml
/// resources:
///   capacityPool:
///     type: azure-native:netapp:CapacityPool
///     properties:
///       accountName: account1
///       location: eastus
///       poolName: pool1
///       qosType: Auto
///       resourceGroupName: myRG
///       serviceLevel: Premium
///       size: 4.398046511104e+12
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
/// $ pulumi import azure-native:netapp:CapacityPool account1/pool1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/capacityPools/{poolName}
/// ```
class CapacityPool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If enabled (true) the pool can contain cool Access enabled volumes.
  late final pulumi.Output<bool?> coolAccess;
  /// Encryption type of the capacity pool, set encryption type for data at rest for this pool and all volumes in it. This value can only be set when creating new pool.
  late final pulumi.Output<String?> encryptionType;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// UUID v4 used to identify the Pool
  late final pulumi.Output<String> poolId;
  /// Azure lifecycle management
  late final pulumi.Output<String> provisioningState;
  /// The qos type of the pool
  late final pulumi.Output<String?> qosType;
  /// The service level of the file system
  late final pulumi.Output<String> serviceLevel;
  /// Provisioned size of the pool (in bytes). Allowed values are in 1TiB chunks (value must be multiple of 1099511627776).
  late final pulumi.Output<double> size;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Total throughput of pool in MiB/s
  late final pulumi.Output<double> totalThroughputMibps;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Utilized throughput of pool in MiB/s
  late final pulumi.Output<double> utilizedThroughputMibps;

  /// Creates a new [CapacityPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityPool]. {@macro pulumi_netapp_capacity_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityPool(
    String name, {
    CapacityPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:netapp:CapacityPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.coolAccess = registerOutput<bool?>('coolAccess');
    this.encryptionType = registerOutput<String?>('encryptionType');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.poolId = registerOutput<String>('poolId');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.qosType = registerOutput<String?>('qosType');
    this.serviceLevel = registerOutput<String>('serviceLevel');
    this.size = registerOutput<double>('size');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.totalThroughputMibps = registerOutput<double>('totalThroughputMibps');
    this.type = registerOutput<String>('type');
    this.utilizedThroughputMibps = registerOutput<double>('utilizedThroughputMibps');
  }
}
