import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'hardware_profile_response.dart';
import 'infrastructure_profile_response.dart';
import 'network_profile_response.dart';
import 'os_profile_for_vminstance_response.dart';
import 'placement_profile_response.dart';
import 'resource_status_response.dart';
import 'security_profile_response.dart';
import 'storage_profile_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_instance_args.dart';

/// Define the virtualMachineInstance.
///
/// Uses Azure REST API version 2023-12-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var virtualMachineInstance = new AzureNative.ConnectedVMwarevSphere.VirtualMachineInstance("virtualMachineInstance", new()
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
///         InfrastructureProfile = new AzureNative.ConnectedVMwarevSphere.Inputs.InfrastructureProfileArgs
///         {
///             TemplateId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VirtualMachineTemplates/WebFrontEndTemplate",
///             VCenterId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter",
///         },
///         PlacementProfile = new AzureNative.ConnectedVMwarevSphere.Inputs.PlacementProfileArgs
///         {
///             ResourcePoolId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/ResourcePools/HRPool",
///         },
///         ResourceUri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
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
/// 		_, err := connectedvmwarevsphere.NewVirtualMachineInstance(ctx, "virtualMachineInstance", &connectedvmwarevsphere.VirtualMachineInstanceArgs{
/// 			ExtendedLocation: &connectedvmwarevsphere.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso"),
/// 				Type: pulumi.String("customLocation"),
/// 			},
/// 			HardwareProfile: &connectedvmwarevsphere.HardwareProfileArgs{
/// 				MemorySizeMB: pulumi.Int(4196),
/// 				NumCPUs:      pulumi.Int(4),
/// 			},
/// 			InfrastructureProfile: &connectedvmwarevsphere.InfrastructureProfileArgs{
/// 				TemplateId: pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VirtualMachineTemplates/WebFrontEndTemplate"),
/// 				VCenterId:  pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter"),
/// 			},
/// 			PlacementProfile: &connectedvmwarevsphere.PlacementProfileArgs{
/// 				ResourcePoolId: pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/ResourcePools/HRPool"),
/// 			},
/// 			ResourceUri: pulumi.String("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_connectedvmwarevsphere_virtualmachineinstance" "virtualMachineInstance" {
///   extended_location = {
///     name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso"
///     type = "customLocation"
///   }
///   hardware_profile = {
///     memory_size_mb = 4196
///     num_cp_us      = 4
///   }
///   infrastructure_profile = {
///     template_id = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VirtualMachineTemplates/WebFrontEndTemplate"
///     v_center_id = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter"
///   }
///   placement_profile = {
///     resource_pool_id = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/ResourcePools/HRPool"
///   }
///   resource_uri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"
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
/// import com.pulumi.azurenative.connectedvmwarevsphere.VirtualMachineInstance;
/// import com.pulumi.azurenative.connectedvmwarevsphere.VirtualMachineInstanceArgs;
/// import com.pulumi.azurenative.connectedvmwarevsphere.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.connectedvmwarevsphere.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.connectedvmwarevsphere.inputs.InfrastructureProfileArgs;
/// import com.pulumi.azurenative.connectedvmwarevsphere.inputs.PlacementProfileArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var virtualMachineInstance = new VirtualMachineInstance("virtualMachineInstance", VirtualMachineInstanceArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso")
///                 .type("customLocation")
///                 .build())
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .memorySizeMB(4196)
///                 .numCPUs(4)
///                 .build())
///             .infrastructureProfile(InfrastructureProfileArgs.builder()
///                 .templateId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VirtualMachineTemplates/WebFrontEndTemplate")
///                 .vCenterId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter")
///                 .build())
///             .placementProfile(PlacementProfileArgs.builder()
///                 .resourcePoolId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/ResourcePools/HRPool")
///                 .build())
///             .resourceUri("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM")
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
/// const virtualMachineInstance = new azure_native.connectedvmwarevsphere.VirtualMachineInstance("virtualMachineInstance", {
///     extendedLocation: {
///         name: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         type: "customLocation",
///     },
///     hardwareProfile: {
///         memorySizeMB: 4196,
///         numCPUs: 4,
///     },
///     infrastructureProfile: {
///         templateId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VirtualMachineTemplates/WebFrontEndTemplate",
///         vCenterId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter",
///     },
///     placementProfile: {
///         resourcePoolId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/ResourcePools/HRPool",
///     },
///     resourceUri: "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_instance = azure_native.connectedvmwarevsphere.VirtualMachineInstance("virtualMachineInstance",
///     extended_location={
///         "name": "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         "type": "customLocation",
///     },
///     hardware_profile={
///         "memory_size_mb": 4196,
///         "num_cpus": 4,
///     },
///     infrastructure_profile={
///         "template_id": "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VirtualMachineTemplates/WebFrontEndTemplate",
///         "v_center_id": "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter",
///     },
///     placement_profile={
///         "resource_pool_id": "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/ResourcePools/HRPool",
///     },
///     resource_uri="subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineInstance:
///     type: azure-native:connectedvmwarevsphere:VirtualMachineInstance
///     properties:
///       extendedLocation:
///         name: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso
///         type: customLocation
///       hardwareProfile:
///         memorySizeMB: 4196
///         numCPUs: 4
///       infrastructureProfile:
///         templateId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VirtualMachineTemplates/WebFrontEndTemplate
///         vCenterId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter
///       placementProfile:
///         resourcePoolId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/ResourcePools/HRPool
///       resourceUri: subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM
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
/// $ pulumi import azure-native:connectedvmwarevsphere:VirtualMachineInstance default /{resourceUri}/providers/Microsoft.ConnectedVMwarevSphere/virtualMachineInstances/default
/// ```
class VirtualMachineInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// Hardware properties.
  late final pulumi.Output<HardwareProfileResponse?> hardwareProfile;
  /// Gets the infrastructure profile.
  late final pulumi.Output<InfrastructureProfileResponse?> infrastructureProfile;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Network properties.
  late final pulumi.Output<NetworkProfileResponse?> networkProfile;
  /// OS properties.
  late final pulumi.Output<OsProfileForVMInstanceResponse?> osProfile;
  /// Placement properties.
  late final pulumi.Output<PlacementProfileResponse?> placementProfile;
  /// Gets the power state of the virtual machine.
  late final pulumi.Output<String> powerState;
  /// Gets the provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Gets or sets a unique identifier for the vm resource.
  late final pulumi.Output<String> resourceUid;
  /// Gets the security profile.
  late final pulumi.Output<SecurityProfileResponse?> securityProfile;
  /// The resource status information.
  late final pulumi.Output<List<ResourceStatusResponse>> statuses;
  /// Storage properties.
  late final pulumi.Output<StorageProfileResponse?> storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [VirtualMachineInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineInstance]. {@macro pulumi_connectedvmwarevsphere_virtual_machine_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineInstance(
    String name, {
    VirtualMachineInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:connectedvmwarevsphere:VirtualMachineInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hardwareProfile = registerOutput<HardwareProfileResponse?>('hardwareProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HardwareProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureProfile = registerOutput<InfrastructureProfileResponse?>('infrastructureProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InfrastructureProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<NetworkProfileResponse?>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osProfile = registerOutput<OsProfileForVMInstanceResponse?>('osProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OsProfileForVMInstanceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    placementProfile = registerOutput<PlacementProfileResponse?>('placementProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlacementProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    powerState = registerOutput<String>('powerState');
    provisioningState = registerOutput<String>('provisioningState');
    resourceUid = registerOutput<String>('resourceUid');
    securityProfile = registerOutput<SecurityProfileResponse?>('securityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statuses = registerOutput<List<ResourceStatusResponse>>('statuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceStatusResponse>(guardedValue, (value) => ResourceStatusResponse.fromMap((value as Map).cast<String, dynamic>())); });
    storageProfile = registerOutput<StorageProfileResponse?>('storageProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [VirtualMachineInstance] resource.
  VirtualMachineInstance.reference(String urn)
    : super(
        'azure-native:connectedvmwarevsphere:VirtualMachineInstance',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hardwareProfile = registerOutput<HardwareProfileResponse?>('hardwareProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HardwareProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureProfile = registerOutput<InfrastructureProfileResponse?>('infrastructureProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InfrastructureProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<NetworkProfileResponse?>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osProfile = registerOutput<OsProfileForVMInstanceResponse?>('osProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OsProfileForVMInstanceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    placementProfile = registerOutput<PlacementProfileResponse?>('placementProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlacementProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    powerState = registerOutput<String>('powerState');
    provisioningState = registerOutput<String>('provisioningState');
    resourceUid = registerOutput<String>('resourceUid');
    securityProfile = registerOutput<SecurityProfileResponse?>('securityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statuses = registerOutput<List<ResourceStatusResponse>>('statuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceStatusResponse>(guardedValue, (value) => ResourceStatusResponse.fromMap((value as Map).cast<String, dynamic>())); });
    storageProfile = registerOutput<StorageProfileResponse?>('storageProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
