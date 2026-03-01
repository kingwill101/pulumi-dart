import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_operational_status_response.dart';
import 'system_data_response.dart';
import 'volume_args.dart';
import 'volume_type_response.dart';

/// Concrete proxy resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2023-07-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-07-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Volumes_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var volume = new AzureNative.ContainerStorage.Volume("volume", new()
///     {
///         CapacityGiB = 25838,
///         Labels =
///         {
///             { "key2039", "value2039" },
///         },
///         PoolName = "test-pool",
///         ResourceGroupName = "test-rg",
///         VolumeName = "test-volume",
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
/// 		_, err := containerstorage.NewVolume(ctx, "volume", &containerstorage.VolumeArgs{
/// 			CapacityGiB: pulumi.Float64(25838),
/// 			Labels: pulumi.StringMap{
/// 				"key2039": pulumi.String("value2039"),
/// 			},
/// 			PoolName:          pulumi.String("test-pool"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			VolumeName:        pulumi.String("test-volume"),
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
/// import com.pulumi.azurenative.containerstorage.Volume;
/// import com.pulumi.azurenative.containerstorage.VolumeArgs;
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
///         var volume = new Volume("volume", VolumeArgs.builder()
///             .capacityGiB(25838.0)
///             .labels(Map.of("key2039", "value2039"))
///             .poolName("test-pool")
///             .resourceGroupName("test-rg")
///             .volumeName("test-volume")
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
/// const volume = new azure_native.containerstorage.Volume("volume", {
///     capacityGiB: 25838,
///     labels: {
///         key2039: "value2039",
///     },
///     poolName: "test-pool",
///     resourceGroupName: "test-rg",
///     volumeName: "test-volume",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// volume = azure_native.containerstorage.Volume("volume",
///     capacity_gi_b=25838,
///     labels={
///         "key2039": "value2039",
///     },
///     pool_name="test-pool",
///     resource_group_name="test-rg",
///     volume_name="test-volume")
///
/// ```
///
/// ```yaml
/// resources:
///   volume:
///     type: azure-native:containerstorage:Volume
///     properties:
///       capacityGiB: 25838
///       labels:
///         key2039: value2039
///       poolName: test-pool
///       resourceGroupName: test-rg
///       volumeName: test-volume
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
/// $ pulumi import azure-native:containerstorage:Volume test-volume /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerStorage/pools/{poolName}/volumes/{volumeName}
/// ```
class Volume extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Requested capacity in GiB
  late final pulumi.Output<double> capacityGiB;
  /// String KV pairs indicating labels
  late final pulumi.Output<Map<String, String>> labels;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// The status of the resource.
  late final pulumi.Output<ResourceOperationalStatusResponse> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Properties of the volume
  late final pulumi.Output<VolumeTypeResponse> volumeType;

  /// Creates a new [Volume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Volume]. {@macro pulumi_containerstorage_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Volume(
    String name, {
    VolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerstorage:Volume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.capacityGiB = registerOutput<double>('capacityGiB');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.status = registerOutput<ResourceOperationalStatusResponse>('status');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
    this.volumeType = registerOutput<VolumeTypeResponse>('volumeType');
  }
}
