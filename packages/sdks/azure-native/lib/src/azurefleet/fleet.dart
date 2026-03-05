import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_locations_profile_response.dart';
import 'compute_profile_response.dart';
import 'fleet_args.dart';
import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'regular_priority_profile_response.dart';
import 'spot_priority_profile_response.dart';
import 'system_data_response.dart';
import 'vmattributes_response.dart';

/// An Compute Fleet resource
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2024-05-01-preview.
///
/// Other available API versions: 2024-05-01-preview, 2025-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurefleet [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Fleets_CreateOrUpdate_MinimumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fleet = new AzureNative.AzureFleet.Fleet("fleet", new()
///     {
///         ComputeProfile = new AzureNative.AzureFleet.Inputs.ComputeProfileArgs
///         {
///             BaseVirtualMachineProfile = new AzureNative.AzureFleet.Inputs.BaseVirtualMachineProfileArgs
///             {
///                 NetworkProfile = new AzureNative.AzureFleet.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///                 {
///                     NetworkApiVersion = "2022-07-01",
///                     NetworkInterfaceConfigurations = new[]
///                     {
///                         new AzureNative.AzureFleet.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                         {
///                             Name = "vmNameTest",
///                             Properties = new AzureNative.AzureFleet.Inputs.VirtualMachineScaleSetNetworkConfigurationPropertiesArgs
///                             {
///                                 EnableAcceleratedNetworking = false,
///                                 EnableIPForwarding = true,
///                                 IpConfigurations = new[]
///                                 {
///                                     new AzureNative.AzureFleet.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                                     {
///                                         Name = "vmNameTest",
///                                         Properties = new AzureNative.AzureFleet.Inputs.VirtualMachineScaleSetIPConfigurationPropertiesArgs
///                                         {
///                                             LoadBalancerBackendAddressPools = new[]
///                                             {
///                                                 new AzureNative.AzureFleet.Inputs.SubResourceArgs
///                                                 {
///                                                     Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/backendAddressPools/{backendAddressPoolName}",
///                                                 },
///                                             },
///                                             Primary = true,
///                                             Subnet = new AzureNative.AzureFleet.Inputs.ApiEntityReferenceArgs
///                                             {
///                                                 Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}",
///                                             },
///                                         },
///                                     },
///                                 },
///                                 Primary = true,
///                             },
///                         },
///                     },
///                 },
///                 OsProfile = new AzureNative.AzureFleet.Inputs.VirtualMachineScaleSetOSProfileArgs
///                 {
///                     AdminPassword = "TestPassword$0",
///                     AdminUsername = "azureuser",
///                     ComputerNamePrefix = "prefix",
///                     LinuxConfiguration = new AzureNative.AzureFleet.Inputs.LinuxConfigurationArgs
///                     {
///                         DisablePasswordAuthentication = false,
///                     },
///                 },
///                 StorageProfile = new AzureNative.AzureFleet.Inputs.VirtualMachineScaleSetStorageProfileArgs
///                 {
///                     ImageReference = new AzureNative.AzureFleet.Inputs.ImageReferenceArgs
///                     {
///                         Offer = "0001-com-ubuntu-server-focal",
///                         Publisher = "canonical",
///                         Sku = "20_04-lts-gen2",
///                         Version = "latest",
///                     },
///                     OsDisk = new AzureNative.AzureFleet.Inputs.VirtualMachineScaleSetOSDiskArgs
///                     {
///                         Caching = AzureNative.AzureFleet.CachingTypes.ReadWrite,
///                         CreateOption = AzureNative.AzureFleet.DiskCreateOptionTypes.FromImage,
///                         ManagedDisk = new AzureNative.AzureFleet.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                         {
///                             StorageAccountType = AzureNative.AzureFleet.StorageAccountTypes.Standard_LRS,
///                         },
///                         OsType = AzureNative.AzureFleet.OperatingSystemTypes.Linux,
///                     },
///                 },
///             },
///             ComputeApiVersion = "2023-09-01",
///             PlatformFaultDomainCount = 1,
///         },
///         FleetName = "testFleet",
///         Location = "eastus2euap",
///         RegularPriorityProfile = new AzureNative.AzureFleet.Inputs.RegularPriorityProfileArgs
///         {
///             AllocationStrategy = AzureNative.AzureFleet.RegularPriorityAllocationStrategy.LowestPrice,
///             Capacity = 2,
///             MinCapacity = 1,
///         },
///         ResourceGroupName = "rgazurefleet",
///         SpotPriorityProfile = new AzureNative.AzureFleet.Inputs.SpotPriorityProfileArgs
///         {
///             AllocationStrategy = AzureNative.AzureFleet.SpotAllocationStrategy.PriceCapacityOptimized,
///             Capacity = 2,
///             EvictionPolicy = AzureNative.AzureFleet.EvictionPolicy.Delete,
///             Maintain = true,
///             MinCapacity = 1,
///         },
///         Tags =
///         {
///             { "key", "fleets-test" },
///         },
///         VmSizesProfile = new[]
///         {
///             new AzureNative.AzureFleet.Inputs.VmSizeProfileArgs
///             {
///                 Name = "Standard_D2s_v3",
///             },
///             new AzureNative.AzureFleet.Inputs.VmSizeProfileArgs
///             {
///                 Name = "Standard_D4s_v3",
///             },
///             new AzureNative.AzureFleet.Inputs.VmSizeProfileArgs
///             {
///                 Name = "Standard_E2s_v3",
///             },
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
/// 	azurefleet "github.com/pulumi/pulumi-azure-native-sdk/azurefleet/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurefleet.NewFleet(ctx, "fleet", &azurefleet.FleetArgs{
/// 			ComputeProfile: &azurefleet.ComputeProfileArgs{
/// 				BaseVirtualMachineProfile: &azurefleet.BaseVirtualMachineProfileArgs{
/// 					NetworkProfile: &azurefleet.VirtualMachineScaleSetNetworkProfileArgs{
/// 						NetworkApiVersion: pulumi.String("2022-07-01"),
/// 						NetworkInterfaceConfigurations: azurefleet.VirtualMachineScaleSetNetworkConfigurationArray{
/// 							&azurefleet.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 								Name: pulumi.String("vmNameTest"),
/// 								Properties: &azurefleet.VirtualMachineScaleSetNetworkConfigurationPropertiesArgs{
/// 									EnableAcceleratedNetworking: pulumi.Bool(false),
/// 									EnableIPForwarding:          pulumi.Bool(true),
/// 									IpConfigurations: azurefleet.VirtualMachineScaleSetIPConfigurationArray{
/// 										&azurefleet.VirtualMachineScaleSetIPConfigurationArgs{
/// 											Name: pulumi.String("vmNameTest"),
/// 											Properties: &azurefleet.VirtualMachineScaleSetIPConfigurationPropertiesArgs{
/// 												LoadBalancerBackendAddressPools: azurefleet.SubResourceArray{
/// 													&azurefleet.SubResourceArgs{
/// 														Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/backendAddressPools/{backendAddressPoolName}"),
/// 													},
/// 												},
/// 												Primary: pulumi.Bool(true),
/// 												Subnet: &azurefleet.ApiEntityReferenceArgs{
/// 													Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}"),
/// 												},
/// 											},
/// 										},
/// 									},
/// 									Primary: pulumi.Bool(true),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					OsProfile: &azurefleet.VirtualMachineScaleSetOSProfileArgs{
/// 						AdminPassword:      pulumi.String("TestPassword$0"),
/// 						AdminUsername:      pulumi.String("azureuser"),
/// 						ComputerNamePrefix: pulumi.String("prefix"),
/// 						LinuxConfiguration: &azurefleet.LinuxConfigurationArgs{
/// 							DisablePasswordAuthentication: pulumi.Bool(false),
/// 						},
/// 					},
/// 					StorageProfile: &azurefleet.VirtualMachineScaleSetStorageProfileArgs{
/// 						ImageReference: &azurefleet.ImageReferenceArgs{
/// 							Offer:     pulumi.String("0001-com-ubuntu-server-focal"),
/// 							Publisher: pulumi.String("canonical"),
/// 							Sku:       pulumi.String("20_04-lts-gen2"),
/// 							Version:   pulumi.String("latest"),
/// 						},
/// 						OsDisk: &azurefleet.VirtualMachineScaleSetOSDiskArgs{
/// 							Caching:      pulumi.String(azurefleet.CachingTypesReadWrite),
/// 							CreateOption: pulumi.String(azurefleet.DiskCreateOptionTypesFromImage),
/// 							ManagedDisk: &azurefleet.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 								StorageAccountType: pulumi.String(azurefleet.StorageAccountTypes_Standard_LRS),
/// 							},
/// 							OsType: pulumi.String(azurefleet.OperatingSystemTypesLinux),
/// 						},
/// 					},
/// 				},
/// 				ComputeApiVersion:        pulumi.String("2023-09-01"),
/// 				PlatformFaultDomainCount: pulumi.Int(1),
/// 			},
/// 			FleetName: pulumi.String("testFleet"),
/// 			Location:  pulumi.String("eastus2euap"),
/// 			RegularPriorityProfile: &azurefleet.RegularPriorityProfileArgs{
/// 				AllocationStrategy: pulumi.String(azurefleet.RegularPriorityAllocationStrategyLowestPrice),
/// 				Capacity:           pulumi.Int(2),
/// 				MinCapacity:        pulumi.Int(1),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgazurefleet"),
/// 			SpotPriorityProfile: &azurefleet.SpotPriorityProfileArgs{
/// 				AllocationStrategy: pulumi.String(azurefleet.SpotAllocationStrategyPriceCapacityOptimized),
/// 				Capacity:           pulumi.Int(2),
/// 				EvictionPolicy:     pulumi.String(azurefleet.EvictionPolicyDelete),
/// 				Maintain:           pulumi.Bool(true),
/// 				MinCapacity:        pulumi.Int(1),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("fleets-test"),
/// 			},
/// 			VmSizesProfile: azurefleet.VmSizeProfileArray{
/// 				&azurefleet.VmSizeProfileArgs{
/// 					Name: pulumi.String("Standard_D2s_v3"),
/// 				},
/// 				&azurefleet.VmSizeProfileArgs{
/// 					Name: pulumi.String("Standard_D4s_v3"),
/// 				},
/// 				&azurefleet.VmSizeProfileArgs{
/// 					Name: pulumi.String("Standard_E2s_v3"),
/// 				},
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
/// import com.pulumi.azurenative.azurefleet.Fleet;
/// import com.pulumi.azurenative.azurefleet.FleetArgs;
/// import com.pulumi.azurenative.azurefleet.inputs.ComputeProfileArgs;
/// import com.pulumi.azurenative.azurefleet.inputs.BaseVirtualMachineProfileArgs;
/// import com.pulumi.azurenative.azurefleet.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.azurefleet.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.azurefleet.inputs.LinuxConfigurationArgs;
/// import com.pulumi.azurenative.azurefleet.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.azurefleet.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.azurefleet.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.azurefleet.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
/// import com.pulumi.azurenative.azurefleet.inputs.RegularPriorityProfileArgs;
/// import com.pulumi.azurenative.azurefleet.inputs.SpotPriorityProfileArgs;
/// import com.pulumi.azurenative.azurefleet.inputs.VmSizeProfileArgs;
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
///         var fleet = new Fleet("fleet", FleetArgs.builder()
///             .computeProfile(ComputeProfileArgs.builder()
///                 .baseVirtualMachineProfile(BaseVirtualMachineProfileArgs.builder()
///                     .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                         .networkApiVersion("2022-07-01")
///                         .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                             .name("vmNameTest")
///                             .properties(VirtualMachineScaleSetNetworkConfigurationPropertiesArgs.builder()
///                                 .enableAcceleratedNetworking(false)
///                                 .enableIPForwarding(true)
///                                 .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                                     .name("vmNameTest")
///                                     .properties(VirtualMachineScaleSetIPConfigurationPropertiesArgs.builder()
///                                         .loadBalancerBackendAddressPools(SubResourceArgs.builder()
///                                             .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/backendAddressPools/{backendAddressPoolName}")
///                                             .build())
///                                         .primary(true)
///                                         .subnet(ApiEntityReferenceArgs.builder()
///                                             .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .primary(true)
///                                 .build())
///                             .build())
///                         .build())
///                     .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                         .adminPassword("TestPassword$0")
///                         .adminUsername("azureuser")
///                         .computerNamePrefix("prefix")
///                         .linuxConfiguration(LinuxConfigurationArgs.builder()
///                             .disablePasswordAuthentication(false)
///                             .build())
///                         .build())
///                     .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                         .imageReference(ImageReferenceArgs.builder()
///                             .offer("0001-com-ubuntu-server-focal")
///                             .publisher("canonical")
///                             .sku("20_04-lts-gen2")
///                             .version("latest")
///                             .build())
///                         .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                             .caching("ReadWrite")
///                             .createOption("FromImage")
///                             .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                                 .storageAccountType("Standard_LRS")
///                                 .build())
///                             .osType("Linux")
///                             .build())
///                         .build())
///                     .build())
///                 .computeApiVersion("2023-09-01")
///                 .platformFaultDomainCount(1)
///                 .build())
///             .fleetName("testFleet")
///             .location("eastus2euap")
///             .regularPriorityProfile(RegularPriorityProfileArgs.builder()
///                 .allocationStrategy("LowestPrice")
///                 .capacity(2)
///                 .minCapacity(1)
///                 .build())
///             .resourceGroupName("rgazurefleet")
///             .spotPriorityProfile(SpotPriorityProfileArgs.builder()
///                 .allocationStrategy("PriceCapacityOptimized")
///                 .capacity(2)
///                 .evictionPolicy("Delete")
///                 .maintain(true)
///                 .minCapacity(1)
///                 .build())
///             .tags(Map.of("key", "fleets-test"))
///             .vmSizesProfile(
///                 VmSizeProfileArgs.builder()
///                     .name("Standard_D2s_v3")
///                     .build(),
///                 VmSizeProfileArgs.builder()
///                     .name("Standard_D4s_v3")
///                     .build(),
///                 VmSizeProfileArgs.builder()
///                     .name("Standard_E2s_v3")
///                     .build())
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
/// const fleet = new azure_native.azurefleet.Fleet("fleet", {
///     computeProfile: {
///         baseVirtualMachineProfile: {
///             networkProfile: {
///                 networkApiVersion: "2022-07-01",
///                 networkInterfaceConfigurations: [{
///                     name: "vmNameTest",
///                     properties: {
///                         enableAcceleratedNetworking: false,
///                         enableIPForwarding: true,
///                         ipConfigurations: [{
///                             name: "vmNameTest",
///                             properties: {
///                                 loadBalancerBackendAddressPools: [{
///                                     id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/backendAddressPools/{backendAddressPoolName}",
///                                 }],
///                                 primary: true,
///                                 subnet: {
///                                     id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}",
///                                 },
///                             },
///                         }],
///                         primary: true,
///                     },
///                 }],
///             },
///             osProfile: {
///                 adminPassword: "TestPassword$0",
///                 adminUsername: "azureuser",
///                 computerNamePrefix: "prefix",
///                 linuxConfiguration: {
///                     disablePasswordAuthentication: false,
///                 },
///             },
///             storageProfile: {
///                 imageReference: {
///                     offer: "0001-com-ubuntu-server-focal",
///                     publisher: "canonical",
///                     sku: "20_04-lts-gen2",
///                     version: "latest",
///                 },
///                 osDisk: {
///                     caching: azure_native.azurefleet.CachingTypes.ReadWrite,
///                     createOption: azure_native.azurefleet.DiskCreateOptionTypes.FromImage,
///                     managedDisk: {
///                         storageAccountType: azure_native.azurefleet.StorageAccountTypes.Standard_LRS,
///                     },
///                     osType: azure_native.azurefleet.OperatingSystemTypes.Linux,
///                 },
///             },
///         },
///         computeApiVersion: "2023-09-01",
///         platformFaultDomainCount: 1,
///     },
///     fleetName: "testFleet",
///     location: "eastus2euap",
///     regularPriorityProfile: {
///         allocationStrategy: azure_native.azurefleet.RegularPriorityAllocationStrategy.LowestPrice,
///         capacity: 2,
///         minCapacity: 1,
///     },
///     resourceGroupName: "rgazurefleet",
///     spotPriorityProfile: {
///         allocationStrategy: azure_native.azurefleet.SpotAllocationStrategy.PriceCapacityOptimized,
///         capacity: 2,
///         evictionPolicy: azure_native.azurefleet.EvictionPolicy.Delete,
///         maintain: true,
///         minCapacity: 1,
///     },
///     tags: {
///         key: "fleets-test",
///     },
///     vmSizesProfile: [
///         {
///             name: "Standard_D2s_v3",
///         },
///         {
///             name: "Standard_D4s_v3",
///         },
///         {
///             name: "Standard_E2s_v3",
///         },
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// fleet = azure_native.azurefleet.Fleet("fleet",
///     compute_profile={
///         "base_virtual_machine_profile": {
///             "network_profile": {
///                 "network_api_version": "2022-07-01",
///                 "network_interface_configurations": [{
///                     "name": "vmNameTest",
///                     "properties": {
///                         "enable_accelerated_networking": False,
///                         "enable_ip_forwarding": True,
///                         "ip_configurations": [{
///                             "name": "vmNameTest",
///                             "properties": {
///                                 "load_balancer_backend_address_pools": [{
///                                     "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/backendAddressPools/{backendAddressPoolName}",
///                                 }],
///                                 "primary": True,
///                                 "subnet": {
///                                     "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}",
///                                 },
///                             },
///                         }],
///                         "primary": True,
///                     },
///                 }],
///             },
///             "os_profile": {
///                 "admin_password": "TestPassword$0",
///                 "admin_username": "azureuser",
///                 "computer_name_prefix": "prefix",
///                 "linux_configuration": {
///                     "disable_password_authentication": False,
///                 },
///             },
///             "storage_profile": {
///                 "image_reference": {
///                     "offer": "0001-com-ubuntu-server-focal",
///                     "publisher": "canonical",
///                     "sku": "20_04-lts-gen2",
///                     "version": "latest",
///                 },
///                 "os_disk": {
///                     "caching": azure_native.azurefleet.CachingTypes.READ_WRITE,
///                     "create_option": azure_native.azurefleet.DiskCreateOptionTypes.FROM_IMAGE,
///                     "managed_disk": {
///                         "storage_account_type": azure_native.azurefleet.StorageAccountTypes.STANDARD_LRS,
///                     },
///                     "os_type": azure_native.azurefleet.OperatingSystemTypes.LINUX,
///                 },
///             },
///         },
///         "compute_api_version": "2023-09-01",
///         "platform_fault_domain_count": 1,
///     },
///     fleet_name="testFleet",
///     location="eastus2euap",
///     regular_priority_profile={
///         "allocation_strategy": azure_native.azurefleet.RegularPriorityAllocationStrategy.LOWEST_PRICE,
///         "capacity": 2,
///         "min_capacity": 1,
///     },
///     resource_group_name="rgazurefleet",
///     spot_priority_profile={
///         "allocation_strategy": azure_native.azurefleet.SpotAllocationStrategy.PRICE_CAPACITY_OPTIMIZED,
///         "capacity": 2,
///         "eviction_policy": azure_native.azurefleet.EvictionPolicy.DELETE,
///         "maintain": True,
///         "min_capacity": 1,
///     },
///     tags={
///         "key": "fleets-test",
///     },
///     vm_sizes_profile=[
///         {
///             "name": "Standard_D2s_v3",
///         },
///         {
///             "name": "Standard_D4s_v3",
///         },
///         {
///             "name": "Standard_E2s_v3",
///         },
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   fleet:
///     type: azure-native:azurefleet:Fleet
///     properties:
///       computeProfile:
///         baseVirtualMachineProfile:
///           networkProfile:
///             networkApiVersion: 2022-07-01
///             networkInterfaceConfigurations:
///               - name: vmNameTest
///                 properties:
///                   enableAcceleratedNetworking: false
///                   enableIPForwarding: true
///                   ipConfigurations:
///                     - name: vmNameTest
///                       properties:
///                         loadBalancerBackendAddressPools:
///                           - id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/backendAddressPools/{backendAddressPoolName}
///                         primary: true
///                         subnet:
///                           id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}
///                   primary: true
///           osProfile:
///             adminPassword: TestPassword$0
///             adminUsername: azureuser
///             computerNamePrefix: prefix
///             linuxConfiguration:
///               disablePasswordAuthentication: false
///           storageProfile:
///             imageReference:
///               offer: 0001-com-ubuntu-server-focal
///               publisher: canonical
///               sku: 20_04-lts-gen2
///               version: latest
///             osDisk:
///               caching: ReadWrite
///               createOption: FromImage
///               managedDisk:
///                 storageAccountType: Standard_LRS
///               osType: Linux
///         computeApiVersion: 2023-09-01
///         platformFaultDomainCount: 1
///       fleetName: testFleet
///       location: eastus2euap
///       regularPriorityProfile:
///         allocationStrategy: LowestPrice
///         capacity: 2
///         minCapacity: 1
///       resourceGroupName: rgazurefleet
///       spotPriorityProfile:
///         allocationStrategy: PriceCapacityOptimized
///         capacity: 2
///         evictionPolicy: Delete
///         maintain: true
///         minCapacity: 1
///       tags:
///         key: fleets-test
///       vmSizesProfile:
///         - name: Standard_D2s_v3
///         - name: Standard_D4s_v3
///         - name: Standard_E2s_v3
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
/// $ pulumi import azure-native:azurefleet:Fleet testFleet /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureFleet/fleets/{fleetName}
/// ```
class Fleet extends pulumi.CustomResource {
  /// Represents the configuration for additional locations where Fleet resources may be deployed.
  late final pulumi.Output<AdditionalLocationsProfileResponse?>
  additionalLocationsProfile;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Compute Profile to use for running user's workloads.
  late final pulumi.Output<ComputeProfileResponse> computeProfile;

  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Details of the resource plan.
  late final pulumi.Output<PlanResponse?> plan;

  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;

