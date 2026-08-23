import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'guest_agent_install_status_response.dart';
import 'http_proxy_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_instance_args.dart';
import 'virtual_machine_instance_properties_hardware_profile_response.dart';
import 'virtual_machine_instance_properties_network_profile_response.dart';
import 'virtual_machine_instance_properties_os_profile_response.dart';
import 'virtual_machine_instance_properties_security_profile_response.dart';
import 'virtual_machine_instance_properties_storage_profile_response.dart';
import 'virtual_machine_instance_status_response.dart';
import 'virtual_machine_instance_view_response.dart';

/// The virtual machine instance resource definition.
///
/// Uses Azure REST API version 2025-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-07-01-preview.
///
/// Other available API versions: 2023-07-01-preview, 2023-09-01-preview, 2024-01-01, 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview, 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateVirtualMachineInstanceFromLocal
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineInstance = new AzureNative.AzureStackHCI.VirtualMachineInstance("virtualMachineInstance", new()
///     {
///         CreateFromLocal = true,
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         NetworkProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesNetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.AzureStackHCI.Inputs.NetworkInterfaceArmReferenceArgs
///                 {
///                     Id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///                 },
///             },
///         },
///         ResourceUri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
///         StorageProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesStorageProfileArgs
///         {
///             DataDisks = new[]
///             {
///                 new AzureNative.AzureStackHCI.Inputs.VirtualHardDiskArmReferenceArgs
///                 {
///                     Id = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd",
///                 },
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewVirtualMachineInstance(ctx, "virtualMachineInstance", &azurestackhci.VirtualMachineInstanceArgs{
/// 			CreateFromLocal: pulumi.Bool(true),
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			NetworkProfile: &azurestackhci.VirtualMachineInstancePropertiesNetworkProfileArgs{
/// 				NetworkInterfaces: azurestackhci.NetworkInterfaceArmReferenceArray{
/// 					&azurestackhci.NetworkInterfaceArmReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic"),
/// 					},
/// 				},
/// 			},
/// 			ResourceUri: pulumi.String("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"),
/// 			StorageProfile: &azurestackhci.VirtualMachineInstancePropertiesStorageProfileArgs{
/// 				DataDisks: azurestackhci.VirtualHardDiskArmReferenceArray{
/// 					&azurestackhci.VirtualHardDiskArmReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd"),
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_azurestackhci_virtualmachineinstance" "virtualMachineInstance" {
///   create_from_local = true
///   extended_location = {
///     name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"
///     type = "CustomLocation"
///   }
///   network_profile = {
///     network_interfaces = [{
///       "id" = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic"
///     }]
///   }
///   resource_uri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"
///   storage_profile = {
///     data_disks = [{
///       "id" = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd"
///     }]
///   }
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
/// import com.pulumi.azurenative.azurestackhci.VirtualMachineInstance;
/// import com.pulumi.azurenative.azurestackhci.VirtualMachineInstanceArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesNetworkProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesStorageProfileArgs;
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
///             .createFromLocal(true)
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .networkProfile(VirtualMachineInstancePropertiesNetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceArmReferenceArgs.builder()
///                     .id("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic")
///                     .build())
///                 .build())
///             .resourceUri("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM")
///             .storageProfile(VirtualMachineInstancePropertiesStorageProfileArgs.builder()
///                 .dataDisks(VirtualHardDiskArmReferenceArgs.builder()
///                     .id("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd")
///                     .build())
///                 .build())
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
/// const virtualMachineInstance = new azure_native.azurestackhci.VirtualMachineInstance("virtualMachineInstance", {
///     createFromLocal: true,
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///         }],
///     },
///     resourceUri: "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
///     storageProfile: {
///         dataDisks: [{
///             id: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd",
///         }],
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_instance = azure_native.azurestackhci.VirtualMachineInstance("virtualMachineInstance",
///     create_from_local=True,
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///         }],
///     },
///     resource_uri="subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
///     storage_profile={
///         "data_disks": [{
///             "id": "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd",
///         }],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineInstance:
///     type: azure-native:azurestackhci:VirtualMachineInstance
///     properties:
///       createFromLocal: true
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic
///       resourceUri: subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM
///       storageProfile:
///         dataDisks:
///           - id: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PutVirtualMachineInstanceWithGalleryImage
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineInstance = new AzureNative.AzureStackHCI.VirtualMachineInstance("virtualMachineInstance", new()
///     {
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         HardwareProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesHardwareProfileArgs
///         {
///             VmSize = AzureNative.AzureStackHCI.VmSizeEnum.Default,
///         },
///         NetworkProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesNetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.AzureStackHCI.Inputs.NetworkInterfaceArmReferenceArgs
///                 {
///                     Id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///                 },
///             },
///         },
///         OsProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesOsProfileArgs
///         {
///             AdminPassword = "password",
///             AdminUsername = "localadmin",
///             ComputerName = "luamaster",
///         },
///         ResourceUri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
///         SecurityProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesSecurityProfileArgs
///         {
///             EnableTPM = true,
///             UefiSettings = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs
///             {
///                 SecureBootEnabled = true,
///             },
///         },
///         StorageProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesStorageProfileArgs
///         {
///             ImageReference = new AzureNative.AzureStackHCI.Inputs.ImageArmReferenceArgs
///             {
///                 Id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image",
///             },
///             VmConfigStoragePathId = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewVirtualMachineInstance(ctx, "virtualMachineInstance", &azurestackhci.VirtualMachineInstanceArgs{
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			HardwareProfile: &azurestackhci.VirtualMachineInstancePropertiesHardwareProfileArgs{
/// 				VmSize: pulumi.String(azurestackhci.VmSizeEnumDefault),
/// 			},
/// 			NetworkProfile: &azurestackhci.VirtualMachineInstancePropertiesNetworkProfileArgs{
/// 				NetworkInterfaces: azurestackhci.NetworkInterfaceArmReferenceArray{
/// 					&azurestackhci.NetworkInterfaceArmReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic"),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &azurestackhci.VirtualMachineInstancePropertiesOsProfileArgs{
/// 				AdminPassword: pulumi.String("password"),
/// 				AdminUsername: pulumi.String("localadmin"),
/// 				ComputerName:  pulumi.String("luamaster"),
/// 			},
/// 			ResourceUri: pulumi.String("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"),
/// 			SecurityProfile: &azurestackhci.VirtualMachineInstancePropertiesSecurityProfileArgs{
/// 				EnableTPM: pulumi.Bool(true),
/// 				UefiSettings: &azurestackhci.VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs{
/// 					SecureBootEnabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			StorageProfile: &azurestackhci.VirtualMachineInstancePropertiesStorageProfileArgs{
/// 				ImageReference: &azurestackhci.ImageArmReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image"),
/// 				},
/// 				VmConfigStoragePathId: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_azurestackhci_virtualmachineinstance" "virtualMachineInstance" {
///   extended_location = {
///     name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"
///     type = "CustomLocation"
///   }
///   hardware_profile = {
///     vm_size = "Default"
///   }
///   network_profile = {
///     network_interfaces = [{
///       "id" = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic"
///     }]
///   }
///   os_profile = {
///     admin_password = "password"
///     admin_username = "localadmin"
///     computer_name  = "luamaster"
///   }
///   resource_uri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"
///   security_profile = {
///     enable_tpm = true
///     uefi_settings = {
///       secure_boot_enabled = true
///     }
///   }
///   storage_profile = {
///     image_reference = {
///       id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image"
///     }
///     vm_config_storage_path_id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container"
///   }
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
/// import com.pulumi.azurenative.azurestackhci.VirtualMachineInstance;
/// import com.pulumi.azurenative.azurestackhci.VirtualMachineInstanceArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesHardwareProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesNetworkProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesOsProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesSecurityProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesStorageProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ImageArmReferenceArgs;
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
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .hardwareProfile(VirtualMachineInstancePropertiesHardwareProfileArgs.builder()
///                 .vmSize("Default")
///                 .build())
///             .networkProfile(VirtualMachineInstancePropertiesNetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceArmReferenceArgs.builder()
///                     .id("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic")
///                     .build())
///                 .build())
///             .osProfile(VirtualMachineInstancePropertiesOsProfileArgs.builder()
///                 .adminPassword("password")
///                 .adminUsername("localadmin")
///                 .computerName("luamaster")
///                 .build())
///             .resourceUri("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM")
///             .securityProfile(VirtualMachineInstancePropertiesSecurityProfileArgs.builder()
///                 .enableTPM(true)
///                 .uefiSettings(VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs.builder()
///                     .secureBootEnabled(true)
///                     .build())
///                 .build())
///             .storageProfile(VirtualMachineInstancePropertiesStorageProfileArgs.builder()
///                 .imageReference(ImageArmReferenceArgs.builder()
///                     .id("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image")
///                     .build())
///                 .vmConfigStoragePathId("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container")
///                 .build())
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
/// const virtualMachineInstance = new azure_native.azurestackhci.VirtualMachineInstance("virtualMachineInstance", {
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     hardwareProfile: {
///         vmSize: azure_native.azurestackhci.VmSizeEnum.Default,
///     },
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///         }],
///     },
///     osProfile: {
///         adminPassword: "password",
///         adminUsername: "localadmin",
///         computerName: "luamaster",
///     },
///     resourceUri: "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
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
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_instance = azure_native.azurestackhci.VirtualMachineInstance("virtualMachineInstance",
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     hardware_profile={
///         "vm_size": azure_native.azurestackhci.VmSizeEnum.DEFAULT,
///     },
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///         }],
///     },
///     os_profile={
///         "admin_password": "password",
///         "admin_username": "localadmin",
///         "computer_name": "luamaster",
///     },
///     resource_uri="subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
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
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineInstance:
///     type: azure-native:azurestackhci:VirtualMachineInstance
///     properties:
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       hardwareProfile:
///         vmSize: Default
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic
///       osProfile:
///         adminPassword: password
///         adminUsername: localadmin
///         computerName: luamaster
///       resourceUri: subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM
///       securityProfile:
///         enableTPM: true
///         uefiSettings:
///           secureBootEnabled: true
///       storageProfile:
///         imageReference:
///           id: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image
///         vmConfigStoragePathId: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PutVirtualMachineInstanceWithGpu
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineInstance = new AzureNative.AzureStackHCI.VirtualMachineInstance("virtualMachineInstance", new()
///     {
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         HardwareProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesHardwareProfileArgs
///         {
///             VirtualMachineGPUs = new[]
///             {
///                 new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPUArgs
///                 {
///                     AssignmentType = AzureNative.AzureStackHCI.GpuAssignmentTypeEnum.GpuDDA,
///                     PartitionSizeMB = 0,
///                 },
///             },
///             VmSize = AzureNative.AzureStackHCI.VmSizeEnum.Default,
///         },
///         NetworkProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesNetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.AzureStackHCI.Inputs.NetworkInterfaceArmReferenceArgs
///                 {
///                     Id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///                 },
///             },
///         },
///         OsProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesOsProfileArgs
///         {
///             AdminPassword = "password",
///             AdminUsername = "localadmin",
///             ComputerName = "luamaster",
///         },
///         ResourceUri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
///         SecurityProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesSecurityProfileArgs
///         {
///             EnableTPM = true,
///             UefiSettings = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs
///             {
///                 SecureBootEnabled = true,
///             },
///         },
///         StorageProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesStorageProfileArgs
///         {
///             ImageReference = new AzureNative.AzureStackHCI.Inputs.ImageArmReferenceArgs
///             {
///                 Id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image",
///             },
///             VmConfigStoragePathId = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewVirtualMachineInstance(ctx, "virtualMachineInstance", &azurestackhci.VirtualMachineInstanceArgs{
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			HardwareProfile: &azurestackhci.VirtualMachineInstancePropertiesHardwareProfileArgs{
/// 				VirtualMachineGPUs: azurestackhci.VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPUArray{
/// 					&azurestackhci.VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPUArgs{
/// 						AssignmentType:  pulumi.String(azurestackhci.GpuAssignmentTypeEnumGpuDDA),
/// 						PartitionSizeMB: pulumi.Float64(0),
/// 					},
/// 				},
/// 				VmSize: pulumi.String(azurestackhci.VmSizeEnumDefault),
/// 			},
/// 			NetworkProfile: &azurestackhci.VirtualMachineInstancePropertiesNetworkProfileArgs{
/// 				NetworkInterfaces: azurestackhci.NetworkInterfaceArmReferenceArray{
/// 					&azurestackhci.NetworkInterfaceArmReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic"),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &azurestackhci.VirtualMachineInstancePropertiesOsProfileArgs{
/// 				AdminPassword: pulumi.String("password"),
/// 				AdminUsername: pulumi.String("localadmin"),
/// 				ComputerName:  pulumi.String("luamaster"),
/// 			},
/// 			ResourceUri: pulumi.String("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"),
/// 			SecurityProfile: &azurestackhci.VirtualMachineInstancePropertiesSecurityProfileArgs{
/// 				EnableTPM: pulumi.Bool(true),
/// 				UefiSettings: &azurestackhci.VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs{
/// 					SecureBootEnabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			StorageProfile: &azurestackhci.VirtualMachineInstancePropertiesStorageProfileArgs{
/// 				ImageReference: &azurestackhci.ImageArmReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image"),
/// 				},
/// 				VmConfigStoragePathId: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_azurestackhci_virtualmachineinstance" "virtualMachineInstance" {
///   extended_location = {
///     name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"
///     type = "CustomLocation"
///   }
///   hardware_profile = {
///     virtual_machine_gp_us = [{
///       "assignmentType"  = "GpuDDA"
///       "partitionSizeMB" = 0
///     }]
///     vm_size = "Default"
///   }
///   network_profile = {
///     network_interfaces = [{
///       "id" = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic"
///     }]
///   }
///   os_profile = {
///     admin_password = "password"
///     admin_username = "localadmin"
///     computer_name  = "luamaster"
///   }
///   resource_uri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"
///   security_profile = {
///     enable_tpm = true
///     uefi_settings = {
///       secure_boot_enabled = true
///     }
///   }
///   storage_profile = {
///     image_reference = {
///       id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image"
///     }
///     vm_config_storage_path_id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container"
///   }
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
/// import com.pulumi.azurenative.azurestackhci.VirtualMachineInstance;
/// import com.pulumi.azurenative.azurestackhci.VirtualMachineInstanceArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesHardwareProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesNetworkProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesOsProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesSecurityProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesStorageProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ImageArmReferenceArgs;
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
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .hardwareProfile(VirtualMachineInstancePropertiesHardwareProfileArgs.builder()
///                 .virtualMachineGPUs(VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPUArgs.builder()
///                     .assignmentType("GpuDDA")
///                     .partitionSizeMB(0.0)
///                     .build())
///                 .vmSize("Default")
///                 .build())
///             .networkProfile(VirtualMachineInstancePropertiesNetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceArmReferenceArgs.builder()
///                     .id("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic")
///                     .build())
///                 .build())
///             .osProfile(VirtualMachineInstancePropertiesOsProfileArgs.builder()
///                 .adminPassword("password")
///                 .adminUsername("localadmin")
///                 .computerName("luamaster")
///                 .build())
///             .resourceUri("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM")
///             .securityProfile(VirtualMachineInstancePropertiesSecurityProfileArgs.builder()
///                 .enableTPM(true)
///                 .uefiSettings(VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs.builder()
///                     .secureBootEnabled(true)
///                     .build())
///                 .build())
///             .storageProfile(VirtualMachineInstancePropertiesStorageProfileArgs.builder()
///                 .imageReference(ImageArmReferenceArgs.builder()
///                     .id("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image")
///                     .build())
///                 .vmConfigStoragePathId("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container")
///                 .build())
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
/// const virtualMachineInstance = new azure_native.azurestackhci.VirtualMachineInstance("virtualMachineInstance", {
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     hardwareProfile: {
///         virtualMachineGPUs: [{
///             assignmentType: azure_native.azurestackhci.GpuAssignmentTypeEnum.GpuDDA,
///             partitionSizeMB: 0,
///         }],
///         vmSize: azure_native.azurestackhci.VmSizeEnum.Default,
///     },
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///         }],
///     },
///     osProfile: {
///         adminPassword: "password",
///         adminUsername: "localadmin",
///         computerName: "luamaster",
///     },
///     resourceUri: "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
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
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_instance = azure_native.azurestackhci.VirtualMachineInstance("virtualMachineInstance",
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     hardware_profile={
///         "virtual_machine_gpus": [{
///             "assignment_type": azure_native.azurestackhci.GpuAssignmentTypeEnum.GPU_DDA,
///             "partition_size_mb": float(0),
///         }],
///         "vm_size": azure_native.azurestackhci.VmSizeEnum.DEFAULT,
///     },
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///         }],
///     },
///     os_profile={
///         "admin_password": "password",
///         "admin_username": "localadmin",
///         "computer_name": "luamaster",
///     },
///     resource_uri="subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
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
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineInstance:
///     type: azure-native:azurestackhci:VirtualMachineInstance
///     properties:
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       hardwareProfile:
///         virtualMachineGPUs:
///           - assignmentType: GpuDDA
///             partitionSizeMB: 0
///         vmSize: Default
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic
///       osProfile:
///         adminPassword: password
///         adminUsername: localadmin
///         computerName: luamaster
///       resourceUri: subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM
///       securityProfile:
///         enableTPM: true
///         uefiSettings:
///           secureBootEnabled: true
///       storageProfile:
///         imageReference:
///           id: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image
///         vmConfigStoragePathId: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PutVirtualMachineInstanceWithMarketplaceGalleryImage
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineInstance = new AzureNative.AzureStackHCI.VirtualMachineInstance("virtualMachineInstance", new()
///     {
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         HardwareProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesHardwareProfileArgs
///         {
///             VmSize = AzureNative.AzureStackHCI.VmSizeEnum.Default,
///         },
///         NetworkProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesNetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.AzureStackHCI.Inputs.NetworkInterfaceArmReferenceArgs
///                 {
///                     Id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///                 },
///             },
///         },
///         OsProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesOsProfileArgs
///         {
///             AdminPassword = "password",
///             AdminUsername = "localadmin",
///             ComputerName = "luamaster",
///         },
///         ResourceUri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
///         SecurityProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesSecurityProfileArgs
///         {
///             EnableTPM = true,
///             UefiSettings = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs
///             {
///                 SecureBootEnabled = true,
///             },
///         },
///         StorageProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesStorageProfileArgs
///         {
///             ImageReference = new AzureNative.AzureStackHCI.Inputs.ImageArmReferenceArgs
///             {
///                 Id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/marketplaceGalleryImages/test-marketplace-gallery-image",
///             },
///             VmConfigStoragePathId = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewVirtualMachineInstance(ctx, "virtualMachineInstance", &azurestackhci.VirtualMachineInstanceArgs{
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			HardwareProfile: &azurestackhci.VirtualMachineInstancePropertiesHardwareProfileArgs{
/// 				VmSize: pulumi.String(azurestackhci.VmSizeEnumDefault),
/// 			},
/// 			NetworkProfile: &azurestackhci.VirtualMachineInstancePropertiesNetworkProfileArgs{
/// 				NetworkInterfaces: azurestackhci.NetworkInterfaceArmReferenceArray{
/// 					&azurestackhci.NetworkInterfaceArmReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic"),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &azurestackhci.VirtualMachineInstancePropertiesOsProfileArgs{
/// 				AdminPassword: pulumi.String("password"),
/// 				AdminUsername: pulumi.String("localadmin"),
/// 				ComputerName:  pulumi.String("luamaster"),
/// 			},
/// 			ResourceUri: pulumi.String("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"),
/// 			SecurityProfile: &azurestackhci.VirtualMachineInstancePropertiesSecurityProfileArgs{
/// 				EnableTPM: pulumi.Bool(true),
/// 				UefiSettings: &azurestackhci.VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs{
/// 					SecureBootEnabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			StorageProfile: &azurestackhci.VirtualMachineInstancePropertiesStorageProfileArgs{
/// 				ImageReference: &azurestackhci.ImageArmReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/marketplaceGalleryImages/test-marketplace-gallery-image"),
/// 				},
/// 				VmConfigStoragePathId: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_azurestackhci_virtualmachineinstance" "virtualMachineInstance" {
///   extended_location = {
///     name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"
///     type = "CustomLocation"
///   }
///   hardware_profile = {
///     vm_size = "Default"
///   }
///   network_profile = {
///     network_interfaces = [{
///       "id" = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic"
///     }]
///   }
///   os_profile = {
///     admin_password = "password"
///     admin_username = "localadmin"
///     computer_name  = "luamaster"
///   }
///   resource_uri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"
///   security_profile = {
///     enable_tpm = true
///     uefi_settings = {
///       secure_boot_enabled = true
///     }
///   }
///   storage_profile = {
///     image_reference = {
///       id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/marketplaceGalleryImages/test-marketplace-gallery-image"
///     }
///     vm_config_storage_path_id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container"
///   }
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
/// import com.pulumi.azurenative.azurestackhci.VirtualMachineInstance;
/// import com.pulumi.azurenative.azurestackhci.VirtualMachineInstanceArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesHardwareProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesNetworkProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesOsProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesSecurityProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesStorageProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ImageArmReferenceArgs;
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
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .hardwareProfile(VirtualMachineInstancePropertiesHardwareProfileArgs.builder()
///                 .vmSize("Default")
///                 .build())
///             .networkProfile(VirtualMachineInstancePropertiesNetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceArmReferenceArgs.builder()
///                     .id("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic")
///                     .build())
///                 .build())
///             .osProfile(VirtualMachineInstancePropertiesOsProfileArgs.builder()
///                 .adminPassword("password")
///                 .adminUsername("localadmin")
///                 .computerName("luamaster")
///                 .build())
///             .resourceUri("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM")
///             .securityProfile(VirtualMachineInstancePropertiesSecurityProfileArgs.builder()
///                 .enableTPM(true)
///                 .uefiSettings(VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs.builder()
///                     .secureBootEnabled(true)
///                     .build())
///                 .build())
///             .storageProfile(VirtualMachineInstancePropertiesStorageProfileArgs.builder()
///                 .imageReference(ImageArmReferenceArgs.builder()
///                     .id("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/marketplaceGalleryImages/test-marketplace-gallery-image")
///                     .build())
///                 .vmConfigStoragePathId("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container")
///                 .build())
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
/// const virtualMachineInstance = new azure_native.azurestackhci.VirtualMachineInstance("virtualMachineInstance", {
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     hardwareProfile: {
///         vmSize: azure_native.azurestackhci.VmSizeEnum.Default,
///     },
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///         }],
///     },
///     osProfile: {
///         adminPassword: "password",
///         adminUsername: "localadmin",
///         computerName: "luamaster",
///     },
///     resourceUri: "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
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
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_instance = azure_native.azurestackhci.VirtualMachineInstance("virtualMachineInstance",
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     hardware_profile={
///         "vm_size": azure_native.azurestackhci.VmSizeEnum.DEFAULT,
///     },
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///         }],
///     },
///     os_profile={
///         "admin_password": "password",
///         "admin_username": "localadmin",
///         "computer_name": "luamaster",
///     },
///     resource_uri="subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
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
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineInstance:
///     type: azure-native:azurestackhci:VirtualMachineInstance
///     properties:
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       hardwareProfile:
///         vmSize: Default
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic
///       osProfile:
///         adminPassword: password
///         adminUsername: localadmin
///         computerName: luamaster
///       resourceUri: subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM
///       securityProfile:
///         enableTPM: true
///         uefiSettings:
///           secureBootEnabled: true
///       storageProfile:
///         imageReference:
///           id: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/marketplaceGalleryImages/test-marketplace-gallery-image
///         vmConfigStoragePathId: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PutVirtualMachineInstanceWithOsDisk
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineInstance = new AzureNative.AzureStackHCI.VirtualMachineInstance("virtualMachineInstance", new()
///     {
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         HardwareProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesHardwareProfileArgs
///         {
///             VmSize = AzureNative.AzureStackHCI.VmSizeEnum.Default,
///         },
///         NetworkProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesNetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.AzureStackHCI.Inputs.NetworkInterfaceArmReferenceArgs
///                 {
///                     Id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///                 },
///             },
///         },
///         ResourceUri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
///         SecurityProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesSecurityProfileArgs
///         {
///             EnableTPM = true,
///             UefiSettings = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs
///             {
///                 SecureBootEnabled = true,
///             },
///         },
///         StorageProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesStorageProfileArgs
///         {
///             OsDisk = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesStorageProfileOsDiskArgs
///             {
///                 Id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd",
///             },
///             VmConfigStoragePathId = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewVirtualMachineInstance(ctx, "virtualMachineInstance", &azurestackhci.VirtualMachineInstanceArgs{
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			HardwareProfile: &azurestackhci.VirtualMachineInstancePropertiesHardwareProfileArgs{
/// 				VmSize: pulumi.String(azurestackhci.VmSizeEnumDefault),
/// 			},
/// 			NetworkProfile: &azurestackhci.VirtualMachineInstancePropertiesNetworkProfileArgs{
/// 				NetworkInterfaces: azurestackhci.NetworkInterfaceArmReferenceArray{
/// 					&azurestackhci.NetworkInterfaceArmReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic"),
/// 					},
/// 				},
/// 			},
/// 			ResourceUri: pulumi.String("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"),
/// 			SecurityProfile: &azurestackhci.VirtualMachineInstancePropertiesSecurityProfileArgs{
/// 				EnableTPM: pulumi.Bool(true),
/// 				UefiSettings: &azurestackhci.VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs{
/// 					SecureBootEnabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			StorageProfile: &azurestackhci.VirtualMachineInstancePropertiesStorageProfileArgs{
/// 				OsDisk: &azurestackhci.VirtualMachineInstancePropertiesStorageProfileOsDiskArgs{
/// 					Id: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd"),
/// 				},
/// 				VmConfigStoragePathId: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_azurestackhci_virtualmachineinstance" "virtualMachineInstance" {
///   extended_location = {
///     name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"
///     type = "CustomLocation"
///   }
///   hardware_profile = {
///     vm_size = "Default"
///   }
///   network_profile = {
///     network_interfaces = [{
///       "id" = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic"
///     }]
///   }
///   resource_uri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"
///   security_profile = {
///     enable_tpm = true
///     uefi_settings = {
///       secure_boot_enabled = true
///     }
///   }
///   storage_profile = {
///     os_disk = {
///       id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd"
///     }
///     vm_config_storage_path_id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container"
///   }
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
/// import com.pulumi.azurenative.azurestackhci.VirtualMachineInstance;
/// import com.pulumi.azurenative.azurestackhci.VirtualMachineInstanceArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesHardwareProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesNetworkProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesSecurityProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesStorageProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesStorageProfileOsDiskArgs;
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
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .hardwareProfile(VirtualMachineInstancePropertiesHardwareProfileArgs.builder()
///                 .vmSize("Default")
///                 .build())
///             .networkProfile(VirtualMachineInstancePropertiesNetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceArmReferenceArgs.builder()
///                     .id("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic")
///                     .build())
///                 .build())
///             .resourceUri("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM")
///             .securityProfile(VirtualMachineInstancePropertiesSecurityProfileArgs.builder()
///                 .enableTPM(true)
///                 .uefiSettings(VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs.builder()
///                     .secureBootEnabled(true)
///                     .build())
///                 .build())
///             .storageProfile(VirtualMachineInstancePropertiesStorageProfileArgs.builder()
///                 .osDisk(VirtualMachineInstancePropertiesStorageProfileOsDiskArgs.builder()
///                     .id("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd")
///                     .build())
///                 .vmConfigStoragePathId("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container")
///                 .build())
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
/// const virtualMachineInstance = new azure_native.azurestackhci.VirtualMachineInstance("virtualMachineInstance", {
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     hardwareProfile: {
///         vmSize: azure_native.azurestackhci.VmSizeEnum.Default,
///     },
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///         }],
///     },
///     resourceUri: "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
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
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_instance = azure_native.azurestackhci.VirtualMachineInstance("virtualMachineInstance",
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     hardware_profile={
///         "vm_size": azure_native.azurestackhci.VmSizeEnum.DEFAULT,
///     },
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///         }],
///     },
///     resource_uri="subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
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
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineInstance:
///     type: azure-native:azurestackhci:VirtualMachineInstance
///     properties:
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       hardwareProfile:
///         vmSize: Default
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic
///       resourceUri: subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM
///       securityProfile:
///         enableTPM: true
///         uefiSettings:
///           secureBootEnabled: true
///       storageProfile:
///         osDisk:
///           id: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/virtualHardDisks/test-vhd
///         vmConfigStoragePathId: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PutVirtualMachineInstanceWithVMConfigAgent
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineInstance = new AzureNative.AzureStackHCI.VirtualMachineInstance("virtualMachineInstance", new()
///     {
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         HardwareProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesHardwareProfileArgs
///         {
///             VmSize = AzureNative.AzureStackHCI.VmSizeEnum.Default,
///         },
///         NetworkProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesNetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.AzureStackHCI.Inputs.NetworkInterfaceArmReferenceArgs
///                 {
///                     Id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///                 },
///             },
///         },
///         OsProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesOsProfileArgs
///         {
///             AdminPassword = "password",
///             AdminUsername = "localadmin",
///             ComputerName = "luamaster",
///             WindowsConfiguration = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesOsProfileWindowsConfigurationArgs
///             {
///                 ProvisionVMConfigAgent = true,
///             },
///         },
///         ResourceUri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
///         SecurityProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesSecurityProfileArgs
///         {
///             EnableTPM = true,
///             UefiSettings = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs
///             {
///                 SecureBootEnabled = true,
///             },
///         },
///         StorageProfile = new AzureNative.AzureStackHCI.Inputs.VirtualMachineInstancePropertiesStorageProfileArgs
///         {
///             ImageReference = new AzureNative.AzureStackHCI.Inputs.ImageArmReferenceArgs
///             {
///                 Id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image",
///             },
///             VmConfigStoragePathId = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewVirtualMachineInstance(ctx, "virtualMachineInstance", &azurestackhci.VirtualMachineInstanceArgs{
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			HardwareProfile: &azurestackhci.VirtualMachineInstancePropertiesHardwareProfileArgs{
/// 				VmSize: pulumi.String(azurestackhci.VmSizeEnumDefault),
/// 			},
/// 			NetworkProfile: &azurestackhci.VirtualMachineInstancePropertiesNetworkProfileArgs{
/// 				NetworkInterfaces: azurestackhci.NetworkInterfaceArmReferenceArray{
/// 					&azurestackhci.NetworkInterfaceArmReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic"),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &azurestackhci.VirtualMachineInstancePropertiesOsProfileArgs{
/// 				AdminPassword: pulumi.String("password"),
/// 				AdminUsername: pulumi.String("localadmin"),
/// 				ComputerName:  pulumi.String("luamaster"),
/// 				WindowsConfiguration: &azurestackhci.VirtualMachineInstancePropertiesOsProfileWindowsConfigurationArgs{
/// 					ProvisionVMConfigAgent: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceUri: pulumi.String("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"),
/// 			SecurityProfile: &azurestackhci.VirtualMachineInstancePropertiesSecurityProfileArgs{
/// 				EnableTPM: pulumi.Bool(true),
/// 				UefiSettings: &azurestackhci.VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs{
/// 					SecureBootEnabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			StorageProfile: &azurestackhci.VirtualMachineInstancePropertiesStorageProfileArgs{
/// 				ImageReference: &azurestackhci.ImageArmReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image"),
/// 				},
/// 				VmConfigStoragePathId: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_azurestackhci_virtualmachineinstance" "virtualMachineInstance" {
///   extended_location = {
///     name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"
///     type = "CustomLocation"
///   }
///   hardware_profile = {
///     vm_size = "Default"
///   }
///   network_profile = {
///     network_interfaces = [{
///       "id" = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic"
///     }]
///   }
///   os_profile = {
///     admin_password = "password"
///     admin_username = "localadmin"
///     computer_name  = "luamaster"
///     windows_configuration = {
///       provision_vm_config_agent = true
///     }
///   }
///   resource_uri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"
///   security_profile = {
///     enable_tpm = true
///     uefi_settings = {
///       secure_boot_enabled = true
///     }
///   }
///   storage_profile = {
///     image_reference = {
///       id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image"
///     }
///     vm_config_storage_path_id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container"
///   }
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
/// import com.pulumi.azurenative.azurestackhci.VirtualMachineInstance;
/// import com.pulumi.azurenative.azurestackhci.VirtualMachineInstanceArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesHardwareProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesNetworkProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesOsProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesOsProfileWindowsConfigurationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesSecurityProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualMachineInstancePropertiesStorageProfileArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ImageArmReferenceArgs;
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
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .hardwareProfile(VirtualMachineInstancePropertiesHardwareProfileArgs.builder()
///                 .vmSize("Default")
///                 .build())
///             .networkProfile(VirtualMachineInstancePropertiesNetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceArmReferenceArgs.builder()
///                     .id("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic")
///                     .build())
///                 .build())
///             .osProfile(VirtualMachineInstancePropertiesOsProfileArgs.builder()
///                 .adminPassword("password")
///                 .adminUsername("localadmin")
///                 .computerName("luamaster")
///                 .windowsConfiguration(VirtualMachineInstancePropertiesOsProfileWindowsConfigurationArgs.builder()
///                     .provisionVMConfigAgent(true)
///                     .build())
///                 .build())
///             .resourceUri("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM")
///             .securityProfile(VirtualMachineInstancePropertiesSecurityProfileArgs.builder()
///                 .enableTPM(true)
///                 .uefiSettings(VirtualMachineInstancePropertiesSecurityProfileUefiSettingsArgs.builder()
///                     .secureBootEnabled(true)
///                     .build())
///                 .build())
///             .storageProfile(VirtualMachineInstancePropertiesStorageProfileArgs.builder()
///                 .imageReference(ImageArmReferenceArgs.builder()
///                     .id("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image")
///                     .build())
///                 .vmConfigStoragePathId("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container")
///                 .build())
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
/// const virtualMachineInstance = new azure_native.azurestackhci.VirtualMachineInstance("virtualMachineInstance", {
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     hardwareProfile: {
///         vmSize: azure_native.azurestackhci.VmSizeEnum.Default,
///     },
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///         }],
///     },
///     osProfile: {
///         adminPassword: "password",
///         adminUsername: "localadmin",
///         computerName: "luamaster",
///         windowsConfiguration: {
///             provisionVMConfigAgent: true,
///         },
///     },
///     resourceUri: "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
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
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_instance = azure_native.azurestackhci.VirtualMachineInstance("virtualMachineInstance",
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     hardware_profile={
///         "vm_size": azure_native.azurestackhci.VmSizeEnum.DEFAULT,
///     },
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic",
///         }],
///     },
///     os_profile={
///         "admin_password": "password",
///         "admin_username": "localadmin",
///         "computer_name": "luamaster",
///         "windows_configuration": {
///             "provision_vm_config_agent": True,
///         },
///     },
///     resource_uri="subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
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
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineInstance:
///     type: azure-native:azurestackhci:VirtualMachineInstance
///     properties:
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       hardwareProfile:
///         vmSize: Default
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/networkInterfaces/test-nic
///       osProfile:
///         adminPassword: password
///         adminUsername: localadmin
///         computerName: luamaster
///         windowsConfiguration:
///           provisionVMConfigAgent: true
///       resourceUri: subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM
///       securityProfile:
///         enableTPM: true
///         uefiSettings:
///           secureBootEnabled: true
///       storageProfile:
///         imageReference:
///           id: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/galleryImages/test-gallery-image
///         vmConfigStoragePathId: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/storageContainers/test-container
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
/// $ pulumi import azure-native:azurestackhci:VirtualMachineInstance myresource1 /{resourceUri}/providers/Microsoft.AzureStackHCI/virtualMachineInstances/default
/// ```
class VirtualMachineInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Boolean indicating whether this is an existing local virtual machine or if one should be created.
  late final pulumi.Output<bool?> createFromLocal;
  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// Guest agent install status.
  late final pulumi.Output<GuestAgentInstallStatusResponse?> guestAgentInstallStatus;
  /// HardwareProfile - Specifies the hardware settings for the virtual machine instance.
  late final pulumi.Output<VirtualMachineInstancePropertiesHardwareProfileResponse?> hardwareProfile;
  /// HTTP Proxy configuration for the VM.
  late final pulumi.Output<HttpProxyConfigurationResponse?> httpProxyConfig;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The virtual machine instance view.
  late final pulumi.Output<VirtualMachineInstanceViewResponse> instanceView;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// NetworkProfile - describes the network configuration the virtual machine instance
  late final pulumi.Output<VirtualMachineInstancePropertiesNetworkProfileResponse?> networkProfile;
  /// OsProfile - describes the configuration of the operating system and sets login data
  late final pulumi.Output<VirtualMachineInstancePropertiesOsProfileResponse?> osProfile;
  /// Provisioning state of the virtual machine instance.
  late final pulumi.Output<String> provisioningState;
  /// Unique identifier defined by ARC to identify the guest of the VM.
  late final pulumi.Output<String?> resourceUid;
  /// SecurityProfile - Specifies the security settings for the virtual machine instance.
  late final pulumi.Output<VirtualMachineInstancePropertiesSecurityProfileResponse?> securityProfile;
  /// The observed state of virtual machine instances
  late final pulumi.Output<VirtualMachineInstanceStatusResponse> status;
  /// StorageProfile - contains information about the disks and storage information for the virtual machine instance
  late final pulumi.Output<VirtualMachineInstancePropertiesStorageProfileResponse?> storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Unique identifier for the vm resource.
  late final pulumi.Output<String> vmId;

  /// Creates a new [VirtualMachineInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineInstance]. {@macro pulumi_azurestackhci_virtual_machine_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineInstance(
    String name, {
    VirtualMachineInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:VirtualMachineInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createFromLocal = registerOutput<bool?>('createFromLocal');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    guestAgentInstallStatus = registerOutput<GuestAgentInstallStatusResponse?>('guestAgentInstallStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GuestAgentInstallStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hardwareProfile = registerOutput<VirtualMachineInstancePropertiesHardwareProfileResponse?>('hardwareProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineInstancePropertiesHardwareProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpProxyConfig = registerOutput<HttpProxyConfigurationResponse?>('httpProxyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HttpProxyConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceView = registerOutput<VirtualMachineInstanceViewResponse>('instanceView', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineInstanceViewResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<VirtualMachineInstancePropertiesNetworkProfileResponse?>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineInstancePropertiesNetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osProfile = registerOutput<VirtualMachineInstancePropertiesOsProfileResponse?>('osProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineInstancePropertiesOsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    resourceUid = registerOutput<String?>('resourceUid');
    securityProfile = registerOutput<VirtualMachineInstancePropertiesSecurityProfileResponse?>('securityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineInstancePropertiesSecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<VirtualMachineInstanceStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineInstanceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageProfile = registerOutput<VirtualMachineInstancePropertiesStorageProfileResponse?>('storageProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineInstancePropertiesStorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    vmId = registerOutput<String>('vmId');
  }
}
