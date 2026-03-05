import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'virtual_hard_disk_args.dart';
import 'virtual_hard_disk_status_response.dart';

/// The virtual hard disk resource definition.
///
/// Uses Azure REST API version 2025-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-15-preview.
///
/// Other available API versions: 2022-12-15-preview, 2023-07-01-preview, 2023-09-01-preview, 2024-01-01, 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateVirtualHardDiskFromLocal
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualHardDisk = new AzureNative.AzureStackHCI.VirtualHardDisk("virtualHardDisk", new()
///     {
///         ContainerId = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container",
///         CreateFromLocal = true,
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         Location = "West US2",
///         ResourceGroupName = "test-rg",
///         VirtualHardDiskName = "test-vhd",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewVirtualHardDisk(ctx, "virtualHardDisk", &azurestackhci.VirtualHardDiskArgs{
/// 			ContainerId:     pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container"),
/// 			CreateFromLocal: pulumi.Bool(true),
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			Location:            pulumi.String("West US2"),
/// 			ResourceGroupName:   pulumi.String("test-rg"),
/// 			VirtualHardDiskName: pulumi.String("test-vhd"),
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
/// import com.pulumi.azurenative.azurestackhci.VirtualHardDisk;
/// import com.pulumi.azurenative.azurestackhci.VirtualHardDiskArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
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
///         var virtualHardDisk = new VirtualHardDisk("virtualHardDisk", VirtualHardDiskArgs.builder()
///             .containerId("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container")
///             .createFromLocal(true)
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .location("West US2")
///             .resourceGroupName("test-rg")
///             .virtualHardDiskName("test-vhd")
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
/// const virtualHardDisk = new azure_native.azurestackhci.VirtualHardDisk("virtualHardDisk", {
///     containerId: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container",
///     createFromLocal: true,
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     location: "West US2",
///     resourceGroupName: "test-rg",
///     virtualHardDiskName: "test-vhd",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_hard_disk = azure_native.azurestackhci.VirtualHardDisk("virtualHardDisk",
///     container_id="/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container",
///     create_from_local=True,
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     location="West US2",
///     resource_group_name="test-rg",
///     virtual_hard_disk_name="test-vhd")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualHardDisk:
///     type: azure-native:azurestackhci:VirtualHardDisk
///     properties:
///       containerId: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-storage-container
///       createFromLocal: true
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       location: West US2
///       resourceGroupName: test-rg
///       virtualHardDiskName: test-vhd
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PutVirtualHardDisk
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualHardDisk = new AzureNative.AzureStackHCI.VirtualHardDisk("virtualHardDisk", new()
///     {
///         DiskSizeGB = 32,
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         Location = "West US2",
///         ResourceGroupName = "test-rg",
///         VirtualHardDiskName = "test-vhd",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewVirtualHardDisk(ctx, "virtualHardDisk", &azurestackhci.VirtualHardDiskArgs{
/// 			DiskSizeGB: pulumi.Float64(32),
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			Location:            pulumi.String("West US2"),
/// 			ResourceGroupName:   pulumi.String("test-rg"),
/// 			VirtualHardDiskName: pulumi.String("test-vhd"),
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
/// import com.pulumi.azurenative.azurestackhci.VirtualHardDisk;
/// import com.pulumi.azurenative.azurestackhci.VirtualHardDiskArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
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
///         var virtualHardDisk = new VirtualHardDisk("virtualHardDisk", VirtualHardDiskArgs.builder()
///             .diskSizeGB(32.0)
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .location("West US2")
///             .resourceGroupName("test-rg")
///             .virtualHardDiskName("test-vhd")
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
/// const virtualHardDisk = new azure_native.azurestackhci.VirtualHardDisk("virtualHardDisk", {
///     diskSizeGB: 32,
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     location: "West US2",
///     resourceGroupName: "test-rg",
///     virtualHardDiskName: "test-vhd",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_hard_disk = azure_native.azurestackhci.VirtualHardDisk("virtualHardDisk",
///     disk_size_gb=32,
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     location="West US2",
///     resource_group_name="test-rg",
///     virtual_hard_disk_name="test-vhd")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualHardDisk:
///     type: azure-native:azurestackhci:VirtualHardDisk
///     properties:
///       diskSizeGB: 32
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       location: West US2
///       resourceGroupName: test-rg
///       virtualHardDiskName: test-vhd
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
/// $ pulumi import azure-native:azurestackhci:VirtualHardDisk test-vhd /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/virtualHardDisks/{virtualHardDiskName}
/// ```
class VirtualHardDisk extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Block size in bytes
  late final pulumi.Output<int?> blockSizeBytes;
  /// Storage ContainerID of the storage container to be used for VHD
  late final pulumi.Output<String?> containerId;
  /// Boolean indicating whether it is an existing local hard disk or if one should be created.
  late final pulumi.Output<bool?> createFromLocal;
  /// The format of the actual VHD file [vhd, vhdx]
  late final pulumi.Output<String?> diskFileFormat;
  /// Size of the disk in GB
  late final pulumi.Output<double?> diskSizeGB;
  /// URL for downloading or accessing the virtual hard disk. This URL points to a secure link from where the VHD can be downloaded or accessed directly.
  late final pulumi.Output<String?> downloadUrl;
  /// Boolean for enabling dynamic sizing on the virtual hard disk
  late final pulumi.Output<bool?> dynamic_;
  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The hypervisor generation of the Virtual Machine [V1, V2]
  late final pulumi.Output<String?> hyperVGeneration;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Logical sector in bytes
  late final pulumi.Output<int?> logicalSectorBytes;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Physical sector in bytes
  late final pulumi.Output<int?> physicalSectorBytes;
  /// Provisioning state of the virtual hard disk.
  late final pulumi.Output<String> provisioningState;
  /// The observed state of virtual hard disks
  late final pulumi.Output<VirtualHardDiskStatusResponse> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [VirtualHardDisk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualHardDisk]. {@macro pulumi_azurestackhci_virtual_hard_disk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualHardDisk(
    String name, {
    VirtualHardDiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:VirtualHardDisk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    blockSizeBytes = registerOutput<int?>('blockSizeBytes');
    containerId = registerOutput<String?>('containerId');
    createFromLocal = registerOutput<bool?>('createFromLocal');
    diskFileFormat = registerOutput<String?>('diskFileFormat');
    diskSizeGB = registerOutput<double?>('diskSizeGB');
    downloadUrl = registerOutput<String?>('downloadUrl');
    dynamic_ = registerOutput<bool?>('dynamic');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hyperVGeneration = registerOutput<String?>('hyperVGeneration');
    location = registerOutput<String>('location');
    logicalSectorBytes = registerOutput<int?>('logicalSectorBytes');
    this.name = registerOutput<String>('name');
    physicalSectorBytes = registerOutput<int?>('physicalSectorBytes');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<VirtualHardDiskStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualHardDiskStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