  /// Configuration Options for Regular instances in Compute Fleet.
  late final pulumi.Output<RegularPriorityProfileResponse?>
  regularPriorityProfile;

  /// Configuration Options for Spot instances in Compute Fleet.
  late final pulumi.Output<SpotPriorityProfileResponse?> spotPriorityProfile;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Specifies the time at which the Compute Fleet is created.
  late final pulumi.Output<String> timeCreated;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Specifies the ID which uniquely identifies a Compute Fleet.
  late final pulumi.Output<String> uniqueId;

  /// Attribute based Fleet.
  late final pulumi.Output<VMAttributesResponse?> vmAttributes;

  /// List of VM sizes supported for Compute Fleet
  late final pulumi.Output<List<Map<String, dynamic>>> vmSizesProfile;

  /// Zones in which the Compute Fleet is available
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [Fleet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Fleet]. {@macro pulumi_azurefleet_fleet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Fleet(String name, {FleetArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:azurefleet:Fleet',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    additionalLocationsProfile =
        registerOutput<AdditionalLocationsProfileResponse?>(
          'additionalLocationsProfile',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AdditionalLocationsProfileResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    computeProfile = registerOutput<ComputeProfileResponse>(
      'computeProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ComputeProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    identity = registerOutput<ManagedServiceIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    plan = registerOutput<PlanResponse?>(
      'plan',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PlanResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    provisioningState = registerOutput<String>('provisioningState');
    regularPriorityProfile = registerOutput<RegularPriorityProfileResponse?>(
      'regularPriorityProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RegularPriorityProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    spotPriorityProfile = registerOutput<SpotPriorityProfileResponse?>(
      'spotPriorityProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SpotPriorityProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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
    timeCreated = registerOutput<String>('timeCreated');
    type = registerOutput<String>('type');
    uniqueId = registerOutput<String>('uniqueId');
    vmAttributes = registerOutput<VMAttributesResponse?>(
      'vmAttributes',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VMAttributesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    vmSizesProfile = registerOutput<List<Map<String, dynamic>>>(
      'vmSizesProfile',
    );
    zones = registerOutput<List<String>?>('zones');
  }
}
