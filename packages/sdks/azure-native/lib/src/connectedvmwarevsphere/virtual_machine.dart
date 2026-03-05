import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'guest_agent_profile_response.dart';
import 'hardware_profile_response.dart';
import 'identity_response.dart';
import 'network_profile_response.dart';
import 'os_profile_response.dart';
import 'placement_profile_response.dart';
import 'security_profile_response.dart';
import 'storage_profile_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_args.dart';

/// Define the virtualMachine.
///
/// Uses Azure REST API version 2023-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-07-15-preview.
///
/// Other available API versions: 2022-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateVirtualMachine
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.ConnectedVMwarevSphere.VirtualMachine("virtualMachine", new()
///     {
///         ExtendedLocation = new AzureNative.ConnectedVMwarevSphere.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///             Type = "customLocation",
///         },
///         HardwareProfile = new AzureNative.ConnectedVMwarevSphere.Inputs.HardwareProfileArgs
///         {
///             MemorySizeMB = 4196,
///             NumCPUs = 4,
///         },
///         Location = "East US",
///         ResourceGroupName = "testrg",
///         ResourcePoolId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/ResourcePools/HRPool",
///         TemplateId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VirtualMachineTemplates/WebFrontEndTemplate",
///         VCenterId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter",
///         VirtualMachineName = "DemoVM",
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
/// 		_, err := connectedvmwarevsphere.NewVirtualMachine(ctx, "virtualMachine", &connectedvmwarevsphere.VirtualMachineArgs{
/// 			ExtendedLocation: &connectedvmwarevsphere.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso"),
/// 				Type: pulumi.String("customLocation"),
/// 			},
/// 			HardwareProfile: &connectedvmwarevsphere.HardwareProfileArgs{
/// 				MemorySizeMB: pulumi.Int(4196),
/// 				NumCPUs:      pulumi.Int(4),
/// 			},
/// 			Location:           pulumi.String("East US"),
/// 			ResourceGroupName:  pulumi.String("testrg"),
/// 			ResourcePoolId:     pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/ResourcePools/HRPool"),
/// 			TemplateId:         pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VirtualMachineTemplates/WebFrontEndTemplate"),
/// 			VCenterId:          pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter"),
/// 			VirtualMachineName: pulumi.String("DemoVM"),
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
/// import com.pulumi.azurenative.connectedvmwarevsphere.VirtualMachine;
/// import com.pulumi.azurenative.connectedvmwarevsphere.VirtualMachineArgs;
/// import com.pulumi.azurenative.connectedvmwarevsphere.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.connectedvmwarevsphere.inputs.HardwareProfileArgs;
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
///         var virtualMachine = new VirtualMachine("virtualMachine", VirtualMachineArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso")
///                 .type("customLocation")
///                 .build())
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .memorySizeMB(4196)
///                 .numCPUs(4)
///                 .build())
///             .location("East US")
///             .resourceGroupName("testrg")
///             .resourcePoolId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/ResourcePools/HRPool")
///             .templateId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VirtualMachineTemplates/WebFrontEndTemplate")
///             .vCenterId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter")
///             .virtualMachineName("DemoVM")
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
/// const virtualMachine = new azure_native.connectedvmwarevsphere.VirtualMachine("virtualMachine", {
///     extendedLocation: {
///         name: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         type: "customLocation",
///     },
///     hardwareProfile: {
///         memorySizeMB: 4196,
///         numCPUs: 4,
///     },
///     location: "East US",
///     resourceGroupName: "testrg",
///     resourcePoolId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/ResourcePools/HRPool",
///     templateId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VirtualMachineTemplates/WebFrontEndTemplate",
///     vCenterId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter",
///     virtualMachineName: "DemoVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.connectedvmwarevsphere.VirtualMachine("virtualMachine",
///     extended_location={
///         "name": "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         "type": "customLocation",
///     },
///     hardware_profile={
///         "memory_size_mb": 4196,
///         "num_cpus": 4,
///     },
///     location="East US",
///     resource_group_name="testrg",
///     resource_pool_id="/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/ResourcePools/HRPool",
///     template_id="/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VirtualMachineTemplates/WebFrontEndTemplate",
///     v_center_id="/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter",
///     virtual_machine_name="DemoVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:connectedvmwarevsphere:VirtualMachine
///     properties:
///       extendedLocation:
///         name: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso
///         type: customLocation
///       hardwareProfile:
///         memorySizeMB: 4196
///         numCPUs: 4
///       location: East US
///       resourceGroupName: testrg
///       resourcePoolId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/ResourcePools/HRPool
///       templateId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VirtualMachineTemplates/WebFrontEndTemplate
///       vCenterId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter
///       virtualMachineName: DemoVM
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
/// $ pulumi import azure-native:connectedvmwarevsphere:VirtualMachine DemoVM /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConnectedVMwarevSphere/virtualMachines/{virtualMachineName}
/// ```
class VirtualMachine extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets the name of the corresponding resource in Kubernetes.
  late final pulumi.Output<String> customResourceName;
  /// Gets or sets the extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// Firmware type
  late final pulumi.Output<String?> firmwareType;
  /// Gets or sets the folder path of the vm.
  late final pulumi.Output<String> folderPath;
  /// Guest agent status properties.
  late final pulumi.Output<GuestAgentProfileResponse?> guestAgentProfile;
  /// Hardware properties.
  late final pulumi.Output<HardwareProfileResponse?> hardwareProfile;
  /// The identity of the resource.
  late final pulumi.Output<IdentityResponse?> identity;
  /// Gets or sets the instance uuid of the vm.
  late final pulumi.Output<String> instanceUuid;
  /// Gets or sets the inventory Item ID for the virtual machine.
  late final pulumi.Output<String?> inventoryItemId;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  late final pulumi.Output<String?> kind;
  /// Gets or sets the location.
  late final pulumi.Output<String> location;
  /// Gets or sets the vCenter Managed Object name for the virtual machine.
  late final pulumi.Output<String> moName;
  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the virtual machine.
  late final pulumi.Output<String?> moRefId;
  /// Gets or sets the name.
  late final pulumi.Output<String> name;
  /// Network properties.
  late final pulumi.Output<NetworkProfileResponse?> networkProfile;
  /// OS properties.
  late final pulumi.Output<OsProfileResponse?> osProfile;
  /// Placement properties.
  late final pulumi.Output<PlacementProfileResponse?> placementProfile;
  /// Gets the power state of the virtual machine.
  late final pulumi.Output<String> powerState;
  /// Gets the provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Gets or sets the ARM Id of the resourcePool resource on which this virtual machine will
  /// deploy.
  late final pulumi.Output<String?> resourcePoolId;
  /// Gets the security profile.
  late final pulumi.Output<SecurityProfileResponse?> securityProfile;
  /// Gets or sets the SMBIOS UUID of the vm.
  late final pulumi.Output<String?> smbiosUuid;
  /// The resource status information.
  late final pulumi.Output<List<Map<String, dynamic>>> statuses;
  /// Storage properties.
  late final pulumi.Output<StorageProfileResponse?> storageProfile;
  /// The system data.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Gets or sets the Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets or sets the ARM Id of the template resource to deploy the virtual machine.
  late final pulumi.Output<String?> templateId;
  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;
  /// Gets or sets a unique identifier for this resource.
  late final pulumi.Output<String> uuid;
  /// Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  late final pulumi.Output<String?> vCenterId;
  /// Gets or sets a unique identifier for the vm resource.
  late final pulumi.Output<String> vmId;

  /// Creates a new [VirtualMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachine]. {@macro pulumi_connectedvmwarevsphere_virtual_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachine(
    String name, {
    VirtualMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:connectedvmwarevsphere:VirtualMachine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customResourceName = registerOutput<String>('customResourceName');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    firmwareType = registerOutput<String?>('firmwareType');
    folderPath = registerOutput<String>('folderPath');
    guestAgentProfile = registerOutput<GuestAgentProfileResponse?>('guestAgentProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GuestAgentProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hardwareProfile = registerOutput<HardwareProfileResponse?>('hardwareProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HardwareProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceUuid = registerOutput<String>('instanceUuid');
    inventoryItemId = registerOutput<String?>('inventoryItemId');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    moName = registerOutput<String>('moName');
    moRefId = registerOutput<String?>('moRefId');
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<NetworkProfileResponse?>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osProfile = registerOutput<OsProfileResponse?>('osProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    placementProfile = registerOutput<PlacementProfileResponse?>('placementProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlacementProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    powerState = registerOutput<String>('powerState');
    provisioningState = registerOutput<String>('provisioningState');
    resourcePoolId = registerOutput<String?>('resourcePoolId');
    securityProfile = registerOutput<SecurityProfileResponse?>('securityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    smbiosUuid = registerOutput<String?>('smbiosUuid');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    storageProfile = registerOutput<StorageProfileResponse?>('storageProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    templateId = registerOutput<String?>('templateId');
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
    vCenterId = registerOutput<String?>('vCenterId');
    vmId = registerOutput<String>('vmId');
  }
}
