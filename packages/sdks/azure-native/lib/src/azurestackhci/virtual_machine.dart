import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'guest_agent_profile_response.dart';
import 'identity_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_args.dart';
import 'virtual_machine_properties_response_hardware_profile.dart';
import 'virtual_machine_properties_response_network_profile.dart';
import 'virtual_machine_properties_response_os_profile.dart';
import 'virtual_machine_properties_response_security_profile.dart';
import 'virtual_machine_properties_response_storage_profile.dart';
import 'virtual_machine_status_response.dart';

/// The virtual machine resource definition.
///
/// Uses Azure REST API version 2022-12-15-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-15-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutVirtualMachineWithGalleryImage
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.AzureStackHCI.VirtualMachine("virtualMachine", new()
///     {
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         HardwareProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesHardwareProfileArgs
///         {
///             VmSize = AzureNative.AzureStackHCI.VmSizeEnum.Default,
///         },
///         Location = "West US2",
///         NetworkProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesNetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesNetworkInterfacesArgs
///                 {
///                     Id = "test-nic",
///                 },
///             },
///         },
///         OsProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesOsProfileArgs
///         {
///             AdminPassword = "password",
///             AdminUsername = "localadmin",
///             ComputerName = "luamaster",
///         },
///         ResourceGroupName = "test-rg",
///         SecurityProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesSecurityProfileArgs
///         {
///             EnableTPM = true,
///             UefiSettings = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesUefiSettingsArgs
///             {
///                 SecureBootEnabled = true,
///             },
///         },
///         StorageProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesStorageProfileArgs
///         {
///             ImageReference = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesImageReferenceArgs
///             {
///                 Id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image",
///             },
///             VmConfigStoragePathId = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container",
///         },
///         VirtualMachineName = "test-vm",
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
/// 		_, err := azurestackhci.NewVirtualMachine(ctx, "virtualMachine", &azurestackhci.VirtualMachineArgs{
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			HardwareProfile: &azurestackhci.VirtualMachinePropertiesHardwareProfileArgs{
/// 				VmSize: pulumi.String(azurestackhci.VmSizeEnumDefault),
/// 			},
/// 			Location: pulumi.String("West US2"),
/// 			NetworkProfile: &azurestackhci.VirtualMachinePropertiesNetworkProfileArgs{
/// 				NetworkInterfaces: azurestackhci.VirtualMachinePropertiesNetworkInterfacesArray{
/// 					&azurestackhci.VirtualMachinePropertiesNetworkInterfacesArgs{
/// 						Id: pulumi.String("test-nic"),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &azurestackhci.VirtualMachinePropertiesOsProfileArgs{
/// 				AdminPassword: pulumi.String("password"),
/// 				AdminUsername: pulumi.String("localadmin"),
/// 				ComputerName:  pulumi.String("luamaster"),
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			SecurityProfile: &azurestackhci.VirtualMachinePropertiesSecurityProfileArgs{
/// 				EnableTPM: pulumi.Bool(true),
/// 				UefiSettings: &azurestackhci.VirtualMachinePropertiesUefiSettingsArgs{
/// 					SecureBootEnabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			StorageProfile: &azurestackhci.VirtualMachinePropertiesStorageProfileArgs{
/// 				ImageReference: &azurestackhci.VirtualMachinePropertiesImageReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image"),
/// 				},
/// 				VmConfigStoragePathId: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container"),
/// 			},
/// 			VirtualMachineName: pulumi.String("test-vm"),
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
/// import com.pulumi.azurenative.azurestackhci.VirtualMachine;
/// import com.pulumi.azurenative.azurestackhci.VirtualMachineArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesHardwareProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesNetworkProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesOsProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesSecurityProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesUefiSettingsArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesStorageProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesImageReferenceArgs;
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
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .hardwareProfile(VirtualMachinePropertiesHardwareProfileArgs.builder()
///                 .vmSize("Default")
///                 .build())
///             .location("West US2")
///             .networkProfile(VirtualMachinePropertiesNetworkProfileArgs.builder()
///                 .networkInterfaces(VirtualMachinePropertiesNetworkInterfacesArgs.builder()
///                     .id("test-nic")
///                     .build())
///                 .build())
///             .osProfile(VirtualMachinePropertiesOsProfileArgs.builder()
///                 .adminPassword("password")
///                 .adminUsername("localadmin")
///                 .computerName("luamaster")
///                 .build())
///             .resourceGroupName("test-rg")
///             .securityProfile(VirtualMachinePropertiesSecurityProfileArgs.builder()
///                 .enableTPM(true)
///                 .uefiSettings(VirtualMachinePropertiesUefiSettingsArgs.builder()
///                     .secureBootEnabled(true)
///                     .build())
///                 .build())
///             .storageProfile(VirtualMachinePropertiesStorageProfileArgs.builder()
///                 .imageReference(VirtualMachinePropertiesImageReferenceArgs.builder()
///                     .id("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image")
///                     .build())
///                 .vmConfigStoragePathId("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container")
///                 .build())
///             .virtualMachineName("test-vm")
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
/// const virtualMachine = new azure_native.azurestackhci.VirtualMachine("virtualMachine", {
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     hardwareProfile: {
///         vmSize: azure_native.azurestackhci.VmSizeEnum.Default,
///     },
///     location: "West US2",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "test-nic",
///         }],
///     },
///     osProfile: {
///         adminPassword: "password",
///         adminUsername: "localadmin",
///         computerName: "luamaster",
///     },
///     resourceGroupName: "test-rg",
///     securityProfile: {
///         enableTPM: true,
///         uefiSettings: {
///             secureBootEnabled: true,
///         },
///     },
///     storageProfile: {
///         imageReference: {
///             id: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image",
///         },
///         vmConfigStoragePathId: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container",
///     },
///     virtualMachineName: "test-vm",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.azurestackhci.VirtualMachine("virtualMachine",
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     hardware_profile={
///         "vm_size": azure_native.azurestackhci.VmSizeEnum.DEFAULT,
///     },
///     location="West US2",
///     network_profile={
///         "network_interfaces": [{
///             "id": "test-nic",
///         }],
///     },
///     os_profile={
///         "admin_password": "password",
///         "admin_username": "localadmin",
///         "computer_name": "luamaster",
///     },
///     resource_group_name="test-rg",
///     security_profile={
///         "enable_tpm": True,
///         "uefi_settings": {
///             "secure_boot_enabled": True,
///         },
///     },
///     storage_profile={
///         "image_reference": {
///             "id": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image",
///         },
///         "vm_config_storage_path_id": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container",
///     },
///     virtual_machine_name="test-vm")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:azurestackhci:VirtualMachine
///     properties:
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       hardwareProfile:
///         vmSize: Default
///       location: West US2
///       networkProfile:
///         networkInterfaces:
///           - id: test-nic
///       osProfile:
///         adminPassword: password
///         adminUsername: localadmin
///         computerName: luamaster
///       resourceGroupName: test-rg
///       securityProfile:
///         enableTPM: true
///         uefiSettings:
///           secureBootEnabled: true
///       storageProfile:
///         imageReference:
///           id: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image
///         vmConfigStoragePathId: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container
///       virtualMachineName: test-vm
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PutVirtualMachineWithMarketplaceGalleryImage
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.AzureStackHCI.VirtualMachine("virtualMachine", new()
///     {
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         HardwareProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesHardwareProfileArgs
///         {
///             VmSize = AzureNative.AzureStackHCI.VmSizeEnum.Default,
///         },
///         Location = "West US2",
///         NetworkProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesNetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesNetworkInterfacesArgs
///                 {
///                     Id = "test-nic",
///                 },
///             },
///         },
///         OsProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesOsProfileArgs
///         {
///             AdminPassword = "password",
///             AdminUsername = "localadmin",
///             ComputerName = "luamaster",
///         },
///         ResourceGroupName = "test-rg",
///         SecurityProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesSecurityProfileArgs
///         {
///             EnableTPM = true,
///             UefiSettings = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesUefiSettingsArgs
///             {
///                 SecureBootEnabled = true,
///             },
///         },
///         StorageProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesStorageProfileArgs
///         {
///             ImageReference = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesImageReferenceArgs
///             {
///                 Id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/marketplaceGalleryImages/test-marketplace-gallery-image",
///             },
///             VmConfigStoragePathId = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container",
///         },
///         VirtualMachineName = "test-vm",
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
/// 		_, err := azurestackhci.NewVirtualMachine(ctx, "virtualMachine", &azurestackhci.VirtualMachineArgs{
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			HardwareProfile: &azurestackhci.VirtualMachinePropertiesHardwareProfileArgs{
/// 				VmSize: pulumi.String(azurestackhci.VmSizeEnumDefault),
/// 			},
/// 			Location: pulumi.String("West US2"),
/// 			NetworkProfile: &azurestackhci.VirtualMachinePropertiesNetworkProfileArgs{
/// 				NetworkInterfaces: azurestackhci.VirtualMachinePropertiesNetworkInterfacesArray{
/// 					&azurestackhci.VirtualMachinePropertiesNetworkInterfacesArgs{
/// 						Id: pulumi.String("test-nic"),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &azurestackhci.VirtualMachinePropertiesOsProfileArgs{
/// 				AdminPassword: pulumi.String("password"),
/// 				AdminUsername: pulumi.String("localadmin"),
/// 				ComputerName:  pulumi.String("luamaster"),
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			SecurityProfile: &azurestackhci.VirtualMachinePropertiesSecurityProfileArgs{
/// 				EnableTPM: pulumi.Bool(true),
/// 				UefiSettings: &azurestackhci.VirtualMachinePropertiesUefiSettingsArgs{
/// 					SecureBootEnabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			StorageProfile: &azurestackhci.VirtualMachinePropertiesStorageProfileArgs{
/// 				ImageReference: &azurestackhci.VirtualMachinePropertiesImageReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/marketplaceGalleryImages/test-marketplace-gallery-image"),
/// 				},
/// 				VmConfigStoragePathId: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container"),
/// 			},
/// 			VirtualMachineName: pulumi.String("test-vm"),
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
/// import com.pulumi.azurenative.azurestackhci.VirtualMachine;
/// import com.pulumi.azurenative.azurestackhci.VirtualMachineArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesHardwareProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesNetworkProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesOsProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesSecurityProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesUefiSettingsArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesStorageProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesImageReferenceArgs;
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
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .hardwareProfile(VirtualMachinePropertiesHardwareProfileArgs.builder()
///                 .vmSize("Default")
///                 .build())
///             .location("West US2")
///             .networkProfile(VirtualMachinePropertiesNetworkProfileArgs.builder()
///                 .networkInterfaces(VirtualMachinePropertiesNetworkInterfacesArgs.builder()
///                     .id("test-nic")
///                     .build())
///                 .build())
///             .osProfile(VirtualMachinePropertiesOsProfileArgs.builder()
///                 .adminPassword("password")
///                 .adminUsername("localadmin")
///                 .computerName("luamaster")
///                 .build())
///             .resourceGroupName("test-rg")
///             .securityProfile(VirtualMachinePropertiesSecurityProfileArgs.builder()
///                 .enableTPM(true)
///                 .uefiSettings(VirtualMachinePropertiesUefiSettingsArgs.builder()
///                     .secureBootEnabled(true)
///                     .build())
///                 .build())
///             .storageProfile(VirtualMachinePropertiesStorageProfileArgs.builder()
///                 .imageReference(VirtualMachinePropertiesImageReferenceArgs.builder()
///                     .id("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/marketplaceGalleryImages/test-marketplace-gallery-image")
///                     .build())
///                 .vmConfigStoragePathId("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container")
///                 .build())
///             .virtualMachineName("test-vm")
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
/// const virtualMachine = new azure_native.azurestackhci.VirtualMachine("virtualMachine", {
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     hardwareProfile: {
///         vmSize: azure_native.azurestackhci.VmSizeEnum.Default,
///     },
///     location: "West US2",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "test-nic",
///         }],
///     },
///     osProfile: {
///         adminPassword: "password",
///         adminUsername: "localadmin",
///         computerName: "luamaster",
///     },
///     resourceGroupName: "test-rg",
///     securityProfile: {
///         enableTPM: true,
///         uefiSettings: {
///             secureBootEnabled: true,
///         },
///     },
///     storageProfile: {
///         imageReference: {
///             id: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/marketplaceGalleryImages/test-marketplace-gallery-image",
///         },
///         vmConfigStoragePathId: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container",
///     },
///     virtualMachineName: "test-vm",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.azurestackhci.VirtualMachine("virtualMachine",
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     hardware_profile={
///         "vm_size": azure_native.azurestackhci.VmSizeEnum.DEFAULT,
///     },
///     location="West US2",
///     network_profile={
///         "network_interfaces": [{
///             "id": "test-nic",
///         }],
///     },
///     os_profile={
///         "admin_password": "password",
///         "admin_username": "localadmin",
///         "computer_name": "luamaster",
///     },
///     resource_group_name="test-rg",
///     security_profile={
///         "enable_tpm": True,
///         "uefi_settings": {
///             "secure_boot_enabled": True,
///         },
///     },
///     storage_profile={
///         "image_reference": {
///             "id": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/marketplaceGalleryImages/test-marketplace-gallery-image",
///         },
///         "vm_config_storage_path_id": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container",
///     },
///     virtual_machine_name="test-vm")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:azurestackhci:VirtualMachine
///     properties:
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       hardwareProfile:
///         vmSize: Default
///       location: West US2
///       networkProfile:
///         networkInterfaces:
///           - id: test-nic
///       osProfile:
///         adminPassword: password
///         adminUsername: localadmin
///         computerName: luamaster
///       resourceGroupName: test-rg
///       securityProfile:
///         enableTPM: true
///         uefiSettings:
///           secureBootEnabled: true
///       storageProfile:
///         imageReference:
///           id: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/marketplaceGalleryImages/test-marketplace-gallery-image
///         vmConfigStoragePathId: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container
///       virtualMachineName: test-vm
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PutVirtualMachineWithOsDisk
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.AzureStackHCI.VirtualMachine("virtualMachine", new()
///     {
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         HardwareProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesHardwareProfileArgs
///         {
///             VmSize = AzureNative.AzureStackHCI.VmSizeEnum.Default,
///         },
///         Location = "West US2",
///         NetworkProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesNetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesNetworkInterfacesArgs
///                 {
///                     Id = "test-nic",
///                 },
///             },
///         },
///         ResourceGroupName = "test-rg",
///         SecurityProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesSecurityProfileArgs
///         {
///             EnableTPM = true,
///             UefiSettings = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesUefiSettingsArgs
///             {
///                 SecureBootEnabled = true,
///             },
///         },
///         StorageProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesStorageProfileArgs
///         {
///             OsDisk = new AzureNative.AzureStackHCI.Inputs.VirtualMachinePropertiesOsDiskArgs
///             {
///                 Id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd",
///             },
///             VmConfigStoragePathId = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container",
///         },
///         VirtualMachineName = "test-vm",
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
/// 		_, err := azurestackhci.NewVirtualMachine(ctx, "virtualMachine", &azurestackhci.VirtualMachineArgs{
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			HardwareProfile: &azurestackhci.VirtualMachinePropertiesHardwareProfileArgs{
/// 				VmSize: pulumi.String(azurestackhci.VmSizeEnumDefault),
/// 			},
/// 			Location: pulumi.String("West US2"),
/// 			NetworkProfile: &azurestackhci.VirtualMachinePropertiesNetworkProfileArgs{
/// 				NetworkInterfaces: azurestackhci.VirtualMachinePropertiesNetworkInterfacesArray{
/// 					&azurestackhci.VirtualMachinePropertiesNetworkInterfacesArgs{
/// 						Id: pulumi.String("test-nic"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			SecurityProfile: &azurestackhci.VirtualMachinePropertiesSecurityProfileArgs{
/// 				EnableTPM: pulumi.Bool(true),
/// 				UefiSettings: &azurestackhci.VirtualMachinePropertiesUefiSettingsArgs{
/// 					SecureBootEnabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			StorageProfile: &azurestackhci.VirtualMachinePropertiesStorageProfileArgs{
/// 				OsDisk: &azurestackhci.VirtualMachinePropertiesOsDiskArgs{
/// 					Id: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd"),
/// 				},
/// 				VmConfigStoragePathId: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container"),
/// 			},
/// 			VirtualMachineName: pulumi.String("test-vm"),
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
/// import com.pulumi.azurenative.azurestackhci.VirtualMachine;
/// import com.pulumi.azurenative.azurestackhci.VirtualMachineArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesHardwareProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesNetworkProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesSecurityProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesUefiSettingsArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesStorageProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachinePropertiesOsDiskArgs;
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
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .hardwareProfile(VirtualMachinePropertiesHardwareProfileArgs.builder()
///                 .vmSize("Default")
///                 .build())
///             .location("West US2")
///             .networkProfile(VirtualMachinePropertiesNetworkProfileArgs.builder()
///                 .networkInterfaces(VirtualMachinePropertiesNetworkInterfacesArgs.builder()
///                     .id("test-nic")
///                     .build())
///                 .build())
///             .resourceGroupName("test-rg")
///             .securityProfile(VirtualMachinePropertiesSecurityProfileArgs.builder()
///                 .enableTPM(true)
///                 .uefiSettings(VirtualMachinePropertiesUefiSettingsArgs.builder()
///                     .secureBootEnabled(true)
///                     .build())
///                 .build())
///             .storageProfile(VirtualMachinePropertiesStorageProfileArgs.builder()
///                 .osDisk(VirtualMachinePropertiesOsDiskArgs.builder()
///                     .id("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd")
///                     .build())
///                 .vmConfigStoragePathId("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container")
///                 .build())
///             .virtualMachineName("test-vm")
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
/// const virtualMachine = new azure_native.azurestackhci.VirtualMachine("virtualMachine", {
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     hardwareProfile: {
///         vmSize: azure_native.azurestackhci.VmSizeEnum.Default,
///     },
///     location: "West US2",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "test-nic",
///         }],
///     },
///     resourceGroupName: "test-rg",
///     securityProfile: {
///         enableTPM: true,
///         uefiSettings: {
///             secureBootEnabled: true,
///         },
///     },
///     storageProfile: {
///         osDisk: {
///             id: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd",
///         },
///         vmConfigStoragePathId: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container",
///     },
///     virtualMachineName: "test-vm",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.azurestackhci.VirtualMachine("virtualMachine",
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     hardware_profile={
///         "vm_size": azure_native.azurestackhci.VmSizeEnum.DEFAULT,
///     },
///     location="West US2",
///     network_profile={
///         "network_interfaces": [{
///             "id": "test-nic",
///         }],
///     },
///     resource_group_name="test-rg",
///     security_profile={
///         "enable_tpm": True,
///         "uefi_settings": {
///             "secure_boot_enabled": True,
///         },
///     },
///     storage_profile={
///         "os_disk": {
///             "id": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd",
///         },
///         "vm_config_storage_path_id": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container",
///     },
///     virtual_machine_name="test-vm")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:azurestackhci:VirtualMachine
///     properties:
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       hardwareProfile:
///         vmSize: Default
///       location: West US2
///       networkProfile:
///         networkInterfaces:
///           - id: test-nic
///       resourceGroupName: test-rg
///       securityProfile:
///         enableTPM: true
///         uefiSettings:
///           secureBootEnabled: true
///       storageProfile:
///         osDisk:
///           id: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd
///         vmConfigStoragePathId: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container
///       virtualMachineName: test-vm
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
/// $ pulumi import azure-native:azurestackhci:VirtualMachine myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/virtualMachines/{virtualMachineName}
/// ```
class VirtualMachine extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// Guest agent status properties.
  late final pulumi.Output<GuestAgentProfileResponse?> guestAgentProfile;

  /// HardwareProfile - Specifies the hardware settings for the virtual machine.
  late final pulumi.Output<VirtualMachinePropertiesResponseHardwareProfile?>
  hardwareProfile;

  /// Identity for the resource.
  late final pulumi.Output<IdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// NetworkProfile - describes the network configuration the virtual machine
  late final pulumi.Output<VirtualMachinePropertiesResponseNetworkProfile?>
  networkProfile;

  /// OsProfile - describes the configuration of the operating system and sets login data
  late final pulumi.Output<VirtualMachinePropertiesResponseOsProfile?>
  osProfile;

  /// Provisioning state of the virtual machine.
  late final pulumi.Output<String> provisioningState;

  /// SecurityProfile - Specifies the security settings for the virtual machine.
  late final pulumi.Output<VirtualMachinePropertiesResponseSecurityProfile?>
  securityProfile;

  /// The observed state of virtual machines
  late final pulumi.Output<VirtualMachineStatusResponse> status;

  /// StorageProfile - contains information about the disks and storage information for the virtual machine
  late final pulumi.Output<VirtualMachinePropertiesResponseStorageProfile?>
  storageProfile;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Unique identifier for the vm resource.
  late final pulumi.Output<String> vmId;

  /// Creates a new [VirtualMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachine]. {@macro pulumi_azurestackhci_virtual_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachine(
    String name, {
    VirtualMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:azurestackhci:VirtualMachine',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
    );
    guestAgentProfile = registerOutput<GuestAgentProfileResponse?>(
      'guestAgentProfile',
    );
    hardwareProfile =
        registerOutput<VirtualMachinePropertiesResponseHardwareProfile?>(
          'hardwareProfile',
        );
    identity = registerOutput<IdentityResponse?>('identity');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkProfile =
        registerOutput<VirtualMachinePropertiesResponseNetworkProfile?>(
          'networkProfile',
        );
    osProfile = registerOutput<VirtualMachinePropertiesResponseOsProfile?>(
      'osProfile',
    );
    provisioningState = registerOutput<String>('provisioningState');
    securityProfile =
        registerOutput<VirtualMachinePropertiesResponseSecurityProfile?>(
          'securityProfile',
        );
    status = registerOutput<VirtualMachineStatusResponse>('status');
    storageProfile =
        registerOutput<VirtualMachinePropertiesResponseStorageProfile?>(
          'storageProfile',
        );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    vmId = registerOutput<String>('vmId');
  }
}
