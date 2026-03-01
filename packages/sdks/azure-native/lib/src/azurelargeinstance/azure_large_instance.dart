import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_large_instance_args.dart';
import 'hardware_profile_response.dart';
import 'network_profile_response.dart';
import 'os_profile_response.dart';
import 'storage_profile_response.dart';
import 'system_data_response.dart';

/// Azure Large Instance info on Azure (ARM properties and AzureLargeInstance
/// properties)
///
/// Uses Azure REST API version 2024-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-08-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AzureLargeInstance_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureLargeInstance = new AzureNative.AzureLargeInstance.AzureLargeInstance("azureLargeInstance", new()
///     {
///         AzureLargeInstanceId = "23415635-4d7e-41dc-9598-8194f22c24e1",
///         AzureLargeInstanceName = "myALInstance",
///         HardwareProfile = new AzureNative.AzureLargeInstance.Inputs.HardwareProfileArgs
///         {
///             AzureLargeInstanceSize = AzureNative.AzureLargeInstance.AzureLargeInstanceSizeNamesEnum.S72,
///             HardwareType = AzureNative.AzureLargeInstance.AzureLargeInstanceHardwareTypeNamesEnum.Cisco_UCS,
///         },
///         HwRevision = "Rev 3",
///         Location = "westus",
///         NetworkProfile = new AzureNative.AzureLargeInstance.Inputs.NetworkProfileArgs
///         {
///             CircuitId = "/subscriptions/f0f4887f-d13c-4943-a8ba-d7da28d2a3fd/resourceGroups/myResourceGroup/providers/Microsoft.Network/expressRouteCircuit",
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.AzureLargeInstance.Inputs.IpAddressArgs
///                 {
///                     IpAddress = "100.100.100.100",
///                 },
///             },
///         },
///         OsProfile = new AzureNative.AzureLargeInstance.Inputs.OsProfileArgs
///         {
///             ComputerName = "myComputerName",
///             OsType = "SUSE",
///             SshPublicKey = "{ssh-rsa public key}",
///             Version = "12 SP1",
///         },
///         PowerState = AzureNative.AzureLargeInstance.AzureLargeInstancePowerStateEnum.Started,
///         ProximityPlacementGroup = "/subscriptions/f0f4887f-d13c-4943-a8ba-d7da28d2a3fd/resourceGroups/myResourceGroup/providers/Microsoft.Compute/proximityPlacementGroups/myplacementgroup",
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.AzureLargeInstance.Inputs.StorageProfileArgs
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
/// 	azurelargeinstance "github.com/pulumi/pulumi-azure-native-sdk/azurelargeinstance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurelargeinstance.NewAzureLargeInstance(ctx, "azureLargeInstance", &azurelargeinstance.AzureLargeInstanceArgs{
/// 			AzureLargeInstanceId:   pulumi.String("23415635-4d7e-41dc-9598-8194f22c24e1"),
/// 			AzureLargeInstanceName: pulumi.String("myALInstance"),
/// 			HardwareProfile: &azurelargeinstance.HardwareProfileArgs{
/// 				AzureLargeInstanceSize: pulumi.String(azurelargeinstance.AzureLargeInstanceSizeNamesEnumS72),
/// 				HardwareType:           pulumi.String(azurelargeinstance.AzureLargeInstanceHardwareTypeNamesEnum_Cisco_UCS),
/// 			},
/// 			HwRevision: pulumi.String("Rev 3"),
/// 			Location:   pulumi.String("westus"),
/// 			NetworkProfile: &azurelargeinstance.NetworkProfileArgs{
/// 				CircuitId: pulumi.String("/subscriptions/f0f4887f-d13c-4943-a8ba-d7da28d2a3fd/resourceGroups/myResourceGroup/providers/Microsoft.Network/expressRouteCircuit"),
/// 				NetworkInterfaces: azurelargeinstance.IpAddressArray{
/// 					&azurelargeinstance.IpAddressArgs{
/// 						IpAddress: pulumi.String("100.100.100.100"),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &azurelargeinstance.OsProfileArgs{
/// 				ComputerName: pulumi.String("myComputerName"),
/// 				OsType:       pulumi.String("SUSE"),
/// 				SshPublicKey: pulumi.String("{ssh-rsa public key}"),
/// 				Version:      pulumi.String("12 SP1"),
/// 			},
/// 			PowerState:              pulumi.String(azurelargeinstance.AzureLargeInstancePowerStateEnumStarted),
/// 			ProximityPlacementGroup: pulumi.String("/subscriptions/f0f4887f-d13c-4943-a8ba-d7da28d2a3fd/resourceGroups/myResourceGroup/providers/Microsoft.Compute/proximityPlacementGroups/myplacementgroup"),
/// 			ResourceGroupName:       pulumi.String("myResourceGroup"),
/// 			StorageProfile: &azurelargeinstance.StorageProfileArgs{
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
/// import com.pulumi.azurenative.azurelargeinstance.AzureLargeInstance;
/// import com.pulumi.azurenative.azurelargeinstance.AzureLargeInstanceArgs;
/// import com.pulumi.azurenative.azurelargeinstance.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.azurelargeinstance.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.azurelargeinstance.inputs.OsProfileArgs;
/// import com.pulumi.azurenative.azurelargeinstance.inputs.StorageProfileArgs;
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
///         var azureLargeInstance = new AzureLargeInstance("azureLargeInstance", AzureLargeInstanceArgs.builder()
///             .azureLargeInstanceId("23415635-4d7e-41dc-9598-8194f22c24e1")
///             .azureLargeInstanceName("myALInstance")
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .azureLargeInstanceSize("S72")
///                 .hardwareType("Cisco_UCS")
///                 .build())
///             .hwRevision("Rev 3")
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .circuitId("/subscriptions/f0f4887f-d13c-4943-a8ba-d7da28d2a3fd/resourceGroups/myResourceGroup/providers/Microsoft.Network/expressRouteCircuit")
///                 .networkInterfaces(IpAddressArgs.builder()
///                     .ipAddress("100.100.100.100")
///                     .build())
///                 .build())
///             .osProfile(OsProfileArgs.builder()
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
/// const azureLargeInstance = new azure_native.azurelargeinstance.AzureLargeInstance("azureLargeInstance", {
///     azureLargeInstanceId: "23415635-4d7e-41dc-9598-8194f22c24e1",
///     azureLargeInstanceName: "myALInstance",
///     hardwareProfile: {
///         azureLargeInstanceSize: azure_native.azurelargeinstance.AzureLargeInstanceSizeNamesEnum.S72,
///         hardwareType: azure_native.azurelargeinstance.AzureLargeInstanceHardwareTypeNamesEnum.Cisco_UCS,
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
///     powerState: azure_native.azurelargeinstance.AzureLargeInstancePowerStateEnum.Started,
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
/// azure_large_instance = azure_native.azurelargeinstance.AzureLargeInstance("azureLargeInstance",
///     azure_large_instance_id="23415635-4d7e-41dc-9598-8194f22c24e1",
///     azure_large_instance_name="myALInstance",
///     hardware_profile={
///         "azure_large_instance_size": azure_native.azurelargeinstance.AzureLargeInstanceSizeNamesEnum.S72,
///         "hardware_type": azure_native.azurelargeinstance.AzureLargeInstanceHardwareTypeNamesEnum.CISCO_UCS,
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
///     power_state=azure_native.azurelargeinstance.AzureLargeInstancePowerStateEnum.STARTED,
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
///   azureLargeInstance:
///     type: azure-native:azurelargeinstance:AzureLargeInstance
///     properties:
///       azureLargeInstanceId: 23415635-4d7e-41dc-9598-8194f22c24e1
///       azureLargeInstanceName: myALInstance
///       hardwareProfile:
///         azureLargeInstanceSize: S72
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
/// $ pulumi import azure-native:azurelargeinstance:AzureLargeInstance myALInstance /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureLargeInstance/azureLargeInstances/{azureLargeInstanceName}
/// ```
class AzureLargeInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Specifies the Azure Large Instance unique ID.
  late final pulumi.Output<String?> azureLargeInstanceId;
  /// Specifies the hardware settings for the Azure Large Instance.
  late final pulumi.Output<HardwareProfileResponse?> hardwareProfile;
  /// Hardware revision of an Azure Large Instance
  late final pulumi.Output<String?> hwRevision;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Specifies the network settings for the Azure Large Instance.
  late final pulumi.Output<NetworkProfileResponse?> networkProfile;
  /// Specifies the operating system settings for the Azure Large Instance.
  late final pulumi.Output<OsProfileResponse?> osProfile;
  /// Resource power state
  late final pulumi.Output<String?> powerState;
  /// State of provisioning of the AzureLargeInstance
  late final pulumi.Output<String> provisioningState;
  /// Resource proximity placement group
  late final pulumi.Output<String?> proximityPlacementGroup;
  /// Specifies the storage settings for the Azure Large Instance disks.
  late final pulumi.Output<StorageProfileResponse?> storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AzureLargeInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzureLargeInstance]. {@macro pulumi_azurelargeinstance_azure_large_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzureLargeInstance(
    String name, {
    AzureLargeInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurelargeinstance:AzureLargeInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.azureLargeInstanceId = registerOutput<String?>('azureLargeInstanceId');
    this.hardwareProfile = registerOutput<HardwareProfileResponse?>('hardwareProfile');
    this.hwRevision = registerOutput<String?>('hwRevision');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networkProfile = registerOutput<NetworkProfileResponse?>('networkProfile');
    this.osProfile = registerOutput<OsProfileResponse?>('osProfile');
    this.powerState = registerOutput<String?>('powerState');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.proximityPlacementGroup = registerOutput<String?>('proximityPlacementGroup');
    this.storageProfile = registerOutput<StorageProfileResponse?>('storageProfile');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
