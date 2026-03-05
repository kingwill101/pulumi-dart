import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_bare_metal_instance_args.dart';
import 'hardware_profile_response.dart';
import 'network_profile_response.dart';
import 'osprofile_response.dart';
import 'storage_profile_response.dart';
import 'system_data_response.dart';

/// AzureBareMetal instance info on Azure (ARM properties and AzureBareMetal properties)
///
/// Uses Azure REST API version 2024-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-08-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AzureBareMetalInstances_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureBareMetalInstance = new AzureNative.BareMetalInfrastructure.AzureBareMetalInstance("azureBareMetalInstance", new()
///     {
///         AzureBareMetalInstanceId = "23415635-4d7e-41dc-9598-8194f22c24e1",
///         AzureBareMetalInstanceName = "myBMIInstance",
///         HardwareProfile = new AzureNative.BareMetalInfrastructure.Inputs.HardwareProfileArgs
///         {
///             AzureBareMetalInstanceSize = AzureNative.BareMetalInfrastructure.AzureBareMetalInstanceSizeNamesEnum.S72,
///             HardwareType = AzureNative.BareMetalInfrastructure.AzureBareMetalHardwareTypeNamesEnum.Cisco_UCS,
///         },
///         HwRevision = "Rev 3",
///         Location = "westus",
///         NetworkProfile = new AzureNative.BareMetalInfrastructure.Inputs.NetworkProfileArgs
///         {
///             CircuitId = "/subscriptions/f0f4887f-d13c-4943-a8ba-d7da28d2a3fd/resourceGroups/myResourceGroup/providers/Microsoft.Network/expressRouteCircuit",
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.BareMetalInfrastructure.Inputs.NetworkInterfaceArgs
///                 {
///                     IpAddress = "100.100.100.100",
///                 },
///             },
///         },
///         OsProfile = new AzureNative.BareMetalInfrastructure.Inputs.OSProfileArgs
///         {
///             ComputerName = "myComputerName",
///             OsType = "SUSE",
///             SshPublicKey = "{ssh-rsa public key}",
///             Version = "12 SP1",
///         },
///         PowerState = AzureNative.BareMetalInfrastructure.AzureBareMetalInstancePowerStateEnum.Started,
///         ProximityPlacementGroup = "/subscriptions/f0f4887f-d13c-4943-a8ba-d7da28d2a3fd/resourceGroups/myResourceGroup/providers/Microsoft.Compute/proximityPlacementGroups/myplacementgroup",
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.BareMetalInfrastructure.Inputs.StorageProfileArgs
///         {
///             NfsIpAddress = "200.200.200.200",
///         },
///         Tags =
///         {
///             { "testkey", "testvalue" },
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
/// 	baremetalinfrastructure "github.com/pulumi/pulumi-azure-native-sdk/baremetalinfrastructure/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := baremetalinfrastructure.NewAzureBareMetalInstance(ctx, "azureBareMetalInstance", &baremetalinfrastructure.AzureBareMetalInstanceArgs{
/// 			AzureBareMetalInstanceId:   pulumi.String("23415635-4d7e-41dc-9598-8194f22c24e1"),
/// 			AzureBareMetalInstanceName: pulumi.String("myBMIInstance"),
/// 			HardwareProfile: &baremetalinfrastructure.HardwareProfileArgs{
/// 				AzureBareMetalInstanceSize: pulumi.String(baremetalinfrastructure.AzureBareMetalInstanceSizeNamesEnumS72),
/// 				HardwareType:               pulumi.String(baremetalinfrastructure.AzureBareMetalHardwareTypeNamesEnum_Cisco_UCS),
/// 			},
/// 			HwRevision: pulumi.String("Rev 3"),
/// 			Location:   pulumi.String("westus"),
/// 			NetworkProfile: &baremetalinfrastructure.NetworkProfileArgs{
/// 				CircuitId: pulumi.String("/subscriptions/f0f4887f-d13c-4943-a8ba-d7da28d2a3fd/resourceGroups/myResourceGroup/providers/Microsoft.Network/expressRouteCircuit"),
/// 				NetworkInterfaces: baremetalinfrastructure.NetworkInterfaceArray{
/// 					&baremetalinfrastructure.NetworkInterfaceArgs{
/// 						IpAddress: pulumi.String("100.100.100.100"),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &baremetalinfrastructure.OSProfileArgs{
/// 				ComputerName: pulumi.String("myComputerName"),
/// 				OsType:       pulumi.String("SUSE"),
/// 				SshPublicKey: pulumi.String("{ssh-rsa public key}"),
/// 				Version:      pulumi.String("12 SP1"),
/// 			},
/// 			PowerState:              pulumi.String(baremetalinfrastructure.AzureBareMetalInstancePowerStateEnumStarted),
/// 			ProximityPlacementGroup: pulumi.String("/subscriptions/f0f4887f-d13c-4943-a8ba-d7da28d2a3fd/resourceGroups/myResourceGroup/providers/Microsoft.Compute/proximityPlacementGroups/myplacementgroup"),
/// 			ResourceGroupName:       pulumi.String("myResourceGroup"),
/// 			StorageProfile: &baremetalinfrastructure.StorageProfileArgs{
/// 				NfsIpAddress: pulumi.String("200.200.200.200"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"testkey": pulumi.String("testvalue"),
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
/// import com.pulumi.azurenative.baremetalinfrastructure.AzureBareMetalInstance;
/// import com.pulumi.azurenative.baremetalinfrastructure.AzureBareMetalInstanceArgs;
/// import com.pulumi.azurenative.baremetalinfrastructure.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.baremetalinfrastructure.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.baremetalinfrastructure.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.baremetalinfrastructure.inputs.StorageProfileArgs;
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
///         var azureBareMetalInstance = new AzureBareMetalInstance("azureBareMetalInstance", AzureBareMetalInstanceArgs.builder()
///             .azureBareMetalInstanceId("23415635-4d7e-41dc-9598-8194f22c24e1")
///             .azureBareMetalInstanceName("myBMIInstance")
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .azureBareMetalInstanceSize("S72")
///                 .hardwareType("Cisco_UCS")
///                 .build())
///             .hwRevision("Rev 3")
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .circuitId("/subscriptions/f0f4887f-d13c-4943-a8ba-d7da28d2a3fd/resourceGroups/myResourceGroup/providers/Microsoft.Network/expressRouteCircuit")
///                 .networkInterfaces(NetworkInterfaceArgs.builder()
///                     .ipAddress("100.100.100.100")
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .computerName("myComputerName")
///                 .osType("SUSE")
///                 .sshPublicKey("{ssh-rsa public key}")
///                 .version("12 SP1")
///                 .build())
///             .powerState("started")
///             .proximityPlacementGroup("/subscriptions/f0f4887f-d13c-4943-a8ba-d7da28d2a3fd/resourceGroups/myResourceGroup/providers/Microsoft.Compute/proximityPlacementGroups/myplacementgroup")
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .nfsIpAddress("200.200.200.200")
///                 .build())
///             .tags(Map.of("testkey", "testvalue"))
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
/// const azureBareMetalInstance = new azure_native.baremetalinfrastructure.AzureBareMetalInstance("azureBareMetalInstance", {
///     azureBareMetalInstanceId: "23415635-4d7e-41dc-9598-8194f22c24e1",
///     azureBareMetalInstanceName: "myBMIInstance",
///     hardwareProfile: {
///         azureBareMetalInstanceSize: azure_native.baremetalinfrastructure.AzureBareMetalInstanceSizeNamesEnum.S72,
///         hardwareType: azure_native.baremetalinfrastructure.AzureBareMetalHardwareTypeNamesEnum.Cisco_UCS,
///     },
///     hwRevision: "Rev 3",
///     location: "westus",
///     networkProfile: {
///         circuitId: "/subscriptions/f0f4887f-d13c-4943-a8ba-d7da28d2a3fd/resourceGroups/myResourceGroup/providers/Microsoft.Network/expressRouteCircuit",
///         networkInterfaces: [{
///             ipAddress: "100.100.100.100",
///         }],
///     },
///     osProfile: {
///         computerName: "myComputerName",
///         osType: "SUSE",
///         sshPublicKey: "{ssh-rsa public key}",
///         version: "12 SP1",
///     },
///     powerState: azure_native.baremetalinfrastructure.AzureBareMetalInstancePowerStateEnum.Started,
///     proximityPlacementGroup: "/subscriptions/f0f4887f-d13c-4943-a8ba-d7da28d2a3fd/resourceGroups/myResourceGroup/providers/Microsoft.Compute/proximityPlacementGroups/myplacementgroup",
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         nfsIpAddress: "200.200.200.200",
///     },
///     tags: {
///         testkey: "testvalue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_bare_metal_instance = azure_native.baremetalinfrastructure.AzureBareMetalInstance("azureBareMetalInstance",
///     azure_bare_metal_instance_id="23415635-4d7e-41dc-9598-8194f22c24e1",
///     azure_bare_metal_instance_name="myBMIInstance",
///     hardware_profile={
///         "azure_bare_metal_instance_size": azure_native.baremetalinfrastructure.AzureBareMetalInstanceSizeNamesEnum.S72,
///         "hardware_type": azure_native.baremetalinfrastructure.AzureBareMetalHardwareTypeNamesEnum.CISCO_UCS,
///     },
///     hw_revision="Rev 3",
///     location="westus",
///     network_profile={
///         "circuit_id": "/subscriptions/f0f4887f-d13c-4943-a8ba-d7da28d2a3fd/resourceGroups/myResourceGroup/providers/Microsoft.Network/expressRouteCircuit",
///         "network_interfaces": [{
///             "ip_address": "100.100.100.100",
///         }],
///     },
///     os_profile={
///         "computer_name": "myComputerName",
///         "os_type": "SUSE",
///         "ssh_public_key": "{ssh-rsa public key}",
///         "version": "12 SP1",
///     },
///     power_state=azure_native.baremetalinfrastructure.AzureBareMetalInstancePowerStateEnum.STARTED,
///     proximity_placement_group="/subscriptions/f0f4887f-d13c-4943-a8ba-d7da28d2a3fd/resourceGroups/myResourceGroup/providers/Microsoft.Compute/proximityPlacementGroups/myplacementgroup",
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "nfs_ip_address": "200.200.200.200",
///     },
///     tags={
///         "testkey": "testvalue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   azureBareMetalInstance:
///     type: azure-native:baremetalinfrastructure:AzureBareMetalInstance
///     properties:
///       azureBareMetalInstanceId: 23415635-4d7e-41dc-9598-8194f22c24e1
///       azureBareMetalInstanceName: myBMIInstance
///       hardwareProfile:
///         azureBareMetalInstanceSize: S72
///         hardwareType: Cisco_UCS
///       hwRevision: Rev 3
///       location: westus
///       networkProfile:
///         circuitId: /subscriptions/f0f4887f-d13c-4943-a8ba-d7da28d2a3fd/resourceGroups/myResourceGroup/providers/Microsoft.Network/expressRouteCircuit
///         networkInterfaces:
///           - ipAddress: 100.100.100.100
///       osProfile:
///         computerName: myComputerName
///         osType: SUSE
///         sshPublicKey: '{ssh-rsa public key}'
///         version: 12 SP1
///       powerState: started
///       proximityPlacementGroup: /subscriptions/f0f4887f-d13c-4943-a8ba-d7da28d2a3fd/resourceGroups/myResourceGroup/providers/Microsoft.Compute/proximityPlacementGroups/myplacementgroup
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         nfsIpAddress: 200.200.200.200
///       tags:
///         testkey: testvalue
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
/// $ pulumi import azure-native:baremetalinfrastructure:AzureBareMetalInstance myBMIInstance /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BareMetalInfrastructure/bareMetalInstances/{azureBareMetalInstanceName}
/// ```
class AzureBareMetalInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Specifies the Azure Bare Metal Instance unique ID.
  late final pulumi.Output<String?> azureBareMetalInstanceId;
  /// Specifies the hardware settings for the Azure Bare Metal Instance.
  late final pulumi.Output<HardwareProfileResponse?> hardwareProfile;
  /// Hardware revision of an Azure Bare Metal Instance
  late final pulumi.Output<String?> hwRevision;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Specifies the network settings for the Azure Bare Metal Instance.
  late final pulumi.Output<NetworkProfileResponse?> networkProfile;
  /// Specifies the operating system settings for the Azure Bare Metal Instance.
  late final pulumi.Output<OSProfileResponse?> osProfile;
  /// ARM ID of another AzureBareMetalInstance that will share a network with this AzureBareMetalInstance
  late final pulumi.Output<String?> partnerNodeId;
  /// Resource power state
  late final pulumi.Output<String?> powerState;
  /// State of provisioning of the AzureBareMetalInstance
  late final pulumi.Output<String> provisioningState;
  /// Resource proximity placement group
  late final pulumi.Output<String?> proximityPlacementGroup;
  /// Specifies the storage settings for the Azure Bare Metal Instance disks.
  late final pulumi.Output<StorageProfileResponse?> storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AzureBareMetalInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzureBareMetalInstance]. {@macro pulumi_baremetalinfrastructure_azure_bare_metal_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzureBareMetalInstance(
    String name, {
    AzureBareMetalInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:baremetalinfrastructure:AzureBareMetalInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureBareMetalInstanceId = registerOutput<String?>('azureBareMetalInstanceId');
    hardwareProfile = registerOutput<HardwareProfileResponse?>('hardwareProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HardwareProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hwRevision = registerOutput<String?>('hwRevision');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<NetworkProfileResponse?>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osProfile = registerOutput<OSProfileResponse?>('osProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OSProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    partnerNodeId = registerOutput<String?>('partnerNodeId');
    powerState = registerOutput<String?>('powerState');
    provisioningState = registerOutput<String>('provisioningState');
    proximityPlacementGroup = registerOutput<String?>('proximityPlacementGroup');
    storageProfile = registerOutput<StorageProfileResponse?>('storageProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
