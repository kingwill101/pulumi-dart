import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'resource_pool_args.dart';
import 'system_data_response.dart';

/// Define the resourcePool.
///
/// Uses Azure REST API version 2023-12-01. In version 2.x of the Azure Native provider, it used API version 2022-07-15-preview.
///
/// Other available API versions: 2022-07-15-preview, 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateResourcePool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var resourcePool = new AzureNative.ConnectedVMwarevSphere.ResourcePool("resourcePool", new()
///     {
///         ExtendedLocation = new AzureNative.ConnectedVMwarevSphere.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///             Type = "customLocation",
///         },
///         Location = "East US",
///         MoRefId = "aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///         ResourceGroupName = "testrg",
///         ResourcePoolName = "HRPool",
///         VCenterId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter",
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
/// 	connectedvmwarevsphere "github.com/pulumi/pulumi-azure-native-sdk/connectedvmwarevsphere/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connectedvmwarevsphere.NewResourcePool(ctx, "resourcePool", &connectedvmwarevsphere.ResourcePoolArgs{
/// 			ExtendedLocation: &connectedvmwarevsphere.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso"),
/// 				Type: pulumi.String("customLocation"),
/// 			},
/// 			Location:          pulumi.String("East US"),
/// 			MoRefId:           pulumi.String("aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			ResourcePoolName:  pulumi.String("HRPool"),
/// 			VCenterId:         pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter"),
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
/// import com.pulumi.azurenative.connectedvmwarevsphere.ResourcePool;
/// import com.pulumi.azurenative.connectedvmwarevsphere.ResourcePoolArgs;
/// import com.pulumi.azurenative.connectedvmwarevsphere.inputs.ExtendedLocationArgs;
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
///         var resourcePool = new ResourcePool("resourcePool", ResourcePoolArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso")
///                 .type("customLocation")
///                 .build())
///             .location("East US")
///             .moRefId("aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee")
///             .resourceGroupName("testrg")
///             .resourcePoolName("HRPool")
///             .vCenterId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter")
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
/// const resourcePool = new azure_native.connectedvmwarevsphere.ResourcePool("resourcePool", {
///     extendedLocation: {
///         name: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         type: "customLocation",
///     },
///     location: "East US",
///     moRefId: "aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///     resourceGroupName: "testrg",
///     resourcePoolName: "HRPool",
///     vCenterId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// resource_pool = azure_native.connectedvmwarevsphere.ResourcePool("resourcePool",
///     extended_location={
///         "name": "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         "type": "customLocation",
///     },
///     location="East US",
///     mo_ref_id="aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///     resource_group_name="testrg",
///     resource_pool_name="HRPool",
///     v_center_id="/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter")
///
/// ```
///
/// ```yaml
/// resources:
///   resourcePool:
///     type: azure-native:connectedvmwarevsphere:ResourcePool
///     properties:
///       extendedLocation:
///         name: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso
///         type: customLocation
///       location: East US
///       moRefId: aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee
///       resourceGroupName: testrg
///       resourcePoolName: HRPool
///       vCenterId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter
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
/// $ pulumi import azure-native:connectedvmwarevsphere:ResourcePool HRPool /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConnectedVMwarevSphere/resourcePools/{resourcePoolName}
/// ```
class ResourcePool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Gets the max CPU usage across all cores on the pool in MHz.
  late final pulumi.Output<double> cpuCapacityMHz;

  /// Gets or sets CPULimitMHz which specifies a CPU usage limit in MHz.
  /// Utilization will not exceed this limit even if there are available resources.
  late final pulumi.Output<double> cpuLimitMHz;

  /// Gets the used CPU usage across all cores on the pool in MHz.
  late final pulumi.Output<double> cpuOverallUsageMHz;

  /// Gets or sets CPUReservationMHz which specifies the CPU size in MHz that is guaranteed
  /// to be available.
  late final pulumi.Output<double> cpuReservationMHz;

  /// Gets or sets CPUSharesLevel which specifies the CPU allocation level for this pool.
  /// This property is used in relative allocation between resource consumers.
  late final pulumi.Output<String> cpuSharesLevel;

  /// Gets the name of the corresponding resource in Kubernetes.
  late final pulumi.Output<String> customResourceName;

  /// Gets the datastore ARM ids.
  late final pulumi.Output<List<String>> datastoreIds;

  /// Gets or sets the extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// Gets or sets the inventory Item ID for the resource pool.
  late final pulumi.Output<String?> inventoryItemId;

  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  late final pulumi.Output<String?> kind;

  /// Gets or sets the location.
  late final pulumi.Output<String> location;

  /// Gets the total amount of physical memory on the pool in GB.
  late final pulumi.Output<double> memCapacityGB;

  /// Gets or sets MemLimitMB specifies a memory usage limit in megabytes.
  /// Utilization will not exceed the specified limit even if there are available resources.
  late final pulumi.Output<double> memLimitMB;

  /// Gets the used physical memory on the pool in GB.
  late final pulumi.Output<double> memOverallUsageGB;

  /// Gets or sets MemReservationMB which specifies the guaranteed available memory in
  /// megabytes.
  late final pulumi.Output<double> memReservationMB;

  /// Gets or sets CPUSharesLevel which specifies the memory allocation level for this pool.
  /// This property is used in relative allocation between resource consumers.
  late final pulumi.Output<String> memSharesLevel;

  /// Gets or sets the vCenter Managed Object name for the resource pool.
  late final pulumi.Output<String> moName;

  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the resource pool.
  late final pulumi.Output<String?> moRefId;

  /// Gets or sets the name.
  late final pulumi.Output<String> name;

  /// Gets the network ARM ids.
  late final pulumi.Output<List<String>> networkIds;

  /// Gets the provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// The resource status information.
  late final pulumi.Output<List<Map<String, dynamic>>> statuses;

  /// The system data.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Gets or sets the Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;

  /// Gets or sets a unique identifier for this resource.
  late final pulumi.Output<String> uuid;

  /// Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  late final pulumi.Output<String?> vCenterId;

  /// Creates a new [ResourcePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePool]. {@macro pulumi_connectedvmwarevsphere_resource_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePool(
    String name, {
    ResourcePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:connectedvmwarevsphere:ResourcePool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cpuCapacityMHz = registerOutput<double>('cpuCapacityMHz');
    cpuLimitMHz = registerOutput<double>('cpuLimitMHz');
    cpuOverallUsageMHz = registerOutput<double>('cpuOverallUsageMHz');
    cpuReservationMHz = registerOutput<double>('cpuReservationMHz');
    cpuSharesLevel = registerOutput<String>('cpuSharesLevel');
    customResourceName = registerOutput<String>('customResourceName');
    datastoreIds = registerOutput<List<String>>('datastoreIds');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    inventoryItemId = registerOutput<String?>('inventoryItemId');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    memCapacityGB = registerOutput<double>('memCapacityGB');
    memLimitMB = registerOutput<double>('memLimitMB');
    memOverallUsageGB = registerOutput<double>('memOverallUsageGB');
    memReservationMB = registerOutput<double>('memReservationMB');
    memSharesLevel = registerOutput<String>('memSharesLevel');
    moName = registerOutput<String>('moName');
    moRefId = registerOutput<String?>('moRefId');
    this.name = registerOutput<String>('name');
    networkIds = registerOutput<List<String>>('networkIds');
    provisioningState = registerOutput<String>('provisioningState');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
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
    uuid = registerOutput<String>('uuid');
    vCenterId = registerOutput<String?>('vCenterId');
  }
}
