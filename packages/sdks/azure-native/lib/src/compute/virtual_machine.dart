import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_capabilities_response.dart';
import 'application_profile_response.dart';
import 'billing_profile_response.dart';
import 'capacity_reservation_profile_response.dart';
import 'diagnostics_profile_response.dart';
import 'extended_location_response.dart';
import 'hardware_profile_response.dart';
import 'network_profile_response.dart';
import 'osprofile_response.dart';
import 'placement_response.dart';
import 'plan_response.dart';
import 'scheduled_events_policy_response.dart';
import 'scheduled_events_profile_response.dart';
import 'security_profile_response.dart';
import 'storage_profile_response.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_args.dart';
import 'virtual_machine_identity_response.dart';
import 'virtual_machine_instance_view_response.dart';

/// Describes a Virtual Machine.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a Linux vm with a patch setting assessmentMode of ImageDefault.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D2s_v3,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///             LinuxConfiguration = new AzureNative.Compute.Inputs.LinuxConfigurationArgs
///             {
///                 PatchSettings = new AzureNative.Compute.Inputs.LinuxPatchSettingsArgs
///                 {
///                     AssessmentMode = AzureNative.Compute.LinuxPatchAssessmentMode.ImageDefault,
///                 },
///                 ProvisionVMAgent = true,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "UbuntuServer",
///                 Publisher = "Canonical",
///                 Sku = "16.04-LTS",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Premium_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D2s_v3),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 				LinuxConfiguration: &compute.LinuxConfigurationArgs{
/// 					PatchSettings: &compute.LinuxPatchSettingsArgs{
/// 						AssessmentMode: pulumi.String(compute.LinuxPatchAssessmentModeImageDefault),
/// 					},
/// 					ProvisionVMAgent: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("UbuntuServer"),
/// 					Publisher: pulumi.String("Canonical"),
/// 					Sku:       pulumi.String("16.04-LTS"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Premium_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.LinuxConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.LinuxPatchSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D2s_v3")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .linuxConfiguration(LinuxConfigurationArgs.builder()
///                     .patchSettings(LinuxPatchSettingsArgs.builder()
///                         .assessmentMode("ImageDefault")
///                         .build())
///                     .provisionVMAgent(true)
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("UbuntuServer")
///                     .publisher("Canonical")
///                     .sku("16.04-LTS")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Premium_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D2s_v3,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///         linuxConfiguration: {
///             patchSettings: {
///                 assessmentMode: azure_native.compute.LinuxPatchAssessmentMode.ImageDefault,
///             },
///             provisionVMAgent: true,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "UbuntuServer",
///             publisher: "Canonical",
///             sku: "16.04-LTS",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Premium_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D2S_V3,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///         "linux_configuration": {
///             "patch_settings": {
///                 "assessment_mode": azure_native.compute.LinuxPatchAssessmentMode.IMAGE_DEFAULT,
///             },
///             "provision_vm_agent": True,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "UbuntuServer",
///             "publisher": "Canonical",
///             "sku": "16.04-LTS",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.PREMIUM_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D2s_v3
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///         linuxConfiguration:
///           patchSettings:
///             assessmentMode: ImageDefault
///           provisionVMAgent: true
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: UbuntuServer
///           publisher: Canonical
///           sku: 16.04-LTS
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Premium_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Linux vm with a patch setting patchMode of AutomaticByPlatform and AutomaticByPlatformSettings.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D2s_v3,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///             LinuxConfiguration = new AzureNative.Compute.Inputs.LinuxConfigurationArgs
///             {
///                 PatchSettings = new AzureNative.Compute.Inputs.LinuxPatchSettingsArgs
///                 {
///                     AssessmentMode = AzureNative.Compute.LinuxPatchAssessmentMode.AutomaticByPlatform,
///                     AutomaticByPlatformSettings = new AzureNative.Compute.Inputs.LinuxVMGuestPatchAutomaticByPlatformSettingsArgs
///                     {
///                         BypassPlatformSafetyChecksOnUserSchedule = true,
///                         RebootSetting = AzureNative.Compute.LinuxVMGuestPatchAutomaticByPlatformRebootSetting.Never,
///                     },
///                     PatchMode = AzureNative.Compute.LinuxVMGuestPatchMode.AutomaticByPlatform,
///                 },
///                 ProvisionVMAgent = true,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "UbuntuServer",
///                 Publisher = "Canonical",
///                 Sku = "16.04-LTS",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Premium_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D2s_v3),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 				LinuxConfiguration: &compute.LinuxConfigurationArgs{
/// 					PatchSettings: &compute.LinuxPatchSettingsArgs{
/// 						AssessmentMode: pulumi.String(compute.LinuxPatchAssessmentModeAutomaticByPlatform),
/// 						AutomaticByPlatformSettings: &compute.LinuxVMGuestPatchAutomaticByPlatformSettingsArgs{
/// 							BypassPlatformSafetyChecksOnUserSchedule: pulumi.Bool(true),
/// 							RebootSetting:                            pulumi.String(compute.LinuxVMGuestPatchAutomaticByPlatformRebootSettingNever),
/// 						},
/// 						PatchMode: pulumi.String(compute.LinuxVMGuestPatchModeAutomaticByPlatform),
/// 					},
/// 					ProvisionVMAgent: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("UbuntuServer"),
/// 					Publisher: pulumi.String("Canonical"),
/// 					Sku:       pulumi.String("16.04-LTS"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Premium_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.LinuxConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.LinuxPatchSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.LinuxVMGuestPatchAutomaticByPlatformSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D2s_v3")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .linuxConfiguration(LinuxConfigurationArgs.builder()
///                     .patchSettings(LinuxPatchSettingsArgs.builder()
///                         .assessmentMode("AutomaticByPlatform")
///                         .automaticByPlatformSettings(LinuxVMGuestPatchAutomaticByPlatformSettingsArgs.builder()
///                             .bypassPlatformSafetyChecksOnUserSchedule(true)
///                             .rebootSetting("Never")
///                             .build())
///                         .patchMode("AutomaticByPlatform")
///                         .build())
///                     .provisionVMAgent(true)
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("UbuntuServer")
///                     .publisher("Canonical")
///                     .sku("16.04-LTS")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Premium_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D2s_v3,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///         linuxConfiguration: {
///             patchSettings: {
///                 assessmentMode: azure_native.compute.LinuxPatchAssessmentMode.AutomaticByPlatform,
///                 automaticByPlatformSettings: {
///                     bypassPlatformSafetyChecksOnUserSchedule: true,
///                     rebootSetting: azure_native.compute.LinuxVMGuestPatchAutomaticByPlatformRebootSetting.Never,
///                 },
///                 patchMode: azure_native.compute.LinuxVMGuestPatchMode.AutomaticByPlatform,
///             },
///             provisionVMAgent: true,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "UbuntuServer",
///             publisher: "Canonical",
///             sku: "16.04-LTS",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Premium_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D2S_V3,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///         "linux_configuration": {
///             "patch_settings": {
///                 "assessment_mode": azure_native.compute.LinuxPatchAssessmentMode.AUTOMATIC_BY_PLATFORM,
///                 "automatic_by_platform_settings": {
///                     "bypass_platform_safety_checks_on_user_schedule": True,
///                     "reboot_setting": azure_native.compute.LinuxVMGuestPatchAutomaticByPlatformRebootSetting.NEVER,
///                 },
///                 "patch_mode": azure_native.compute.LinuxVMGuestPatchMode.AUTOMATIC_BY_PLATFORM,
///             },
///             "provision_vm_agent": True,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "UbuntuServer",
///             "publisher": "Canonical",
///             "sku": "16.04-LTS",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.PREMIUM_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D2s_v3
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///         linuxConfiguration:
///           patchSettings:
///             assessmentMode: AutomaticByPlatform
///             automaticByPlatformSettings:
///               bypassPlatformSafetyChecksOnUserSchedule: true
///               rebootSetting: Never
///             patchMode: AutomaticByPlatform
///           provisionVMAgent: true
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: UbuntuServer
///           publisher: Canonical
///           sku: 16.04-LTS
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Premium_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Linux vm with a patch setting patchMode of ImageDefault.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D2s_v3,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///             LinuxConfiguration = new AzureNative.Compute.Inputs.LinuxConfigurationArgs
///             {
///                 PatchSettings = new AzureNative.Compute.Inputs.LinuxPatchSettingsArgs
///                 {
///                     PatchMode = AzureNative.Compute.LinuxVMGuestPatchMode.ImageDefault,
///                 },
///                 ProvisionVMAgent = true,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "UbuntuServer",
///                 Publisher = "Canonical",
///                 Sku = "16.04-LTS",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Premium_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D2s_v3),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 				LinuxConfiguration: &compute.LinuxConfigurationArgs{
/// 					PatchSettings: &compute.LinuxPatchSettingsArgs{
/// 						PatchMode: pulumi.String(compute.LinuxVMGuestPatchModeImageDefault),
/// 					},
/// 					ProvisionVMAgent: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("UbuntuServer"),
/// 					Publisher: pulumi.String("Canonical"),
/// 					Sku:       pulumi.String("16.04-LTS"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Premium_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.LinuxConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.LinuxPatchSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D2s_v3")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .linuxConfiguration(LinuxConfigurationArgs.builder()
///                     .patchSettings(LinuxPatchSettingsArgs.builder()
///                         .patchMode("ImageDefault")
///                         .build())
///                     .provisionVMAgent(true)
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("UbuntuServer")
///                     .publisher("Canonical")
///                     .sku("16.04-LTS")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Premium_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D2s_v3,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///         linuxConfiguration: {
///             patchSettings: {
///                 patchMode: azure_native.compute.LinuxVMGuestPatchMode.ImageDefault,
///             },
///             provisionVMAgent: true,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "UbuntuServer",
///             publisher: "Canonical",
///             sku: "16.04-LTS",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Premium_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D2S_V3,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///         "linux_configuration": {
///             "patch_settings": {
///                 "patch_mode": azure_native.compute.LinuxVMGuestPatchMode.IMAGE_DEFAULT,
///             },
///             "provision_vm_agent": True,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "UbuntuServer",
///             "publisher": "Canonical",
///             "sku": "16.04-LTS",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.PREMIUM_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D2s_v3
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///         linuxConfiguration:
///           patchSettings:
///             patchMode: ImageDefault
///           provisionVMAgent: true
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: UbuntuServer
///           publisher: Canonical
///           sku: 16.04-LTS
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Premium_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Linux vm with a patch settings patchMode and assessmentMode set to AutomaticByPlatform.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D2s_v3,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///             LinuxConfiguration = new AzureNative.Compute.Inputs.LinuxConfigurationArgs
///             {
///                 PatchSettings = new AzureNative.Compute.Inputs.LinuxPatchSettingsArgs
///                 {
///                     AssessmentMode = AzureNative.Compute.LinuxPatchAssessmentMode.AutomaticByPlatform,
///                     PatchMode = AzureNative.Compute.LinuxVMGuestPatchMode.AutomaticByPlatform,
///                 },
///                 ProvisionVMAgent = true,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "UbuntuServer",
///                 Publisher = "Canonical",
///                 Sku = "16.04-LTS",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Premium_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D2s_v3),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 				LinuxConfiguration: &compute.LinuxConfigurationArgs{
/// 					PatchSettings: &compute.LinuxPatchSettingsArgs{
/// 						AssessmentMode: pulumi.String(compute.LinuxPatchAssessmentModeAutomaticByPlatform),
/// 						PatchMode:      pulumi.String(compute.LinuxVMGuestPatchModeAutomaticByPlatform),
/// 					},
/// 					ProvisionVMAgent: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("UbuntuServer"),
/// 					Publisher: pulumi.String("Canonical"),
/// 					Sku:       pulumi.String("16.04-LTS"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Premium_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.LinuxConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.LinuxPatchSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D2s_v3")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .linuxConfiguration(LinuxConfigurationArgs.builder()
///                     .patchSettings(LinuxPatchSettingsArgs.builder()
///                         .assessmentMode("AutomaticByPlatform")
///                         .patchMode("AutomaticByPlatform")
///                         .build())
///                     .provisionVMAgent(true)
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("UbuntuServer")
///                     .publisher("Canonical")
///                     .sku("16.04-LTS")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Premium_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D2s_v3,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///         linuxConfiguration: {
///             patchSettings: {
///                 assessmentMode: azure_native.compute.LinuxPatchAssessmentMode.AutomaticByPlatform,
///                 patchMode: azure_native.compute.LinuxVMGuestPatchMode.AutomaticByPlatform,
///             },
///             provisionVMAgent: true,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "UbuntuServer",
///             publisher: "Canonical",
///             sku: "16.04-LTS",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Premium_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D2S_V3,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///         "linux_configuration": {
///             "patch_settings": {
///                 "assessment_mode": azure_native.compute.LinuxPatchAssessmentMode.AUTOMATIC_BY_PLATFORM,
///                 "patch_mode": azure_native.compute.LinuxVMGuestPatchMode.AUTOMATIC_BY_PLATFORM,
///             },
///             "provision_vm_agent": True,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "UbuntuServer",
///             "publisher": "Canonical",
///             "sku": "16.04-LTS",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.PREMIUM_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D2s_v3
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///         linuxConfiguration:
///           patchSettings:
///             assessmentMode: AutomaticByPlatform
///             patchMode: AutomaticByPlatform
///           provisionVMAgent: true
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: UbuntuServer
///           publisher: Canonical
///           sku: 16.04-LTS
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Premium_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a VM from a community gallery image
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 CommunityGalleryImageId = "/CommunityGalleries/galleryPublicName/Images/communityGalleryImageName/Versions/communityGalleryImageVersionName",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					CommunityGalleryImageId: pulumi.String("/CommunityGalleries/galleryPublicName/Images/communityGalleryImageName/Versions/communityGalleryImageVersionName"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .communityGalleryImageId("/CommunityGalleries/galleryPublicName/Images/communityGalleryImageName/Versions/communityGalleryImageVersionName")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             communityGalleryImageId: "/CommunityGalleries/galleryPublicName/Images/communityGalleryImageName/Versions/communityGalleryImageVersionName",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "community_gallery_image_id": "/CommunityGalleries/galleryPublicName/Images/communityGalleryImageName/Versions/communityGalleryImageVersionName",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           communityGalleryImageId: /CommunityGalleries/galleryPublicName/Images/communityGalleryImageName/Versions/communityGalleryImageVersionName
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a VM from a shared gallery image
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 SharedGalleryImageId = "/SharedGalleries/sharedGalleryName/Images/sharedGalleryImageName/Versions/sharedGalleryImageVersionName",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					SharedGalleryImageId: pulumi.String("/SharedGalleries/sharedGalleryName/Images/sharedGalleryImageName/Versions/sharedGalleryImageVersionName"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .sharedGalleryImageId("/SharedGalleries/sharedGalleryName/Images/sharedGalleryImageName/Versions/sharedGalleryImageVersionName")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             sharedGalleryImageId: "/SharedGalleries/sharedGalleryName/Images/sharedGalleryImageName/Versions/sharedGalleryImageVersionName",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "shared_gallery_image_id": "/SharedGalleries/sharedGalleryName/Images/sharedGalleryImageName/Versions/sharedGalleryImageVersionName",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           sharedGalleryImageId: /SharedGalleries/sharedGalleryName/Images/sharedGalleryImageName/Versions/sharedGalleryImageVersionName
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a VM with Disk Controller Type
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         DiagnosticsProfile = new AzureNative.Compute.Inputs.DiagnosticsProfileArgs
///         {
///             BootDiagnostics = new AzureNative.Compute.Inputs.BootDiagnosticsArgs
///             {
///                 Enabled = true,
///                 StorageUri = "http://{existing-storage-account-name}.blob.core.windows.net",
///             },
///         },
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D4_v3,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         ScheduledEventsPolicy = new AzureNative.Compute.Inputs.ScheduledEventsPolicyArgs
///         {
///             ScheduledEventsAdditionalPublishingTargets = new AzureNative.Compute.Inputs.ScheduledEventsAdditionalPublishingTargetsArgs
///             {
///                 EventGridAndResourceGraph = new AzureNative.Compute.Inputs.EventGridAndResourceGraphArgs
///                 {
///                     Enable = true,
///                 },
///             },
///             UserInitiatedReboot = new AzureNative.Compute.Inputs.UserInitiatedRebootArgs
///             {
///                 AutomaticallyApprove = true,
///             },
///             UserInitiatedRedeploy = new AzureNative.Compute.Inputs.UserInitiatedRedeployArgs
///             {
///                 AutomaticallyApprove = true,
///             },
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             DiskControllerType = AzureNative.Compute.DiskControllerTypes.NVMe,
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         UserData = "U29tZSBDdXN0b20gRGF0YQ==",
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			DiagnosticsProfile: &compute.DiagnosticsProfileArgs{
/// 				BootDiagnostics: &compute.BootDiagnosticsArgs{
/// 					Enabled:    pulumi.Bool(true),
/// 					StorageUri: pulumi.String("http://{existing-storage-account-name}.blob.core.windows.net"),
/// 				},
/// 			},
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D4_v3),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ScheduledEventsPolicy: &compute.ScheduledEventsPolicyArgs{
/// 				ScheduledEventsAdditionalPublishingTargets: &compute.ScheduledEventsAdditionalPublishingTargetsArgs{
/// 					EventGridAndResourceGraph: &compute.EventGridAndResourceGraphArgs{
/// 						Enable: pulumi.Bool(true),
/// 					},
/// 				},
/// 				UserInitiatedReboot: &compute.UserInitiatedRebootArgs{
/// 					AutomaticallyApprove: pulumi.Bool(true),
/// 				},
/// 				UserInitiatedRedeploy: &compute.UserInitiatedRedeployArgs{
/// 					AutomaticallyApprove: pulumi.Bool(true),
/// 				},
/// 			},
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				DiskControllerType: pulumi.String(compute.DiskControllerTypesNVMe),
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			UserData: pulumi.String("U29tZSBDdXN0b20gRGF0YQ=="),
/// 			VmName:   pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.DiagnosticsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.BootDiagnosticsArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ScheduledEventsPolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.ScheduledEventsAdditionalPublishingTargetsArgs;
/// import com.pulumi.azurenative.compute.inputs.EventGridAndResourceGraphArgs;
/// import com.pulumi.azurenative.compute.inputs.UserInitiatedRebootArgs;
/// import com.pulumi.azurenative.compute.inputs.UserInitiatedRedeployArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .diagnosticsProfile(DiagnosticsProfileArgs.builder()
///                 .bootDiagnostics(BootDiagnosticsArgs.builder()
///                     .enabled(true)
///                     .storageUri("http://{existing-storage-account-name}.blob.core.windows.net")
///                     .build())
///                 .build())
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D4_v3")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .scheduledEventsPolicy(ScheduledEventsPolicyArgs.builder()
///                 .scheduledEventsAdditionalPublishingTargets(ScheduledEventsAdditionalPublishingTargetsArgs.builder()
///                     .eventGridAndResourceGraph(EventGridAndResourceGraphArgs.builder()
///                         .enable(true)
///                         .build())
///                     .build())
///                 .userInitiatedReboot(UserInitiatedRebootArgs.builder()
///                     .automaticallyApprove(true)
///                     .build())
///                 .userInitiatedRedeploy(UserInitiatedRedeployArgs.builder()
///                     .automaticallyApprove(true)
///                     .build())
///                 .build())
///             .storageProfile(StorageProfileArgs.builder()
///                 .diskControllerType("NVMe")
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .userData("U29tZSBDdXN0b20gRGF0YQ==")
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     diagnosticsProfile: {
///         bootDiagnostics: {
///             enabled: true,
///             storageUri: "http://{existing-storage-account-name}.blob.core.windows.net",
///         },
///     },
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D4_v3,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     scheduledEventsPolicy: {
///         scheduledEventsAdditionalPublishingTargets: {
///             eventGridAndResourceGraph: {
///                 enable: true,
///             },
///         },
///         userInitiatedReboot: {
///             automaticallyApprove: true,
///         },
///         userInitiatedRedeploy: {
///             automaticallyApprove: true,
///         },
///     },
///     storageProfile: {
///         diskControllerType: azure_native.compute.DiskControllerTypes.NVMe,
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     userData: "U29tZSBDdXN0b20gRGF0YQ==",
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     diagnostics_profile={
///         "boot_diagnostics": {
///             "enabled": True,
///             "storage_uri": "http://{existing-storage-account-name}.blob.core.windows.net",
///         },
///     },
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D4_V3,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     scheduled_events_policy={
///         "scheduled_events_additional_publishing_targets": {
///             "event_grid_and_resource_graph": {
///                 "enable": True,
///             },
///         },
///         "user_initiated_reboot": {
///             "automatically_approve": True,
///         },
///         "user_initiated_redeploy": {
///             "automatically_approve": True,
///         },
///     },
///     storage_profile={
///         "disk_controller_type": azure_native.compute.DiskControllerTypes.NV_ME,
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     user_data="U29tZSBDdXN0b20gRGF0YQ==",
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       diagnosticsProfile:
///         bootDiagnostics:
///           enabled: true
///           storageUri: http://{existing-storage-account-name}.blob.core.windows.net
///       hardwareProfile:
///         vmSize: Standard_D4_v3
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       scheduledEventsPolicy:
///         scheduledEventsAdditionalPublishingTargets:
///           eventGridAndResourceGraph:
///             enable: true
///         userInitiatedReboot:
///           automaticallyApprove: true
///         userInitiatedRedeploy:
///           automaticallyApprove: true
///       storageProfile:
///         diskControllerType: NVMe
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       userData: U29tZSBDdXN0b20gRGF0YQ==
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a VM with HibernationEnabled
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         AdditionalCapabilities = new AzureNative.Compute.Inputs.AdditionalCapabilitiesArgs
///         {
///             HibernationEnabled = true,
///         },
///         DiagnosticsProfile = new AzureNative.Compute.Inputs.DiagnosticsProfileArgs
///         {
///             BootDiagnostics = new AzureNative.Compute.Inputs.BootDiagnosticsArgs
///             {
///                 Enabled = true,
///                 StorageUri = "http://{existing-storage-account-name}.blob.core.windows.net",
///             },
///         },
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D2s_v3,
///         },
///         Location = "eastus2euap",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "{vm-name}",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2019-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "vmOSdisk",
///             },
///         },
///         VmName = "{vm-name}",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			AdditionalCapabilities: &compute.AdditionalCapabilitiesArgs{
/// 				HibernationEnabled: pulumi.Bool(true),
/// 			},
/// 			DiagnosticsProfile: &compute.DiagnosticsProfileArgs{
/// 				BootDiagnostics: &compute.BootDiagnosticsArgs{
/// 					Enabled:    pulumi.Bool(true),
/// 					StorageUri: pulumi.String("http://{existing-storage-account-name}.blob.core.windows.net"),
/// 				},
/// 			},
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D2s_v3),
/// 			},
/// 			Location: pulumi.String("eastus2euap"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("{vm-name}"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2019-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("vmOSdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("{vm-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.AdditionalCapabilitiesArgs;
/// import com.pulumi.azurenative.compute.inputs.DiagnosticsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.BootDiagnosticsArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .additionalCapabilities(AdditionalCapabilitiesArgs.builder()
///                 .hibernationEnabled(true)
///                 .build())
///             .diagnosticsProfile(DiagnosticsProfileArgs.builder()
///                 .bootDiagnostics(BootDiagnosticsArgs.builder()
///                     .enabled(true)
///                     .storageUri("http://{existing-storage-account-name}.blob.core.windows.net")
///                     .build())
///                 .build())
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D2s_v3")
///                 .build())
///             .location("eastus2euap")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("{vm-name}")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2019-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("vmOSdisk")
///                     .build())
///                 .build())
///             .vmName("{vm-name}")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     additionalCapabilities: {
///         hibernationEnabled: true,
///     },
///     diagnosticsProfile: {
///         bootDiagnostics: {
///             enabled: true,
///             storageUri: "http://{existing-storage-account-name}.blob.core.windows.net",
///         },
///     },
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D2s_v3,
///     },
///     location: "eastus2euap",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "{vm-name}",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2019-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "vmOSdisk",
///         },
///     },
///     vmName: "{vm-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     additional_capabilities={
///         "hibernation_enabled": True,
///     },
///     diagnostics_profile={
///         "boot_diagnostics": {
///             "enabled": True,
///             "storage_uri": "http://{existing-storage-account-name}.blob.core.windows.net",
///         },
///     },
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D2S_V3,
///     },
///     location="eastus2euap",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "{vm-name}",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2019-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "vmOSdisk",
///         },
///     },
///     vm_name="{vm-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       additionalCapabilities:
///         hibernationEnabled: true
///       diagnosticsProfile:
///         bootDiagnostics:
///           enabled: true
///           storageUri: http://{existing-storage-account-name}.blob.core.windows.net
///       hardwareProfile:
///         vmSize: Standard_D2s_v3
///       location: eastus2euap
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: '{vm-name}'
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2019-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: vmOSdisk
///       vmName: '{vm-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a VM with ProxyAgent Settings of enabled and mode.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D2s_v3,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         SecurityProfile = new AzureNative.Compute.Inputs.SecurityProfileArgs
///         {
///             ProxyAgentSettings = new AzureNative.Compute.Inputs.ProxyAgentSettingsArgs
///             {
///                 Enabled = true,
///             },
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2019-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.StandardSSD_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D2s_v3),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SecurityProfile: &compute.SecurityProfileArgs{
/// 				ProxyAgentSettings: &compute.ProxyAgentSettingsArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2019-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadOnly,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_StandardSSD_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.SecurityProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ProxyAgentSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D2s_v3")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .securityProfile(SecurityProfileArgs.builder()
///                 .proxyAgentSettings(ProxyAgentSettingsArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2019-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadOnly")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("StandardSSD_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D2s_v3,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     securityProfile: {
///         proxyAgentSettings: {
///             enabled: true,
///         },
///     },
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2019-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadOnly,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.StandardSSD_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D2S_V3,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     security_profile={
///         "proxy_agent_settings": {
///             "enabled": True,
///         },
///     },
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2019-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_ONLY,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_SS_D_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D2s_v3
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       securityProfile:
///         proxyAgentSettings:
///           enabled: true
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2019-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadOnly
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: StandardSSD_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a VM with Uefi Settings of secureBoot and vTPM.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D2s_v3,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         SecurityProfile = new AzureNative.Compute.Inputs.SecurityProfileArgs
///         {
///             SecurityType = AzureNative.Compute.SecurityTypes.TrustedLaunch,
///             UefiSettings = new AzureNative.Compute.Inputs.UefiSettingsArgs
///             {
///                 SecureBootEnabled = true,
///                 VTpmEnabled = true,
///             },
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "windowsserver-gen2preview-preview",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "windows10-tvm",
///                 Version = "18363.592.2001092016",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.StandardSSD_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D2s_v3),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SecurityProfile: &compute.SecurityProfileArgs{
/// 				SecurityType: pulumi.String(compute.SecurityTypesTrustedLaunch),
/// 				UefiSettings: &compute.UefiSettingsArgs{
/// 					SecureBootEnabled: pulumi.Bool(true),
/// 					VTpmEnabled:       pulumi.Bool(true),
/// 				},
/// 			},
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("windowsserver-gen2preview-preview"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("windows10-tvm"),
/// 					Version:   pulumi.String("18363.592.2001092016"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadOnly,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_StandardSSD_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.SecurityProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.UefiSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D2s_v3")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .securityProfile(SecurityProfileArgs.builder()
///                 .securityType("TrustedLaunch")
///                 .uefiSettings(UefiSettingsArgs.builder()
///                     .secureBootEnabled(true)
///                     .vTpmEnabled(true)
///                     .build())
///                 .build())
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("windowsserver-gen2preview-preview")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("windows10-tvm")
///                     .version("18363.592.2001092016")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadOnly")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("StandardSSD_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D2s_v3,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     securityProfile: {
///         securityType: azure_native.compute.SecurityTypes.TrustedLaunch,
///         uefiSettings: {
///             secureBootEnabled: true,
///             vTpmEnabled: true,
///         },
///     },
///     storageProfile: {
///         imageReference: {
///             offer: "windowsserver-gen2preview-preview",
///             publisher: "MicrosoftWindowsServer",
///             sku: "windows10-tvm",
///             version: "18363.592.2001092016",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadOnly,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.StandardSSD_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D2S_V3,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     security_profile={
///         "security_type": azure_native.compute.SecurityTypes.TRUSTED_LAUNCH,
///         "uefi_settings": {
///             "secure_boot_enabled": True,
///             "v_tpm_enabled": True,
///         },
///     },
///     storage_profile={
///         "image_reference": {
///             "offer": "windowsserver-gen2preview-preview",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "windows10-tvm",
///             "version": "18363.592.2001092016",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_ONLY,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_SS_D_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D2s_v3
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       securityProfile:
///         securityType: TrustedLaunch
///         uefiSettings:
///           secureBootEnabled: true
///           vTpmEnabled: true
///       storageProfile:
///         imageReference:
///           offer: windowsserver-gen2preview-preview
///           publisher: MicrosoftWindowsServer
///           sku: windows10-tvm
///           version: 18363.592.2001092016
///         osDisk:
///           caching: ReadOnly
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: StandardSSD_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a VM with UserData
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         DiagnosticsProfile = new AzureNative.Compute.Inputs.DiagnosticsProfileArgs
///         {
///             BootDiagnostics = new AzureNative.Compute.Inputs.BootDiagnosticsArgs
///             {
///                 Enabled = true,
///                 StorageUri = "http://{existing-storage-account-name}.blob.core.windows.net",
///             },
///         },
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "{vm-name}",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "vmOSdisk",
///             },
///         },
///         UserData = "RXhhbXBsZSBVc2VyRGF0YQ==",
///         VmName = "{vm-name}",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			DiagnosticsProfile: &compute.DiagnosticsProfileArgs{
/// 				BootDiagnostics: &compute.BootDiagnosticsArgs{
/// 					Enabled:    pulumi.Bool(true),
/// 					StorageUri: pulumi.String("http://{existing-storage-account-name}.blob.core.windows.net"),
/// 				},
/// 			},
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("{vm-name}"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("vmOSdisk"),
/// 				},
/// 			},
/// 			UserData: pulumi.String("RXhhbXBsZSBVc2VyRGF0YQ=="),
/// 			VmName:   pulumi.String("{vm-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.DiagnosticsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.BootDiagnosticsArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .diagnosticsProfile(DiagnosticsProfileArgs.builder()
///                 .bootDiagnostics(BootDiagnosticsArgs.builder()
///                     .enabled(true)
///                     .storageUri("http://{existing-storage-account-name}.blob.core.windows.net")
///                     .build())
///                 .build())
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("{vm-name}")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("vmOSdisk")
///                     .build())
///                 .build())
///             .userData("RXhhbXBsZSBVc2VyRGF0YQ==")
///             .vmName("{vm-name}")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     diagnosticsProfile: {
///         bootDiagnostics: {
///             enabled: true,
///             storageUri: "http://{existing-storage-account-name}.blob.core.windows.net",
///         },
///     },
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "{vm-name}",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "vmOSdisk",
///         },
///     },
///     userData: "RXhhbXBsZSBVc2VyRGF0YQ==",
///     vmName: "{vm-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     diagnostics_profile={
///         "boot_diagnostics": {
///             "enabled": True,
///             "storage_uri": "http://{existing-storage-account-name}.blob.core.windows.net",
///         },
///     },
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "{vm-name}",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "vmOSdisk",
///         },
///     },
///     user_data="RXhhbXBsZSBVc2VyRGF0YQ==",
///     vm_name="{vm-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       diagnosticsProfile:
///         bootDiagnostics:
///           enabled: true
///           storageUri: http://{existing-storage-account-name}.blob.core.windows.net
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: '{vm-name}'
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: vmOSdisk
///       userData: RXhhbXBsZSBVc2VyRGF0YQ==
///       vmName: '{vm-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a VM with VM Size Properties
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         DiagnosticsProfile = new AzureNative.Compute.Inputs.DiagnosticsProfileArgs
///         {
///             BootDiagnostics = new AzureNative.Compute.Inputs.BootDiagnosticsArgs
///             {
///                 Enabled = true,
///                 StorageUri = "http://{existing-storage-account-name}.blob.core.windows.net",
///             },
///         },
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D4_v3,
///             VmSizeProperties = new AzureNative.Compute.Inputs.VMSizePropertiesArgs
///             {
///                 VCPUsAvailable = 1,
///                 VCPUsPerCore = 1,
///             },
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         UserData = "U29tZSBDdXN0b20gRGF0YQ==",
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			DiagnosticsProfile: &compute.DiagnosticsProfileArgs{
/// 				BootDiagnostics: &compute.BootDiagnosticsArgs{
/// 					Enabled:    pulumi.Bool(true),
/// 					StorageUri: pulumi.String("http://{existing-storage-account-name}.blob.core.windows.net"),
/// 				},
/// 			},
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D4_v3),
/// 				VmSizeProperties: &compute.VMSizePropertiesArgs{
/// 					VCPUsAvailable: pulumi.Int(1),
/// 					VCPUsPerCore:   pulumi.Int(1),
/// 				},
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			UserData: pulumi.String("U29tZSBDdXN0b20gRGF0YQ=="),
/// 			VmName:   pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.DiagnosticsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.BootDiagnosticsArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VMSizePropertiesArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .diagnosticsProfile(DiagnosticsProfileArgs.builder()
///                 .bootDiagnostics(BootDiagnosticsArgs.builder()
///                     .enabled(true)
///                     .storageUri("http://{existing-storage-account-name}.blob.core.windows.net")
///                     .build())
///                 .build())
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D4_v3")
///                 .vmSizeProperties(VMSizePropertiesArgs.builder()
///                     .vCPUsAvailable(1)
///                     .vCPUsPerCore(1)
///                     .build())
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .userData("U29tZSBDdXN0b20gRGF0YQ==")
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     diagnosticsProfile: {
///         bootDiagnostics: {
///             enabled: true,
///             storageUri: "http://{existing-storage-account-name}.blob.core.windows.net",
///         },
///     },
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D4_v3,
///         vmSizeProperties: {
///             vCPUsAvailable: 1,
///             vCPUsPerCore: 1,
///         },
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     userData: "U29tZSBDdXN0b20gRGF0YQ==",
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     diagnostics_profile={
///         "boot_diagnostics": {
///             "enabled": True,
///             "storage_uri": "http://{existing-storage-account-name}.blob.core.windows.net",
///         },
///     },
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D4_V3,
///         "vm_size_properties": {
///             "v_cpus_available": 1,
///             "v_cpus_per_core": 1,
///         },
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     user_data="U29tZSBDdXN0b20gRGF0YQ==",
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       diagnosticsProfile:
///         bootDiagnostics:
///           enabled: true
///           storageUri: http://{existing-storage-account-name}.blob.core.windows.net
///       hardwareProfile:
///         vmSize: Standard_D4_v3
///         vmSizeProperties:
///           vCPUsAvailable: 1
///           vCPUsPerCore: 1
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       userData: U29tZSBDdXN0b20gRGF0YQ==
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a VM with automatic zone placement
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_DS1_v2,
///         },
///         Location = "westus2",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         Placement = new AzureNative.Compute.Inputs.PlacementArgs
///         {
///             IncludeZones = new[]
///             {
///                 "1",
///                 "3",
///             },
///             ZonePlacementPolicy = AzureNative.Compute.ZonePlacementPolicyType.Any,
///         },
///         Plan = new AzureNative.Compute.Inputs.PlanArgs
///         {
///             Name = "windows2016",
///             Product = "windows-data-science-vm",
///             Publisher = "microsoft-ads",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "windows-data-science-vm",
///                 Publisher = "microsoft-ads",
///                 Sku = "windows2016",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_DS1_v2),
/// 			},
/// 			Location: pulumi.String("westus2"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			Placement: &compute.PlacementArgs{
/// 				IncludeZones: pulumi.StringArray{
/// 					pulumi.String("1"),
/// 					pulumi.String("3"),
/// 				},
/// 				ZonePlacementPolicy: pulumi.String(compute.ZonePlacementPolicyTypeAny),
/// 			},
/// 			Plan: &compute.PlanArgs{
/// 				Name:      pulumi.String("windows2016"),
/// 				Product:   pulumi.String("windows-data-science-vm"),
/// 				Publisher: pulumi.String("microsoft-ads"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("windows-data-science-vm"),
/// 					Publisher: pulumi.String("microsoft-ads"),
/// 					Sku:       pulumi.String("windows2016"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadOnly,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.PlacementArgs;
/// import com.pulumi.azurenative.compute.inputs.PlanArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_DS1_v2")
///                 .build())
///             .location("westus2")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .placement(PlacementArgs.builder()
///                 .includeZones(
///                     "1",
///                     "3")
///                 .zonePlacementPolicy("Any")
///                 .build())
///             .plan(PlanArgs.builder()
///                 .name("windows2016")
///                 .product("windows-data-science-vm")
///                 .publisher("microsoft-ads")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("windows-data-science-vm")
///                     .publisher("microsoft-ads")
///                     .sku("windows2016")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadOnly")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_DS1_v2,
///     },
///     location: "westus2",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     placement: {
///         includeZones: [
///             "1",
///             "3",
///         ],
///         zonePlacementPolicy: azure_native.compute.ZonePlacementPolicyType.Any,
///     },
///     plan: {
///         name: "windows2016",
///         product: "windows-data-science-vm",
///         publisher: "microsoft-ads",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "windows-data-science-vm",
///             publisher: "microsoft-ads",
///             sku: "windows2016",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadOnly,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_DS1_V2,
///     },
///     location="westus2",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     placement={
///         "include_zones": [
///             "1",
///             "3",
///         ],
///         "zone_placement_policy": azure_native.compute.ZonePlacementPolicyType.ANY,
///     },
///     plan={
///         "name": "windows2016",
///         "product": "windows-data-science-vm",
///         "publisher": "microsoft-ads",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "windows-data-science-vm",
///             "publisher": "microsoft-ads",
///             "sku": "windows2016",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_ONLY,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_DS1_v2
///       location: westus2
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       placement:
///         includeZones:
///           - '1'
///           - '3'
///         zonePlacementPolicy: Any
///       plan:
///         name: windows2016
///         product: windows-data-science-vm
///         publisher: microsoft-ads
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: windows-data-science-vm
///           publisher: microsoft-ads
///           sku: windows2016
///           version: latest
///         osDisk:
///           caching: ReadOnly
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a VM with network interface configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkApiVersion = AzureNative.Compute.NetworkApiVersion.NetworkApiVersion_2020_11_01,
///             NetworkInterfaceConfigurations = new[]
///             {
///                 new AzureNative.Compute.Inputs.VirtualMachineNetworkInterfaceConfigurationArgs
///                 {
///                     DeleteOption = AzureNative.Compute.DeleteOptions.Delete,
///                     IpConfigurations = new[]
///                     {
///                         new AzureNative.Compute.Inputs.VirtualMachineNetworkInterfaceIPConfigurationArgs
///                         {
///                             Name = "{ip-config-name}",
///                             Primary = true,
///                             PublicIPAddressConfiguration = new AzureNative.Compute.Inputs.VirtualMachinePublicIPAddressConfigurationArgs
///                             {
///                                 DeleteOption = AzureNative.Compute.DeleteOptions.Detach,
///                                 Name = "{publicIP-config-name}",
///                                 PublicIPAllocationMethod = AzureNative.Compute.PublicIPAllocationMethod.Static,
///                                 Sku = new AzureNative.Compute.Inputs.PublicIPAddressSkuArgs
///                                 {
///                                     Name = AzureNative.Compute.PublicIPAddressSkuName.Basic,
///                                     Tier = AzureNative.Compute.PublicIPAddressSkuTier.Global,
///                                 },
///                             },
///                         },
///                     },
///                     Name = "{nic-config-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkApiVersion: pulumi.String(compute.NetworkApiVersion_2020_11_01),
/// 				NetworkInterfaceConfigurations: compute.VirtualMachineNetworkInterfaceConfigurationArray{
/// 					&compute.VirtualMachineNetworkInterfaceConfigurationArgs{
/// 						DeleteOption: pulumi.String(compute.DeleteOptionsDelete),
/// 						IpConfigurations: compute.VirtualMachineNetworkInterfaceIPConfigurationArray{
/// 							&compute.VirtualMachineNetworkInterfaceIPConfigurationArgs{
/// 								Name:    pulumi.String("{ip-config-name}"),
/// 								Primary: pulumi.Bool(true),
/// 								PublicIPAddressConfiguration: &compute.VirtualMachinePublicIPAddressConfigurationArgs{
/// 									DeleteOption:             pulumi.String(compute.DeleteOptionsDetach),
/// 									Name:                     pulumi.String("{publicIP-config-name}"),
/// 									PublicIPAllocationMethod: pulumi.String(compute.PublicIPAllocationMethodStatic),
/// 									Sku: &compute.PublicIPAddressSkuArgs{
/// 										Name: pulumi.String(compute.PublicIPAddressSkuNameBasic),
/// 										Tier: pulumi.String(compute.PublicIPAddressSkuTierGlobal),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						Name:    pulumi.String("{nic-config-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkApiVersion("2020-11-01")
///                 .networkInterfaceConfigurations(VirtualMachineNetworkInterfaceConfigurationArgs.builder()
///                     .deleteOption("Delete")
///                     .ipConfigurations(VirtualMachineNetworkInterfaceIPConfigurationArgs.builder()
///                         .name("{ip-config-name}")
///                         .primary(true)
///                         .publicIPAddressConfiguration(VirtualMachinePublicIPAddressConfigurationArgs.builder()
///                             .deleteOption("Detach")
///                             .name("{publicIP-config-name}")
///                             .publicIPAllocationMethod("Static")
///                             .sku(PublicIPAddressSkuArgs.builder()
///                                 .name("Basic")
///                                 .tier("Global")
///                                 .build())
///                             .build())
///                         .build())
///                     .name("{nic-config-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkApiVersion: azure_native.compute.NetworkApiVersion.NetworkApiVersion_2020_11_01,
///         networkInterfaceConfigurations: [{
///             deleteOption: azure_native.compute.DeleteOptions.Delete,
///             ipConfigurations: [{
///                 name: "{ip-config-name}",
///                 primary: true,
///                 publicIPAddressConfiguration: {
///                     deleteOption: azure_native.compute.DeleteOptions.Detach,
///                     name: "{publicIP-config-name}",
///                     publicIPAllocationMethod: azure_native.compute.PublicIPAllocationMethod.Static,
///                     sku: {
///                         name: azure_native.compute.PublicIPAddressSkuName.Basic,
///                         tier: azure_native.compute.PublicIPAddressSkuTier.Global,
///                     },
///                 },
///             }],
///             name: "{nic-config-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_api_version": azure_native.compute.NetworkApiVersion.NETWORK_API_VERSION_2020_11_01,
///         "network_interface_configurations": [{
///             "delete_option": azure_native.compute.DeleteOptions.DELETE,
///             "ip_configurations": [{
///                 "name": "{ip-config-name}",
///                 "primary": True,
///                 "public_ip_address_configuration": {
///                     "delete_option": azure_native.compute.DeleteOptions.DETACH,
///                     "name": "{publicIP-config-name}",
///                     "public_ip_allocation_method": azure_native.compute.PublicIPAllocationMethod.STATIC,
///                     "sku": {
///                         "name": azure_native.compute.PublicIPAddressSkuName.BASIC,
///                         "tier": azure_native.compute.PublicIPAddressSkuTier.GLOBAL_,
///                     },
///                 },
///             }],
///             "name": "{nic-config-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkApiVersion: 2020-11-01
///         networkInterfaceConfigurations:
///           - deleteOption: Delete
///             ipConfigurations:
///               - name: '{ip-config-name}'
///                 primary: true
///                 publicIPAddressConfiguration:
///                   deleteOption: Detach
///                   name: '{publicIP-config-name}'
///                   publicIPAllocationMethod: Static
///                   sku:
///                     name: Basic
///                     tier: Global
///             name: '{nic-config-name}'
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a VM with network interface configuration with public ip address dns settings
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkApiVersion = AzureNative.Compute.NetworkApiVersion.NetworkApiVersion_2020_11_01,
///             NetworkInterfaceConfigurations = new[]
///             {
///                 new AzureNative.Compute.Inputs.VirtualMachineNetworkInterfaceConfigurationArgs
///                 {
///                     DeleteOption = AzureNative.Compute.DeleteOptions.Delete,
///                     IpConfigurations = new[]
///                     {
///                         new AzureNative.Compute.Inputs.VirtualMachineNetworkInterfaceIPConfigurationArgs
///                         {
///                             Name = "{ip-config-name}",
///                             Primary = true,
///                             PublicIPAddressConfiguration = new AzureNative.Compute.Inputs.VirtualMachinePublicIPAddressConfigurationArgs
///                             {
///                                 DeleteOption = AzureNative.Compute.DeleteOptions.Detach,
///                                 DnsSettings = new AzureNative.Compute.Inputs.VirtualMachinePublicIPAddressDnsSettingsConfigurationArgs
///                                 {
///                                     DomainNameLabel = "aaaaa",
///                                     DomainNameLabelScope = AzureNative.Compute.DomainNameLabelScopeTypes.TenantReuse,
///                                 },
///                                 Name = "{publicIP-config-name}",
///                                 PublicIPAllocationMethod = AzureNative.Compute.PublicIPAllocationMethod.Static,
///                                 Sku = new AzureNative.Compute.Inputs.PublicIPAddressSkuArgs
///                                 {
///                                     Name = AzureNative.Compute.PublicIPAddressSkuName.Basic,
///                                     Tier = AzureNative.Compute.PublicIPAddressSkuTier.Global,
///                                 },
///                             },
///                         },
///                     },
///                     Name = "{nic-config-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkApiVersion: pulumi.String(compute.NetworkApiVersion_2020_11_01),
/// 				NetworkInterfaceConfigurations: compute.VirtualMachineNetworkInterfaceConfigurationArray{
/// 					&compute.VirtualMachineNetworkInterfaceConfigurationArgs{
/// 						DeleteOption: pulumi.String(compute.DeleteOptionsDelete),
/// 						IpConfigurations: compute.VirtualMachineNetworkInterfaceIPConfigurationArray{
/// 							&compute.VirtualMachineNetworkInterfaceIPConfigurationArgs{
/// 								Name:    pulumi.String("{ip-config-name}"),
/// 								Primary: pulumi.Bool(true),
/// 								PublicIPAddressConfiguration: &compute.VirtualMachinePublicIPAddressConfigurationArgs{
/// 									DeleteOption: pulumi.String(compute.DeleteOptionsDetach),
/// 									DnsSettings: &compute.VirtualMachinePublicIPAddressDnsSettingsConfigurationArgs{
/// 										DomainNameLabel:      pulumi.String("aaaaa"),
/// 										DomainNameLabelScope: pulumi.String(compute.DomainNameLabelScopeTypesTenantReuse),
/// 									},
/// 									Name:                     pulumi.String("{publicIP-config-name}"),
/// 									PublicIPAllocationMethod: pulumi.String(compute.PublicIPAllocationMethodStatic),
/// 									Sku: &compute.PublicIPAddressSkuArgs{
/// 										Name: pulumi.String(compute.PublicIPAddressSkuNameBasic),
/// 										Tier: pulumi.String(compute.PublicIPAddressSkuTierGlobal),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						Name:    pulumi.String("{nic-config-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkApiVersion("2020-11-01")
///                 .networkInterfaceConfigurations(VirtualMachineNetworkInterfaceConfigurationArgs.builder()
///                     .deleteOption("Delete")
///                     .ipConfigurations(VirtualMachineNetworkInterfaceIPConfigurationArgs.builder()
///                         .name("{ip-config-name}")
///                         .primary(true)
///                         .publicIPAddressConfiguration(VirtualMachinePublicIPAddressConfigurationArgs.builder()
///                             .deleteOption("Detach")
///                             .dnsSettings(VirtualMachinePublicIPAddressDnsSettingsConfigurationArgs.builder()
///                                 .domainNameLabel("aaaaa")
///                                 .domainNameLabelScope("TenantReuse")
///                                 .build())
///                             .name("{publicIP-config-name}")
///                             .publicIPAllocationMethod("Static")
///                             .sku(PublicIPAddressSkuArgs.builder()
///                                 .name("Basic")
///                                 .tier("Global")
///                                 .build())
///                             .build())
///                         .build())
///                     .name("{nic-config-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkApiVersion: azure_native.compute.NetworkApiVersion.NetworkApiVersion_2020_11_01,
///         networkInterfaceConfigurations: [{
///             deleteOption: azure_native.compute.DeleteOptions.Delete,
///             ipConfigurations: [{
///                 name: "{ip-config-name}",
///                 primary: true,
///                 publicIPAddressConfiguration: {
///                     deleteOption: azure_native.compute.DeleteOptions.Detach,
///                     dnsSettings: {
///                         domainNameLabel: "aaaaa",
///                         domainNameLabelScope: azure_native.compute.DomainNameLabelScopeTypes.TenantReuse,
///                     },
///                     name: "{publicIP-config-name}",
///                     publicIPAllocationMethod: azure_native.compute.PublicIPAllocationMethod.Static,
///                     sku: {
///                         name: azure_native.compute.PublicIPAddressSkuName.Basic,
///                         tier: azure_native.compute.PublicIPAddressSkuTier.Global,
///                     },
///                 },
///             }],
///             name: "{nic-config-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_api_version": azure_native.compute.NetworkApiVersion.NETWORK_API_VERSION_2020_11_01,
///         "network_interface_configurations": [{
///             "delete_option": azure_native.compute.DeleteOptions.DELETE,
///             "ip_configurations": [{
///                 "name": "{ip-config-name}",
///                 "primary": True,
///                 "public_ip_address_configuration": {
///                     "delete_option": azure_native.compute.DeleteOptions.DETACH,
///                     "dns_settings": {
///                         "domain_name_label": "aaaaa",
///                         "domain_name_label_scope": azure_native.compute.DomainNameLabelScopeTypes.TENANT_REUSE,
///                     },
///                     "name": "{publicIP-config-name}",
///                     "public_ip_allocation_method": azure_native.compute.PublicIPAllocationMethod.STATIC,
///                     "sku": {
///                         "name": azure_native.compute.PublicIPAddressSkuName.BASIC,
///                         "tier": azure_native.compute.PublicIPAddressSkuTier.GLOBAL_,
///                     },
///                 },
///             }],
///             "name": "{nic-config-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkApiVersion: 2020-11-01
///         networkInterfaceConfigurations:
///           - deleteOption: Delete
///             ipConfigurations:
///               - name: '{ip-config-name}'
///                 primary: true
///                 publicIPAddressConfiguration:
///                   deleteOption: Detach
///                   dnsSettings:
///                     domainNameLabel: aaaaa
///                     domainNameLabelScope: TenantReuse
///                   name: '{publicIP-config-name}'
///                   publicIPAllocationMethod: Static
///                   sku:
///                     name: Basic
///                     tier: Global
///             name: '{nic-config-name}'
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a VM with securityType ConfidentialVM with Customer Managed Keys
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = "Standard_DC2as_v5",
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         SecurityProfile = new AzureNative.Compute.Inputs.SecurityProfileArgs
///         {
///             SecurityType = AzureNative.Compute.SecurityTypes.ConfidentialVM,
///             UefiSettings = new AzureNative.Compute.Inputs.UefiSettingsArgs
///             {
///                 SecureBootEnabled = true,
///                 VTpmEnabled = true,
///             },
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "2019-datacenter-cvm",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "windows-cvm",
///                 Version = "17763.2183.2109130127",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     SecurityProfile = new AzureNative.Compute.Inputs.VMDiskSecurityProfileArgs
///                     {
///                         DiskEncryptionSet = new AzureNative.Compute.Inputs.DiskEncryptionSetParametersArgs
///                         {
///                             Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                         },
///                         SecurityEncryptionType = AzureNative.Compute.SecurityEncryptionTypes.DiskWithVMGuestState,
///                     },
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.StandardSSD_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String("Standard_DC2as_v5"),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SecurityProfile: &compute.SecurityProfileArgs{
/// 				SecurityType: pulumi.String(compute.SecurityTypesConfidentialVM),
/// 				UefiSettings: &compute.UefiSettingsArgs{
/// 					SecureBootEnabled: pulumi.Bool(true),
/// 					VTpmEnabled:       pulumi.Bool(true),
/// 				},
/// 			},
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("2019-datacenter-cvm"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("windows-cvm"),
/// 					Version:   pulumi.String("17763.2183.2109130127"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadOnly,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						SecurityProfile: &compute.VMDiskSecurityProfileArgs{
/// 							DiskEncryptionSet: &compute.DiskEncryptionSetParametersArgs{
/// 								Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}"),
/// 							},
/// 							SecurityEncryptionType: pulumi.String(compute.SecurityEncryptionTypesDiskWithVMGuestState),
/// 						},
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_StandardSSD_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.SecurityProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.UefiSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
/// import com.pulumi.azurenative.compute.inputs.VMDiskSecurityProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.DiskEncryptionSetParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_DC2as_v5")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .securityProfile(SecurityProfileArgs.builder()
///                 .securityType("ConfidentialVM")
///                 .uefiSettings(UefiSettingsArgs.builder()
///                     .secureBootEnabled(true)
///                     .vTpmEnabled(true)
///                     .build())
///                 .build())
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("2019-datacenter-cvm")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("windows-cvm")
///                     .version("17763.2183.2109130127")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadOnly")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .securityProfile(VMDiskSecurityProfileArgs.builder()
///                             .diskEncryptionSet(DiskEncryptionSetParametersArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}")
///                                 .build())
///                             .securityEncryptionType("DiskWithVMGuestState")
///                             .build())
///                         .storageAccountType("StandardSSD_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: "Standard_DC2as_v5",
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     securityProfile: {
///         securityType: azure_native.compute.SecurityTypes.ConfidentialVM,
///         uefiSettings: {
///             secureBootEnabled: true,
///             vTpmEnabled: true,
///         },
///     },
///     storageProfile: {
///         imageReference: {
///             offer: "2019-datacenter-cvm",
///             publisher: "MicrosoftWindowsServer",
///             sku: "windows-cvm",
///             version: "17763.2183.2109130127",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadOnly,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 securityProfile: {
///                     diskEncryptionSet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                     },
///                     securityEncryptionType: azure_native.compute.SecurityEncryptionTypes.DiskWithVMGuestState,
///                 },
///                 storageAccountType: azure_native.compute.StorageAccountTypes.StandardSSD_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": "Standard_DC2as_v5",
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     security_profile={
///         "security_type": azure_native.compute.SecurityTypes.CONFIDENTIAL_VM,
///         "uefi_settings": {
///             "secure_boot_enabled": True,
///             "v_tpm_enabled": True,
///         },
///     },
///     storage_profile={
///         "image_reference": {
///             "offer": "2019-datacenter-cvm",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "windows-cvm",
///             "version": "17763.2183.2109130127",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_ONLY,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "security_profile": {
///                     "disk_encryption_set": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                     },
///                     "security_encryption_type": azure_native.compute.SecurityEncryptionTypes.DISK_WITH_VM_GUEST_STATE,
///                 },
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_SS_D_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_DC2as_v5
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       securityProfile:
///         securityType: ConfidentialVM
///         uefiSettings:
///           secureBootEnabled: true
///           vTpmEnabled: true
///       storageProfile:
///         imageReference:
///           offer: 2019-datacenter-cvm
///           publisher: MicrosoftWindowsServer
///           sku: windows-cvm
///           version: 17763.2183.2109130127
///         osDisk:
///           caching: ReadOnly
///           createOption: FromImage
///           managedDisk:
///             securityProfile:
///               diskEncryptionSet:
///                 id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}
///               securityEncryptionType: DiskWithVMGuestState
///             storageAccountType: StandardSSD_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a VM with securityType ConfidentialVM with NonPersistedTPM securityEncryptionType
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = "Standard_DC2es_v5",
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         SecurityProfile = new AzureNative.Compute.Inputs.SecurityProfileArgs
///         {
///             SecurityType = AzureNative.Compute.SecurityTypes.ConfidentialVM,
///             UefiSettings = new AzureNative.Compute.Inputs.UefiSettingsArgs
///             {
///                 SecureBootEnabled = false,
///                 VTpmEnabled = true,
///             },
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "2022-datacenter-cvm",
///                 Publisher = "UbuntuServer",
///                 Sku = "linux-cvm",
///                 Version = "17763.2183.2109130127",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     SecurityProfile = new AzureNative.Compute.Inputs.VMDiskSecurityProfileArgs
///                     {
///                         SecurityEncryptionType = AzureNative.Compute.SecurityEncryptionTypes.NonPersistedTPM,
///                     },
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.StandardSSD_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String("Standard_DC2es_v5"),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SecurityProfile: &compute.SecurityProfileArgs{
/// 				SecurityType: pulumi.String(compute.SecurityTypesConfidentialVM),
/// 				UefiSettings: &compute.UefiSettingsArgs{
/// 					SecureBootEnabled: pulumi.Bool(false),
/// 					VTpmEnabled:       pulumi.Bool(true),
/// 				},
/// 			},
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("2022-datacenter-cvm"),
/// 					Publisher: pulumi.String("UbuntuServer"),
/// 					Sku:       pulumi.String("linux-cvm"),
/// 					Version:   pulumi.String("17763.2183.2109130127"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadOnly,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						SecurityProfile: &compute.VMDiskSecurityProfileArgs{
/// 							SecurityEncryptionType: pulumi.String(compute.SecurityEncryptionTypesNonPersistedTPM),
/// 						},
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_StandardSSD_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.SecurityProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.UefiSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
/// import com.pulumi.azurenative.compute.inputs.VMDiskSecurityProfileArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_DC2es_v5")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .securityProfile(SecurityProfileArgs.builder()
///                 .securityType("ConfidentialVM")
///                 .uefiSettings(UefiSettingsArgs.builder()
///                     .secureBootEnabled(false)
///                     .vTpmEnabled(true)
///                     .build())
///                 .build())
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("2022-datacenter-cvm")
///                     .publisher("UbuntuServer")
///                     .sku("linux-cvm")
///                     .version("17763.2183.2109130127")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadOnly")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .securityProfile(VMDiskSecurityProfileArgs.builder()
///                             .securityEncryptionType("NonPersistedTPM")
///                             .build())
///                         .storageAccountType("StandardSSD_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: "Standard_DC2es_v5",
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     securityProfile: {
///         securityType: azure_native.compute.SecurityTypes.ConfidentialVM,
///         uefiSettings: {
///             secureBootEnabled: false,
///             vTpmEnabled: true,
///         },
///     },
///     storageProfile: {
///         imageReference: {
///             offer: "2022-datacenter-cvm",
///             publisher: "UbuntuServer",
///             sku: "linux-cvm",
///             version: "17763.2183.2109130127",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadOnly,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 securityProfile: {
///                     securityEncryptionType: azure_native.compute.SecurityEncryptionTypes.NonPersistedTPM,
///                 },
///                 storageAccountType: azure_native.compute.StorageAccountTypes.StandardSSD_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": "Standard_DC2es_v5",
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     security_profile={
///         "security_type": azure_native.compute.SecurityTypes.CONFIDENTIAL_VM,
///         "uefi_settings": {
///             "secure_boot_enabled": False,
///             "v_tpm_enabled": True,
///         },
///     },
///     storage_profile={
///         "image_reference": {
///             "offer": "2022-datacenter-cvm",
///             "publisher": "UbuntuServer",
///             "sku": "linux-cvm",
///             "version": "17763.2183.2109130127",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_ONLY,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "security_profile": {
///                     "security_encryption_type": azure_native.compute.SecurityEncryptionTypes.NON_PERSISTED_TPM,
///                 },
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_SS_D_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_DC2es_v5
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       securityProfile:
///         securityType: ConfidentialVM
///         uefiSettings:
///           secureBootEnabled: false
///           vTpmEnabled: true
///       storageProfile:
///         imageReference:
///           offer: 2022-datacenter-cvm
///           publisher: UbuntuServer
///           sku: linux-cvm
///           version: 17763.2183.2109130127
///         osDisk:
///           caching: ReadOnly
///           createOption: FromImage
///           managedDisk:
///             securityProfile:
///               securityEncryptionType: NonPersistedTPM
///             storageAccountType: StandardSSD_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a VM with securityType ConfidentialVM with Platform Managed Keys
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = "Standard_DC2as_v5",
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         SecurityProfile = new AzureNative.Compute.Inputs.SecurityProfileArgs
///         {
///             SecurityType = AzureNative.Compute.SecurityTypes.ConfidentialVM,
///             UefiSettings = new AzureNative.Compute.Inputs.UefiSettingsArgs
///             {
///                 SecureBootEnabled = true,
///                 VTpmEnabled = true,
///             },
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "2019-datacenter-cvm",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "windows-cvm",
///                 Version = "17763.2183.2109130127",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     SecurityProfile = new AzureNative.Compute.Inputs.VMDiskSecurityProfileArgs
///                     {
///                         SecurityEncryptionType = AzureNative.Compute.SecurityEncryptionTypes.DiskWithVMGuestState,
///                     },
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.StandardSSD_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String("Standard_DC2as_v5"),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SecurityProfile: &compute.SecurityProfileArgs{
/// 				SecurityType: pulumi.String(compute.SecurityTypesConfidentialVM),
/// 				UefiSettings: &compute.UefiSettingsArgs{
/// 					SecureBootEnabled: pulumi.Bool(true),
/// 					VTpmEnabled:       pulumi.Bool(true),
/// 				},
/// 			},
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("2019-datacenter-cvm"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("windows-cvm"),
/// 					Version:   pulumi.String("17763.2183.2109130127"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadOnly,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						SecurityProfile: &compute.VMDiskSecurityProfileArgs{
/// 							SecurityEncryptionType: pulumi.String(compute.SecurityEncryptionTypesDiskWithVMGuestState),
/// 						},
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_StandardSSD_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.SecurityProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.UefiSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
/// import com.pulumi.azurenative.compute.inputs.VMDiskSecurityProfileArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_DC2as_v5")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .securityProfile(SecurityProfileArgs.builder()
///                 .securityType("ConfidentialVM")
///                 .uefiSettings(UefiSettingsArgs.builder()
///                     .secureBootEnabled(true)
///                     .vTpmEnabled(true)
///                     .build())
///                 .build())
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("2019-datacenter-cvm")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("windows-cvm")
///                     .version("17763.2183.2109130127")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadOnly")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .securityProfile(VMDiskSecurityProfileArgs.builder()
///                             .securityEncryptionType("DiskWithVMGuestState")
///                             .build())
///                         .storageAccountType("StandardSSD_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: "Standard_DC2as_v5",
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     securityProfile: {
///         securityType: azure_native.compute.SecurityTypes.ConfidentialVM,
///         uefiSettings: {
///             secureBootEnabled: true,
///             vTpmEnabled: true,
///         },
///     },
///     storageProfile: {
///         imageReference: {
///             offer: "2019-datacenter-cvm",
///             publisher: "MicrosoftWindowsServer",
///             sku: "windows-cvm",
///             version: "17763.2183.2109130127",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadOnly,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 securityProfile: {
///                     securityEncryptionType: azure_native.compute.SecurityEncryptionTypes.DiskWithVMGuestState,
///                 },
///                 storageAccountType: azure_native.compute.StorageAccountTypes.StandardSSD_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": "Standard_DC2as_v5",
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     security_profile={
///         "security_type": azure_native.compute.SecurityTypes.CONFIDENTIAL_VM,
///         "uefi_settings": {
///             "secure_boot_enabled": True,
///             "v_tpm_enabled": True,
///         },
///     },
///     storage_profile={
///         "image_reference": {
///             "offer": "2019-datacenter-cvm",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "windows-cvm",
///             "version": "17763.2183.2109130127",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_ONLY,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "security_profile": {
///                     "security_encryption_type": azure_native.compute.SecurityEncryptionTypes.DISK_WITH_VM_GUEST_STATE,
///                 },
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_SS_D_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_DC2as_v5
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       securityProfile:
///         securityType: ConfidentialVM
///         uefiSettings:
///           secureBootEnabled: true
///           vTpmEnabled: true
///       storageProfile:
///         imageReference:
///           offer: 2019-datacenter-cvm
///           publisher: MicrosoftWindowsServer
///           sku: windows-cvm
///           version: 17763.2183.2109130127
///         osDisk:
///           caching: ReadOnly
///           createOption: FromImage
///           managedDisk:
///             securityProfile:
///               securityEncryptionType: DiskWithVMGuestState
///             storageAccountType: StandardSSD_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Windows vm with a patch setting assessmentMode of ImageDefault.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///             WindowsConfiguration = new AzureNative.Compute.Inputs.WindowsConfigurationArgs
///             {
///                 EnableAutomaticUpdates = true,
///                 PatchSettings = new AzureNative.Compute.Inputs.PatchSettingsArgs
///                 {
///                     AssessmentMode = AzureNative.Compute.WindowsPatchAssessmentMode.ImageDefault,
///                 },
///                 ProvisionVMAgent = true,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Premium_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 				WindowsConfiguration: &compute.WindowsConfigurationArgs{
/// 					EnableAutomaticUpdates: pulumi.Bool(true),
/// 					PatchSettings: &compute.PatchSettingsArgs{
/// 						AssessmentMode: pulumi.String(compute.WindowsPatchAssessmentModeImageDefault),
/// 					},
/// 					ProvisionVMAgent: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Premium_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.WindowsConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.PatchSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .windowsConfiguration(WindowsConfigurationArgs.builder()
///                     .enableAutomaticUpdates(true)
///                     .patchSettings(PatchSettingsArgs.builder()
///                         .assessmentMode("ImageDefault")
///                         .build())
///                     .provisionVMAgent(true)
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Premium_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///         windowsConfiguration: {
///             enableAutomaticUpdates: true,
///             patchSettings: {
///                 assessmentMode: azure_native.compute.WindowsPatchAssessmentMode.ImageDefault,
///             },
///             provisionVMAgent: true,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Premium_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///         "windows_configuration": {
///             "enable_automatic_updates": True,
///             "patch_settings": {
///                 "assessment_mode": azure_native.compute.WindowsPatchAssessmentMode.IMAGE_DEFAULT,
///             },
///             "provision_vm_agent": True,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.PREMIUM_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///         windowsConfiguration:
///           enableAutomaticUpdates: true
///           patchSettings:
///             assessmentMode: ImageDefault
///           provisionVMAgent: true
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Premium_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Windows vm with a patch setting patchMode of AutomaticByOS.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/nsgExistingNic",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///             WindowsConfiguration = new AzureNative.Compute.Inputs.WindowsConfigurationArgs
///             {
///                 EnableAutomaticUpdates = true,
///                 PatchSettings = new AzureNative.Compute.Inputs.PatchSettingsArgs
///                 {
///                     PatchMode = AzureNative.Compute.WindowsVMGuestPatchMode.AutomaticByOS,
///                 },
///                 ProvisionVMAgent = true,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Premium_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/nsgExistingNic"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 				WindowsConfiguration: &compute.WindowsConfigurationArgs{
/// 					EnableAutomaticUpdates: pulumi.Bool(true),
/// 					PatchSettings: &compute.PatchSettingsArgs{
/// 						PatchMode: pulumi.String(compute.WindowsVMGuestPatchModeAutomaticByOS),
/// 					},
/// 					ProvisionVMAgent: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Premium_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.WindowsConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.PatchSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/nsgExistingNic")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .windowsConfiguration(WindowsConfigurationArgs.builder()
///                     .enableAutomaticUpdates(true)
///                     .patchSettings(PatchSettingsArgs.builder()
///                         .patchMode("AutomaticByOS")
///                         .build())
///                     .provisionVMAgent(true)
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Premium_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/nsgExistingNic",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///         windowsConfiguration: {
///             enableAutomaticUpdates: true,
///             patchSettings: {
///                 patchMode: azure_native.compute.WindowsVMGuestPatchMode.AutomaticByOS,
///             },
///             provisionVMAgent: true,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Premium_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/nsgExistingNic",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///         "windows_configuration": {
///             "enable_automatic_updates": True,
///             "patch_settings": {
///                 "patch_mode": azure_native.compute.WindowsVMGuestPatchMode.AUTOMATIC_BY_OS,
///             },
///             "provision_vm_agent": True,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.PREMIUM_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/nsgExistingNic
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///         windowsConfiguration:
///           enableAutomaticUpdates: true
///           patchSettings:
///             patchMode: AutomaticByOS
///           provisionVMAgent: true
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Premium_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Windows vm with a patch setting patchMode of AutomaticByPlatform and AutomaticByPlatformSettings.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///             WindowsConfiguration = new AzureNative.Compute.Inputs.WindowsConfigurationArgs
///             {
///                 EnableAutomaticUpdates = true,
///                 PatchSettings = new AzureNative.Compute.Inputs.PatchSettingsArgs
///                 {
///                     AssessmentMode = AzureNative.Compute.WindowsPatchAssessmentMode.AutomaticByPlatform,
///                     AutomaticByPlatformSettings = new AzureNative.Compute.Inputs.WindowsVMGuestPatchAutomaticByPlatformSettingsArgs
///                     {
///                         BypassPlatformSafetyChecksOnUserSchedule = false,
///                         RebootSetting = AzureNative.Compute.WindowsVMGuestPatchAutomaticByPlatformRebootSetting.Never,
///                     },
///                     PatchMode = AzureNative.Compute.WindowsVMGuestPatchMode.AutomaticByPlatform,
///                 },
///                 ProvisionVMAgent = true,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Premium_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 				WindowsConfiguration: &compute.WindowsConfigurationArgs{
/// 					EnableAutomaticUpdates: pulumi.Bool(true),
/// 					PatchSettings: &compute.PatchSettingsArgs{
/// 						AssessmentMode: pulumi.String(compute.WindowsPatchAssessmentModeAutomaticByPlatform),
/// 						AutomaticByPlatformSettings: &compute.WindowsVMGuestPatchAutomaticByPlatformSettingsArgs{
/// 							BypassPlatformSafetyChecksOnUserSchedule: pulumi.Bool(false),
/// 							RebootSetting:                            pulumi.String(compute.WindowsVMGuestPatchAutomaticByPlatformRebootSettingNever),
/// 						},
/// 						PatchMode: pulumi.String(compute.WindowsVMGuestPatchModeAutomaticByPlatform),
/// 					},
/// 					ProvisionVMAgent: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Premium_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.WindowsConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.PatchSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.WindowsVMGuestPatchAutomaticByPlatformSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .windowsConfiguration(WindowsConfigurationArgs.builder()
///                     .enableAutomaticUpdates(true)
///                     .patchSettings(PatchSettingsArgs.builder()
///                         .assessmentMode("AutomaticByPlatform")
///                         .automaticByPlatformSettings(WindowsVMGuestPatchAutomaticByPlatformSettingsArgs.builder()
///                             .bypassPlatformSafetyChecksOnUserSchedule(false)
///                             .rebootSetting("Never")
///                             .build())
///                         .patchMode("AutomaticByPlatform")
///                         .build())
///                     .provisionVMAgent(true)
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Premium_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///         windowsConfiguration: {
///             enableAutomaticUpdates: true,
///             patchSettings: {
///                 assessmentMode: azure_native.compute.WindowsPatchAssessmentMode.AutomaticByPlatform,
///                 automaticByPlatformSettings: {
///                     bypassPlatformSafetyChecksOnUserSchedule: false,
///                     rebootSetting: azure_native.compute.WindowsVMGuestPatchAutomaticByPlatformRebootSetting.Never,
///                 },
///                 patchMode: azure_native.compute.WindowsVMGuestPatchMode.AutomaticByPlatform,
///             },
///             provisionVMAgent: true,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Premium_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///         "windows_configuration": {
///             "enable_automatic_updates": True,
///             "patch_settings": {
///                 "assessment_mode": azure_native.compute.WindowsPatchAssessmentMode.AUTOMATIC_BY_PLATFORM,
///                 "automatic_by_platform_settings": {
///                     "bypass_platform_safety_checks_on_user_schedule": False,
///                     "reboot_setting": azure_native.compute.WindowsVMGuestPatchAutomaticByPlatformRebootSetting.NEVER,
///                 },
///                 "patch_mode": azure_native.compute.WindowsVMGuestPatchMode.AUTOMATIC_BY_PLATFORM,
///             },
///             "provision_vm_agent": True,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.PREMIUM_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///         windowsConfiguration:
///           enableAutomaticUpdates: true
///           patchSettings:
///             assessmentMode: AutomaticByPlatform
///             automaticByPlatformSettings:
///               bypassPlatformSafetyChecksOnUserSchedule: false
///               rebootSetting: Never
///             patchMode: AutomaticByPlatform
///           provisionVMAgent: true
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Premium_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Windows vm with a patch setting patchMode of AutomaticByPlatform and enableHotpatching set to true.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///             WindowsConfiguration = new AzureNative.Compute.Inputs.WindowsConfigurationArgs
///             {
///                 EnableAutomaticUpdates = true,
///                 PatchSettings = new AzureNative.Compute.Inputs.PatchSettingsArgs
///                 {
///                     EnableHotpatching = true,
///                     PatchMode = AzureNative.Compute.WindowsVMGuestPatchMode.AutomaticByPlatform,
///                 },
///                 ProvisionVMAgent = true,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Premium_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 				WindowsConfiguration: &compute.WindowsConfigurationArgs{
/// 					EnableAutomaticUpdates: pulumi.Bool(true),
/// 					PatchSettings: &compute.PatchSettingsArgs{
/// 						EnableHotpatching: pulumi.Bool(true),
/// 						PatchMode:         pulumi.String(compute.WindowsVMGuestPatchModeAutomaticByPlatform),
/// 					},
/// 					ProvisionVMAgent: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Premium_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.WindowsConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.PatchSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .windowsConfiguration(WindowsConfigurationArgs.builder()
///                     .enableAutomaticUpdates(true)
///                     .patchSettings(PatchSettingsArgs.builder()
///                         .enableHotpatching(true)
///                         .patchMode("AutomaticByPlatform")
///                         .build())
///                     .provisionVMAgent(true)
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Premium_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///         windowsConfiguration: {
///             enableAutomaticUpdates: true,
///             patchSettings: {
///                 enableHotpatching: true,
///                 patchMode: azure_native.compute.WindowsVMGuestPatchMode.AutomaticByPlatform,
///             },
///             provisionVMAgent: true,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Premium_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///         "windows_configuration": {
///             "enable_automatic_updates": True,
///             "patch_settings": {
///                 "enable_hotpatching": True,
///                 "patch_mode": azure_native.compute.WindowsVMGuestPatchMode.AUTOMATIC_BY_PLATFORM,
///             },
///             "provision_vm_agent": True,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.PREMIUM_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///         windowsConfiguration:
///           enableAutomaticUpdates: true
///           patchSettings:
///             enableHotpatching: true
///             patchMode: AutomaticByPlatform
///           provisionVMAgent: true
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Premium_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Windows vm with a patch setting patchMode of Manual.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///             WindowsConfiguration = new AzureNative.Compute.Inputs.WindowsConfigurationArgs
///             {
///                 EnableAutomaticUpdates = true,
///                 PatchSettings = new AzureNative.Compute.Inputs.PatchSettingsArgs
///                 {
///                     PatchMode = AzureNative.Compute.WindowsVMGuestPatchMode.Manual,
///                 },
///                 ProvisionVMAgent = true,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Premium_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 				WindowsConfiguration: &compute.WindowsConfigurationArgs{
/// 					EnableAutomaticUpdates: pulumi.Bool(true),
/// 					PatchSettings: &compute.PatchSettingsArgs{
/// 						PatchMode: pulumi.String(compute.WindowsVMGuestPatchModeManual),
/// 					},
/// 					ProvisionVMAgent: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Premium_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.WindowsConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.PatchSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .windowsConfiguration(WindowsConfigurationArgs.builder()
///                     .enableAutomaticUpdates(true)
///                     .patchSettings(PatchSettingsArgs.builder()
///                         .patchMode("Manual")
///                         .build())
///                     .provisionVMAgent(true)
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Premium_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///         windowsConfiguration: {
///             enableAutomaticUpdates: true,
///             patchSettings: {
///                 patchMode: azure_native.compute.WindowsVMGuestPatchMode.Manual,
///             },
///             provisionVMAgent: true,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Premium_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///         "windows_configuration": {
///             "enable_automatic_updates": True,
///             "patch_settings": {
///                 "patch_mode": azure_native.compute.WindowsVMGuestPatchMode.MANUAL,
///             },
///             "provision_vm_agent": True,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.PREMIUM_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///         windowsConfiguration:
///           enableAutomaticUpdates: true
///           patchSettings:
///             patchMode: Manual
///           provisionVMAgent: true
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Premium_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Windows vm with patch settings patchMode and assessmentMode set to AutomaticByPlatform.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///             WindowsConfiguration = new AzureNative.Compute.Inputs.WindowsConfigurationArgs
///             {
///                 EnableAutomaticUpdates = true,
///                 PatchSettings = new AzureNative.Compute.Inputs.PatchSettingsArgs
///                 {
///                     AssessmentMode = AzureNative.Compute.WindowsPatchAssessmentMode.AutomaticByPlatform,
///                     PatchMode = AzureNative.Compute.WindowsVMGuestPatchMode.AutomaticByPlatform,
///                 },
///                 ProvisionVMAgent = true,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Premium_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 				WindowsConfiguration: &compute.WindowsConfigurationArgs{
/// 					EnableAutomaticUpdates: pulumi.Bool(true),
/// 					PatchSettings: &compute.PatchSettingsArgs{
/// 						AssessmentMode: pulumi.String(compute.WindowsPatchAssessmentModeAutomaticByPlatform),
/// 						PatchMode:      pulumi.String(compute.WindowsVMGuestPatchModeAutomaticByPlatform),
/// 					},
/// 					ProvisionVMAgent: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Premium_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.WindowsConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.PatchSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .windowsConfiguration(WindowsConfigurationArgs.builder()
///                     .enableAutomaticUpdates(true)
///                     .patchSettings(PatchSettingsArgs.builder()
///                         .assessmentMode("AutomaticByPlatform")
///                         .patchMode("AutomaticByPlatform")
///                         .build())
///                     .provisionVMAgent(true)
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Premium_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///         windowsConfiguration: {
///             enableAutomaticUpdates: true,
///             patchSettings: {
///                 assessmentMode: azure_native.compute.WindowsPatchAssessmentMode.AutomaticByPlatform,
///                 patchMode: azure_native.compute.WindowsVMGuestPatchMode.AutomaticByPlatform,
///             },
///             provisionVMAgent: true,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Premium_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///         "windows_configuration": {
///             "enable_automatic_updates": True,
///             "patch_settings": {
///                 "assessment_mode": azure_native.compute.WindowsPatchAssessmentMode.AUTOMATIC_BY_PLATFORM,
///                 "patch_mode": azure_native.compute.WindowsVMGuestPatchMode.AUTOMATIC_BY_PLATFORM,
///             },
///             "provision_vm_agent": True,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.PREMIUM_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///         windowsConfiguration:
///           enableAutomaticUpdates: true
///           patchSettings:
///             assessmentMode: AutomaticByPlatform
///             patchMode: AutomaticByPlatform
///           provisionVMAgent: true
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Premium_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a custom-image vm from an unmanaged generalized os image.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 Image = new AzureNative.Compute.Inputs.VirtualHardDiskArgs
///                 {
///                     Uri = "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/{existing-generalized-os-image-blob-name}.vhd",
///                 },
///                 Name = "myVMosdisk",
///                 OsType = AzureNative.Compute.OperatingSystemTypes.Windows,
///                 Vhd = new AzureNative.Compute.Inputs.VirtualHardDiskArgs
///                 {
///                     Uri = "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk.vhd",
///                 },
///             },
///         },
///         VmName = "{vm-name}",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					Image: &compute.VirtualHardDiskArgs{
/// 						Uri: pulumi.String("http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/{existing-generalized-os-image-blob-name}.vhd"),
/// 					},
/// 					Name:   pulumi.String("myVMosdisk"),
/// 					OsType: compute.OperatingSystemTypesWindows,
/// 					Vhd: &compute.VirtualHardDiskArgs{
/// 						Uri: pulumi.String("http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk.vhd"),
/// 					},
/// 				},
/// 			},
/// 			VmName: pulumi.String("{vm-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualHardDiskArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .image(VirtualHardDiskArgs.builder()
///                         .uri("http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/{existing-generalized-os-image-blob-name}.vhd")
///                         .build())
///                     .name("myVMosdisk")
///                     .osType("Windows")
///                     .vhd(VirtualHardDiskArgs.builder()
///                         .uri("http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk.vhd")
///                         .build())
///                     .build())
///                 .build())
///             .vmName("{vm-name}")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             image: {
///                 uri: "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/{existing-generalized-os-image-blob-name}.vhd",
///             },
///             name: "myVMosdisk",
///             osType: azure_native.compute.OperatingSystemTypes.Windows,
///             vhd: {
///                 uri: "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk.vhd",
///             },
///         },
///     },
///     vmName: "{vm-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "image": {
///                 "uri": "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/{existing-generalized-os-image-blob-name}.vhd",
///             },
///             "name": "myVMosdisk",
///             "os_type": azure_native.compute.OperatingSystemTypes.WINDOWS,
///             "vhd": {
///                 "uri": "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk.vhd",
///             },
///         },
///     },
///     vm_name="{vm-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           image:
///             uri: http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/{existing-generalized-os-image-blob-name}.vhd
///           name: myVMosdisk
///           osType: Windows
///           vhd:
///             uri: http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk.vhd
///       vmName: '{vm-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a platform-image vm with unmanaged os and data disks.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D2_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             DataDisks = new[]
///             {
///                 new AzureNative.Compute.Inputs.DataDiskArgs
///                 {
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.Empty,
///                     DiskSizeGB = 1023,
///                     Lun = 0,
///                     Vhd = new AzureNative.Compute.Inputs.VirtualHardDiskArgs
///                     {
///                         Uri = "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk0.vhd",
///                     },
///                 },
///                 new AzureNative.Compute.Inputs.DataDiskArgs
///                 {
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.Empty,
///                     DiskSizeGB = 1023,
///                     Lun = 1,
///                     Vhd = new AzureNative.Compute.Inputs.VirtualHardDiskArgs
///                     {
///                         Uri = "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk1.vhd",
///                     },
///                 },
///             },
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 Name = "myVMosdisk",
///                 Vhd = new AzureNative.Compute.Inputs.VirtualHardDiskArgs
///                 {
///                     Uri = "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk.vhd",
///                 },
///             },
///         },
///         VmName = "{vm-name}",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D2_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				DataDisks: compute.DataDiskArray{
/// 					&compute.DataDiskArgs{
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesEmpty),
/// 						DiskSizeGB:   pulumi.Int(1023),
/// 						Lun:          pulumi.Int(0),
/// 						Vhd: &compute.VirtualHardDiskArgs{
/// 							Uri: pulumi.String("http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk0.vhd"),
/// 						},
/// 					},
/// 					&compute.DataDiskArgs{
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesEmpty),
/// 						DiskSizeGB:   pulumi.Int(1023),
/// 						Lun:          pulumi.Int(1),
/// 						Vhd: &compute.VirtualHardDiskArgs{
/// 							Uri: pulumi.String("http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk1.vhd"),
/// 						},
/// 					},
/// 				},
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					Name:         pulumi.String("myVMosdisk"),
/// 					Vhd: &compute.VirtualHardDiskArgs{
/// 						Uri: pulumi.String("http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk.vhd"),
/// 					},
/// 				},
/// 			},
/// 			VmName: pulumi.String("{vm-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualHardDiskArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D2_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .dataDisks(
///                     DataDiskArgs.builder()
///                         .createOption("Empty")
///                         .diskSizeGB(1023)
///                         .lun(0)
///                         .vhd(VirtualHardDiskArgs.builder()
///                             .uri("http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk0.vhd")
///                             .build())
///                         .build(),
///                     DataDiskArgs.builder()
///                         .createOption("Empty")
///                         .diskSizeGB(1023)
///                         .lun(1)
///                         .vhd(VirtualHardDiskArgs.builder()
///                             .uri("http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk1.vhd")
///                             .build())
///                         .build())
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .name("myVMosdisk")
///                     .vhd(VirtualHardDiskArgs.builder()
///                         .uri("http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk.vhd")
///                         .build())
///                     .build())
///                 .build())
///             .vmName("{vm-name}")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D2_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         dataDisks: [
///             {
///                 createOption: azure_native.compute.DiskCreateOptionTypes.Empty,
///                 diskSizeGB: 1023,
///                 lun: 0,
///                 vhd: {
///                     uri: "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk0.vhd",
///                 },
///             },
///             {
///                 createOption: azure_native.compute.DiskCreateOptionTypes.Empty,
///                 diskSizeGB: 1023,
///                 lun: 1,
///                 vhd: {
///                     uri: "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk1.vhd",
///                 },
///             },
///         ],
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             name: "myVMosdisk",
///             vhd: {
///                 uri: "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk.vhd",
///             },
///         },
///     },
///     vmName: "{vm-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D2_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "data_disks": [
///             {
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.EMPTY,
///                 "disk_size_gb": 1023,
///                 "lun": 0,
///                 "vhd": {
///                     "uri": "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk0.vhd",
///                 },
///             },
///             {
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.EMPTY,
///                 "disk_size_gb": 1023,
///                 "lun": 1,
///                 "vhd": {
///                     "uri": "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk1.vhd",
///                 },
///             },
///         ],
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "name": "myVMosdisk",
///             "vhd": {
///                 "uri": "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk.vhd",
///             },
///         },
///     },
///     vm_name="{vm-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D2_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         dataDisks:
///           - createOption: Empty
///             diskSizeGB: 1023
///             lun: 0
///             vhd:
///               uri: http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk0.vhd
///           - createOption: Empty
///             diskSizeGB: 1023
///             lun: 1
///             vhd:
///               uri: http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk1.vhd
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           name: myVMosdisk
///           vhd:
///             uri: http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/myDisk.vhd
///       vmName: '{vm-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm from a custom image.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm from a generalized shared image.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm from a specialized shared image.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm in a Virtual Machine Scale Set with customer assigned platformFaultDomain.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         PlatformFaultDomain = 1,
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VirtualMachineScaleSet = new AzureNative.Compute.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachineScaleSets/{existing-flex-vmss-name-with-platformFaultDomainCount-greater-than-1}",
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			PlatformFaultDomain: pulumi.Int(1),
/// 			ResourceGroupName:   pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VirtualMachineScaleSet: &compute.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachineScaleSets/{existing-flex-vmss-name-with-platformFaultDomainCount-greater-than-1}"),
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
/// import com.pulumi.azurenative.compute.inputs.SubResourceArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .platformFaultDomain(1)
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .virtualMachineScaleSet(SubResourceArgs.builder()
///                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachineScaleSets/{existing-flex-vmss-name-with-platformFaultDomainCount-greater-than-1}")
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     platformFaultDomain: 1,
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     virtualMachineScaleSet: {
///         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachineScaleSets/{existing-flex-vmss-name-with-platformFaultDomainCount-greater-than-1}",
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     platform_fault_domain=1,
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     virtual_machine_scale_set={
///         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachineScaleSets/{existing-flex-vmss-name-with-platformFaultDomainCount-greater-than-1}",
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       platformFaultDomain: 1
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       virtualMachineScaleSet:
///         id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachineScaleSets/{existing-flex-vmss-name-with-platformFaultDomainCount-greater-than-1}
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm in an availability set.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         AvailabilitySet = new AzureNative.Compute.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/availabilitySets/{existing-availability-set-name}",
///         },
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			AvailabilitySet: &compute.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/availabilitySets/{existing-availability-set-name}"),
/// 			},
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .availabilitySet(SubResourceArgs.builder()
///                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/availabilitySets/{existing-availability-set-name}")
///                 .build())
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     availabilitySet: {
///         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/availabilitySets/{existing-availability-set-name}",
///     },
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     availability_set={
///         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/availabilitySets/{existing-availability-set-name}",
///     },
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       availabilitySet:
///         id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/availabilitySets/{existing-availability-set-name}
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm with Application Profile.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         ApplicationProfile = new AzureNative.Compute.Inputs.ApplicationProfileArgs
///         {
///             GalleryApplications = new[]
///             {
///                 new AzureNative.Compute.Inputs.VMGalleryApplicationArgs
///                 {
///                     ConfigurationReference = "https://mystorageaccount.blob.core.windows.net/configurations/settings.config",
///                     EnableAutomaticUpgrade = false,
///                     Order = 1,
///                     PackageReferenceId = "/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdb/resourceGroups/myresourceGroupName2/providers/Microsoft.Compute/galleries/myGallery1/applications/MyApplication1/versions/1.0",
///                     Tags = "myTag1",
///                     TreatFailureAsDeploymentFailure = false,
///                 },
///                 new AzureNative.Compute.Inputs.VMGalleryApplicationArgs
///                 {
///                     PackageReferenceId = "/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdg/resourceGroups/myresourceGroupName3/providers/Microsoft.Compute/galleries/myGallery2/applications/MyApplication2/versions/1.1",
///                 },
///             },
///         },
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "{image_offer}",
///                 Publisher = "{image_publisher}",
///                 Sku = "{image_sku}",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			ApplicationProfile: &compute.ApplicationProfileArgs{
/// 				GalleryApplications: compute.VMGalleryApplicationArray{
/// 					&compute.VMGalleryApplicationArgs{
/// 						ConfigurationReference:          pulumi.String("https://mystorageaccount.blob.core.windows.net/configurations/settings.config"),
/// 						EnableAutomaticUpgrade:          pulumi.Bool(false),
/// 						Order:                           pulumi.Int(1),
/// 						PackageReferenceId:              pulumi.String("/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdb/resourceGroups/myresourceGroupName2/providers/Microsoft.Compute/galleries/myGallery1/applications/MyApplication1/versions/1.0"),
/// 						Tags:                            pulumi.String("myTag1"),
/// 						TreatFailureAsDeploymentFailure: pulumi.Bool(false),
/// 					},
/// 					&compute.VMGalleryApplicationArgs{
/// 						PackageReferenceId: pulumi.String("/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdg/resourceGroups/myresourceGroupName3/providers/Microsoft.Compute/galleries/myGallery2/applications/MyApplication2/versions/1.1"),
/// 					},
/// 				},
/// 			},
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("{image_offer}"),
/// 					Publisher: pulumi.String("{image_publisher}"),
/// 					Sku:       pulumi.String("{image_sku}"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.ApplicationProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .applicationProfile(ApplicationProfileArgs.builder()
///                 .galleryApplications(
///                     VMGalleryApplicationArgs.builder()
///                         .configurationReference("https://mystorageaccount.blob.core.windows.net/configurations/settings.config")
///                         .enableAutomaticUpgrade(false)
///                         .order(1)
///                         .packageReferenceId("/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdb/resourceGroups/myresourceGroupName2/providers/Microsoft.Compute/galleries/myGallery1/applications/MyApplication1/versions/1.0")
///                         .tags("myTag1")
///                         .treatFailureAsDeploymentFailure(false)
///                         .build(),
///                     VMGalleryApplicationArgs.builder()
///                         .packageReferenceId("/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdg/resourceGroups/myresourceGroupName3/providers/Microsoft.Compute/galleries/myGallery2/applications/MyApplication2/versions/1.1")
///                         .build())
///                 .build())
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("{image_offer}")
///                     .publisher("{image_publisher}")
///                     .sku("{image_sku}")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     applicationProfile: {
///         galleryApplications: [
///             {
///                 configurationReference: "https://mystorageaccount.blob.core.windows.net/configurations/settings.config",
///                 enableAutomaticUpgrade: false,
///                 order: 1,
///                 packageReferenceId: "/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdb/resourceGroups/myresourceGroupName2/providers/Microsoft.Compute/galleries/myGallery1/applications/MyApplication1/versions/1.0",
///                 tags: "myTag1",
///                 treatFailureAsDeploymentFailure: false,
///             },
///             {
///                 packageReferenceId: "/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdg/resourceGroups/myresourceGroupName3/providers/Microsoft.Compute/galleries/myGallery2/applications/MyApplication2/versions/1.1",
///             },
///         ],
///     },
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "{image_offer}",
///             publisher: "{image_publisher}",
///             sku: "{image_sku}",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     application_profile={
///         "gallery_applications": [
///             {
///                 "configuration_reference": "https://mystorageaccount.blob.core.windows.net/configurations/settings.config",
///                 "enable_automatic_upgrade": False,
///                 "order": 1,
///                 "package_reference_id": "/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdb/resourceGroups/myresourceGroupName2/providers/Microsoft.Compute/galleries/myGallery1/applications/MyApplication1/versions/1.0",
///                 "tags": "myTag1",
///                 "treat_failure_as_deployment_failure": False,
///             },
///             {
///                 "package_reference_id": "/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdg/resourceGroups/myresourceGroupName3/providers/Microsoft.Compute/galleries/myGallery2/applications/MyApplication2/versions/1.1",
///             },
///         ],
///     },
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "{image_offer}",
///             "publisher": "{image_publisher}",
///             "sku": "{image_sku}",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       applicationProfile:
///         galleryApplications:
///           - configurationReference: https://mystorageaccount.blob.core.windows.net/configurations/settings.config
///             enableAutomaticUpgrade: false
///             order: 1
///             packageReferenceId: /subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdb/resourceGroups/myresourceGroupName2/providers/Microsoft.Compute/galleries/myGallery1/applications/MyApplication1/versions/1.0
///             tags: myTag1
///             treatFailureAsDeploymentFailure: false
///           - packageReferenceId: /subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdg/resourceGroups/myresourceGroupName3/providers/Microsoft.Compute/galleries/myGallery2/applications/MyApplication2/versions/1.1
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: '{image_offer}'
///           publisher: '{image_publisher}'
///           sku: '{image_sku}'
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm with DiskEncryptionSet resource id in the os disk and data disk.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             DataDisks = new[]
///             {
///                 new AzureNative.Compute.Inputs.DataDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.Empty,
///                     DiskSizeGB = 1023,
///                     Lun = 0,
///                     ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                     {
///                         DiskEncryptionSet = new AzureNative.Compute.Inputs.DiskEncryptionSetParametersArgs
///                         {
///                             Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                         },
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///                 new AzureNative.Compute.Inputs.DataDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.Attach,
///                     DiskSizeGB = 1023,
///                     Lun = 1,
///                     ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                     {
///                         DiskEncryptionSet = new AzureNative.Compute.Inputs.DiskEncryptionSetParametersArgs
///                         {
///                             Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                         },
///                         Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/{existing-managed-disk-name}",
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     DiskEncryptionSet = new AzureNative.Compute.Inputs.DiskEncryptionSetParametersArgs
///                     {
///                         Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                     },
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				DataDisks: compute.DataDiskArray{
/// 					&compute.DataDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesEmpty),
/// 						DiskSizeGB:   pulumi.Int(1023),
/// 						Lun:          pulumi.Int(0),
/// 						ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 							DiskEncryptionSet: &compute.DiskEncryptionSetParametersArgs{
/// 								Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}"),
/// 							},
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 					&compute.DataDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesAttach),
/// 						DiskSizeGB:   pulumi.Int(1023),
/// 						Lun:          pulumi.Int(1),
/// 						ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 							DiskEncryptionSet: &compute.DiskEncryptionSetParametersArgs{
/// 								Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}"),
/// 							},
/// 							Id:                 pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/{existing-managed-disk-name}"),
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						DiskEncryptionSet: &compute.DiskEncryptionSetParametersArgs{
/// 							Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}"),
/// 						},
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
/// import com.pulumi.azurenative.compute.inputs.DiskEncryptionSetParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .dataDisks(
///                     DataDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("Empty")
///                         .diskSizeGB(1023)
///                         .lun(0)
///                         .managedDisk(ManagedDiskParametersArgs.builder()
///                             .diskEncryptionSet(DiskEncryptionSetParametersArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}")
///                                 .build())
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build(),
///                     DataDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("Attach")
///                         .diskSizeGB(1023)
///                         .lun(1)
///                         .managedDisk(ManagedDiskParametersArgs.builder()
///                             .diskEncryptionSet(DiskEncryptionSetParametersArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}")
///                                 .build())
///                             .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/{existing-managed-disk-name}")
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                 .imageReference(ImageReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .diskEncryptionSet(DiskEncryptionSetParametersArgs.builder()
///                             .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}")
///                             .build())
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         dataDisks: [
///             {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.Empty,
///                 diskSizeGB: 1023,
///                 lun: 0,
///                 managedDisk: {
///                     diskEncryptionSet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                     },
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///             {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.Attach,
///                 diskSizeGB: 1023,
///                 lun: 1,
///                 managedDisk: {
///                     diskEncryptionSet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                     },
///                     id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/{existing-managed-disk-name}",
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         ],
///         imageReference: {
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 diskEncryptionSet: {
///                     id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                 },
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "data_disks": [
///             {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.EMPTY,
///                 "disk_size_gb": 1023,
///                 "lun": 0,
///                 "managed_disk": {
///                     "disk_encryption_set": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                     },
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///             {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.ATTACH,
///                 "disk_size_gb": 1023,
///                 "lun": 1,
///                 "managed_disk": {
///                     "disk_encryption_set": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                     },
///                     "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/{existing-managed-disk-name}",
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         ],
///         "image_reference": {
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "disk_encryption_set": {
///                     "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                 },
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         dataDisks:
///           - caching: ReadWrite
///             createOption: Empty
///             diskSizeGB: 1023
///             lun: 0
///             managedDisk:
///               diskEncryptionSet:
///                 id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}
///               storageAccountType: Standard_LRS
///           - caching: ReadWrite
///             createOption: Attach
///             diskSizeGB: 1023
///             lun: 1
///             managedDisk:
///               diskEncryptionSet:
///                 id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}
///               id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/{existing-managed-disk-name}
///               storageAccountType: Standard_LRS
///         imageReference:
///           id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             diskEncryptionSet:
///               id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm with Host Encryption using encryptionAtHost property.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_DS1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         Plan = new AzureNative.Compute.Inputs.PlanArgs
///         {
///             Name = "windows2016",
///             Product = "windows-data-science-vm",
///             Publisher = "microsoft-ads",
///         },
///         ResourceGroupName = "myResourceGroup",
///         SecurityProfile = new AzureNative.Compute.Inputs.SecurityProfileArgs
///         {
///             EncryptionAtHost = true,
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "windows-data-science-vm",
///                 Publisher = "microsoft-ads",
///                 Sku = "windows2016",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_DS1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			Plan: &compute.PlanArgs{
/// 				Name:      pulumi.String("windows2016"),
/// 				Product:   pulumi.String("windows-data-science-vm"),
/// 				Publisher: pulumi.String("microsoft-ads"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SecurityProfile: &compute.SecurityProfileArgs{
/// 				EncryptionAtHost: pulumi.Bool(true),
/// 			},
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("windows-data-science-vm"),
/// 					Publisher: pulumi.String("microsoft-ads"),
/// 					Sku:       pulumi.String("windows2016"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadOnly,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.PlanArgs;
/// import com.pulumi.azurenative.compute.inputs.SecurityProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_DS1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .plan(PlanArgs.builder()
///                 .name("windows2016")
///                 .product("windows-data-science-vm")
///                 .publisher("microsoft-ads")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .securityProfile(SecurityProfileArgs.builder()
///                 .encryptionAtHost(true)
///                 .build())
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("windows-data-science-vm")
///                     .publisher("microsoft-ads")
///                     .sku("windows2016")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadOnly")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_DS1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     plan: {
///         name: "windows2016",
///         product: "windows-data-science-vm",
///         publisher: "microsoft-ads",
///     },
///     resourceGroupName: "myResourceGroup",
///     securityProfile: {
///         encryptionAtHost: true,
///     },
///     storageProfile: {
///         imageReference: {
///             offer: "windows-data-science-vm",
///             publisher: "microsoft-ads",
///             sku: "windows2016",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadOnly,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_DS1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     plan={
///         "name": "windows2016",
///         "product": "windows-data-science-vm",
///         "publisher": "microsoft-ads",
///     },
///     resource_group_name="myResourceGroup",
///     security_profile={
///         "encryption_at_host": True,
///     },
///     storage_profile={
///         "image_reference": {
///             "offer": "windows-data-science-vm",
///             "publisher": "microsoft-ads",
///             "sku": "windows2016",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_ONLY,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_DS1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       plan:
///         name: windows2016
///         product: windows-data-science-vm
///         publisher: microsoft-ads
///       resourceGroupName: myResourceGroup
///       securityProfile:
///         encryptionAtHost: true
///       storageProfile:
///         imageReference:
///           offer: windows-data-science-vm
///           publisher: microsoft-ads
///           sku: windows2016
///           version: latest
///         osDisk:
///           caching: ReadOnly
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm with Scheduled Events Profile
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         DiagnosticsProfile = new AzureNative.Compute.Inputs.DiagnosticsProfileArgs
///         {
///             BootDiagnostics = new AzureNative.Compute.Inputs.BootDiagnosticsArgs
///             {
///                 Enabled = true,
///                 StorageUri = "http://{existing-storage-account-name}.blob.core.windows.net",
///             },
///         },
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         ScheduledEventsPolicy = new AzureNative.Compute.Inputs.ScheduledEventsPolicyArgs
///         {
///             ScheduledEventsAdditionalPublishingTargets = new AzureNative.Compute.Inputs.ScheduledEventsAdditionalPublishingTargetsArgs
///             {
///                 EventGridAndResourceGraph = new AzureNative.Compute.Inputs.EventGridAndResourceGraphArgs
///                 {
///                     Enable = true,
///                 },
///             },
///             UserInitiatedReboot = new AzureNative.Compute.Inputs.UserInitiatedRebootArgs
///             {
///                 AutomaticallyApprove = true,
///             },
///             UserInitiatedRedeploy = new AzureNative.Compute.Inputs.UserInitiatedRedeployArgs
///             {
///                 AutomaticallyApprove = true,
///             },
///         },
///         ScheduledEventsProfile = new AzureNative.Compute.Inputs.ScheduledEventsProfileArgs
///         {
///             OsImageNotificationProfile = new AzureNative.Compute.Inputs.OSImageNotificationProfileArgs
///             {
///                 Enable = true,
///                 NotBeforeTimeout = "PT15M",
///             },
///             TerminateNotificationProfile = new AzureNative.Compute.Inputs.TerminateNotificationProfileArgs
///             {
///                 Enable = true,
///                 NotBeforeTimeout = "PT10M",
///             },
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			DiagnosticsProfile: &compute.DiagnosticsProfileArgs{
/// 				BootDiagnostics: &compute.BootDiagnosticsArgs{
/// 					Enabled:    pulumi.Bool(true),
/// 					StorageUri: pulumi.String("http://{existing-storage-account-name}.blob.core.windows.net"),
/// 				},
/// 			},
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ScheduledEventsPolicy: &compute.ScheduledEventsPolicyArgs{
/// 				ScheduledEventsAdditionalPublishingTargets: &compute.ScheduledEventsAdditionalPublishingTargetsArgs{
/// 					EventGridAndResourceGraph: &compute.EventGridAndResourceGraphArgs{
/// 						Enable: pulumi.Bool(true),
/// 					},
/// 				},
/// 				UserInitiatedReboot: &compute.UserInitiatedRebootArgs{
/// 					AutomaticallyApprove: pulumi.Bool(true),
/// 				},
/// 				UserInitiatedRedeploy: &compute.UserInitiatedRedeployArgs{
/// 					AutomaticallyApprove: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ScheduledEventsProfile: &compute.ScheduledEventsProfileArgs{
/// 				OsImageNotificationProfile: &compute.OSImageNotificationProfileArgs{
/// 					Enable:           pulumi.Bool(true),
/// 					NotBeforeTimeout: pulumi.String("PT15M"),
/// 				},
/// 				TerminateNotificationProfile: &compute.TerminateNotificationProfileArgs{
/// 					Enable:           pulumi.Bool(true),
/// 					NotBeforeTimeout: pulumi.String("PT10M"),
/// 				},
/// 			},
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.DiagnosticsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.BootDiagnosticsArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ScheduledEventsPolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.ScheduledEventsAdditionalPublishingTargetsArgs;
/// import com.pulumi.azurenative.compute.inputs.EventGridAndResourceGraphArgs;
/// import com.pulumi.azurenative.compute.inputs.UserInitiatedRebootArgs;
/// import com.pulumi.azurenative.compute.inputs.UserInitiatedRedeployArgs;
/// import com.pulumi.azurenative.compute.inputs.ScheduledEventsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSImageNotificationProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.TerminateNotificationProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .diagnosticsProfile(DiagnosticsProfileArgs.builder()
///                 .bootDiagnostics(BootDiagnosticsArgs.builder()
///                     .enabled(true)
///                     .storageUri("http://{existing-storage-account-name}.blob.core.windows.net")
///                     .build())
///                 .build())
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .scheduledEventsPolicy(ScheduledEventsPolicyArgs.builder()
///                 .scheduledEventsAdditionalPublishingTargets(ScheduledEventsAdditionalPublishingTargetsArgs.builder()
///                     .eventGridAndResourceGraph(EventGridAndResourceGraphArgs.builder()
///                         .enable(true)
///                         .build())
///                     .build())
///                 .userInitiatedReboot(UserInitiatedRebootArgs.builder()
///                     .automaticallyApprove(true)
///                     .build())
///                 .userInitiatedRedeploy(UserInitiatedRedeployArgs.builder()
///                     .automaticallyApprove(true)
///                     .build())
///                 .build())
///             .scheduledEventsProfile(ScheduledEventsProfileArgs.builder()
///                 .osImageNotificationProfile(OSImageNotificationProfileArgs.builder()
///                     .enable(true)
///                     .notBeforeTimeout("PT15M")
///                     .build())
///                 .terminateNotificationProfile(TerminateNotificationProfileArgs.builder()
///                     .enable(true)
///                     .notBeforeTimeout("PT10M")
///                     .build())
///                 .build())
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     diagnosticsProfile: {
///         bootDiagnostics: {
///             enabled: true,
///             storageUri: "http://{existing-storage-account-name}.blob.core.windows.net",
///         },
///     },
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     scheduledEventsPolicy: {
///         scheduledEventsAdditionalPublishingTargets: {
///             eventGridAndResourceGraph: {
///                 enable: true,
///             },
///         },
///         userInitiatedReboot: {
///             automaticallyApprove: true,
///         },
///         userInitiatedRedeploy: {
///             automaticallyApprove: true,
///         },
///     },
///     scheduledEventsProfile: {
///         osImageNotificationProfile: {
///             enable: true,
///             notBeforeTimeout: "PT15M",
///         },
///         terminateNotificationProfile: {
///             enable: true,
///             notBeforeTimeout: "PT10M",
///         },
///     },
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     diagnostics_profile={
///         "boot_diagnostics": {
///             "enabled": True,
///             "storage_uri": "http://{existing-storage-account-name}.blob.core.windows.net",
///         },
///     },
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     scheduled_events_policy={
///         "scheduled_events_additional_publishing_targets": {
///             "event_grid_and_resource_graph": {
///                 "enable": True,
///             },
///         },
///         "user_initiated_reboot": {
///             "automatically_approve": True,
///         },
///         "user_initiated_redeploy": {
///             "automatically_approve": True,
///         },
///     },
///     scheduled_events_profile={
///         "os_image_notification_profile": {
///             "enable": True,
///             "not_before_timeout": "PT15M",
///         },
///         "terminate_notification_profile": {
///             "enable": True,
///             "not_before_timeout": "PT10M",
///         },
///     },
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       diagnosticsProfile:
///         bootDiagnostics:
///           enabled: true
///           storageUri: http://{existing-storage-account-name}.blob.core.windows.net
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       scheduledEventsPolicy:
///         scheduledEventsAdditionalPublishingTargets:
///           eventGridAndResourceGraph:
///             enable: true
///         userInitiatedReboot:
///           automaticallyApprove: true
///         userInitiatedRedeploy:
///           automaticallyApprove: true
///       scheduledEventsProfile:
///         osImageNotificationProfile:
///           enable: true
///           notBeforeTimeout: PT15M
///         terminateNotificationProfile:
///           enable: true
///           notBeforeTimeout: PT10M
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm with a marketplace image plan.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         Plan = new AzureNative.Compute.Inputs.PlanArgs
///         {
///             Name = "windows2016",
///             Product = "windows-data-science-vm",
///             Publisher = "microsoft-ads",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "windows-data-science-vm",
///                 Publisher = "microsoft-ads",
///                 Sku = "windows2016",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			Plan: &compute.PlanArgs{
/// 				Name:      pulumi.String("windows2016"),
/// 				Product:   pulumi.String("windows-data-science-vm"),
/// 				Publisher: pulumi.String("microsoft-ads"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("windows-data-science-vm"),
/// 					Publisher: pulumi.String("microsoft-ads"),
/// 					Sku:       pulumi.String("windows2016"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.PlanArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .plan(PlanArgs.builder()
///                 .name("windows2016")
///                 .product("windows-data-science-vm")
///                 .publisher("microsoft-ads")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("windows-data-science-vm")
///                     .publisher("microsoft-ads")
///                     .sku("windows2016")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     plan: {
///         name: "windows2016",
///         product: "windows-data-science-vm",
///         publisher: "microsoft-ads",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "windows-data-science-vm",
///             publisher: "microsoft-ads",
///             sku: "windows2016",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     plan={
///         "name": "windows2016",
///         "product": "windows-data-science-vm",
///         "publisher": "microsoft-ads",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "windows-data-science-vm",
///             "publisher": "microsoft-ads",
///             "sku": "windows2016",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       plan:
///         name: windows2016
///         product: windows-data-science-vm
///         publisher: microsoft-ads
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: windows-data-science-vm
///           publisher: microsoft-ads
///           sku: windows2016
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm with an extensions time budget.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         DiagnosticsProfile = new AzureNative.Compute.Inputs.DiagnosticsProfileArgs
///         {
///             BootDiagnostics = new AzureNative.Compute.Inputs.BootDiagnosticsArgs
///             {
///                 Enabled = true,
///                 StorageUri = "http://{existing-storage-account-name}.blob.core.windows.net",
///             },
///         },
///         ExtensionsTimeBudget = "PT30M",
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			DiagnosticsProfile: &compute.DiagnosticsProfileArgs{
/// 				BootDiagnostics: &compute.BootDiagnosticsArgs{
/// 					Enabled:    pulumi.Bool(true),
/// 					StorageUri: pulumi.String("http://{existing-storage-account-name}.blob.core.windows.net"),
/// 				},
/// 			},
/// 			ExtensionsTimeBudget: pulumi.String("PT30M"),
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.DiagnosticsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.BootDiagnosticsArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .diagnosticsProfile(DiagnosticsProfileArgs.builder()
///                 .bootDiagnostics(BootDiagnosticsArgs.builder()
///                     .enabled(true)
///                     .storageUri("http://{existing-storage-account-name}.blob.core.windows.net")
///                     .build())
///                 .build())
///             .extensionsTimeBudget("PT30M")
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     diagnosticsProfile: {
///         bootDiagnostics: {
///             enabled: true,
///             storageUri: "http://{existing-storage-account-name}.blob.core.windows.net",
///         },
///     },
///     extensionsTimeBudget: "PT30M",
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     diagnostics_profile={
///         "boot_diagnostics": {
///             "enabled": True,
///             "storage_uri": "http://{existing-storage-account-name}.blob.core.windows.net",
///         },
///     },
///     extensions_time_budget="PT30M",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       diagnosticsProfile:
///         bootDiagnostics:
///           enabled: true
///           storageUri: http://{existing-storage-account-name}.blob.core.windows.net
///       extensionsTimeBudget: PT30M
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm with boot diagnostics.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         DiagnosticsProfile = new AzureNative.Compute.Inputs.DiagnosticsProfileArgs
///         {
///             BootDiagnostics = new AzureNative.Compute.Inputs.BootDiagnosticsArgs
///             {
///                 Enabled = true,
///                 StorageUri = "http://{existing-storage-account-name}.blob.core.windows.net",
///             },
///         },
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			DiagnosticsProfile: &compute.DiagnosticsProfileArgs{
/// 				BootDiagnostics: &compute.BootDiagnosticsArgs{
/// 					Enabled:    pulumi.Bool(true),
/// 					StorageUri: pulumi.String("http://{existing-storage-account-name}.blob.core.windows.net"),
/// 				},
/// 			},
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.DiagnosticsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.BootDiagnosticsArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .diagnosticsProfile(DiagnosticsProfileArgs.builder()
///                 .bootDiagnostics(BootDiagnosticsArgs.builder()
///                     .enabled(true)
///                     .storageUri("http://{existing-storage-account-name}.blob.core.windows.net")
///                     .build())
///                 .build())
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     diagnosticsProfile: {
///         bootDiagnostics: {
///             enabled: true,
///             storageUri: "http://{existing-storage-account-name}.blob.core.windows.net",
///         },
///     },
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     diagnostics_profile={
///         "boot_diagnostics": {
///             "enabled": True,
///             "storage_uri": "http://{existing-storage-account-name}.blob.core.windows.net",
///         },
///     },
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       diagnosticsProfile:
///         bootDiagnostics:
///           enabled: true
///           storageUri: http://{existing-storage-account-name}.blob.core.windows.net
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm with data disks using 'Copy' and 'Restore' options.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D2_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             DataDisks = new[]
///             {
///                 new AzureNative.Compute.Inputs.DataDiskArgs
///                 {
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.Copy,
///                     DiskSizeGB = 1023,
///                     Lun = 0,
///                     SourceResource = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                     {
///                         Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/{existing-snapshot-name}",
///                     },
///                 },
///                 new AzureNative.Compute.Inputs.DataDiskArgs
///                 {
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.Copy,
///                     DiskSizeGB = 1023,
///                     Lun = 1,
///                     SourceResource = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                     {
///                         Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/{existing-disk-name}",
///                     },
///                 },
///                 new AzureNative.Compute.Inputs.DataDiskArgs
///                 {
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.Restore,
///                     DiskSizeGB = 1023,
///                     Lun = 2,
///                     SourceResource = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                     {
///                         Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/{existing-rpc-name}/restorePoints/{existing-rp-name}/diskRestorePoints/{existing-disk-restore-point-name}",
///                     },
///                 },
///             },
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D2_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				DataDisks: compute.DataDiskArray{
/// 					&compute.DataDiskArgs{
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesCopy),
/// 						DiskSizeGB:   pulumi.Int(1023),
/// 						Lun:          pulumi.Int(0),
/// 						SourceResource: &compute.ApiEntityReferenceArgs{
/// 							Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/{existing-snapshot-name}"),
/// 						},
/// 					},
/// 					&compute.DataDiskArgs{
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesCopy),
/// 						DiskSizeGB:   pulumi.Int(1023),
/// 						Lun:          pulumi.Int(1),
/// 						SourceResource: &compute.ApiEntityReferenceArgs{
/// 							Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/{existing-disk-name}"),
/// 						},
/// 					},
/// 					&compute.DataDiskArgs{
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesRestore),
/// 						DiskSizeGB:   pulumi.Int(1023),
/// 						Lun:          pulumi.Int(2),
/// 						SourceResource: &compute.ApiEntityReferenceArgs{
/// 							Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/{existing-rpc-name}/restorePoints/{existing-rp-name}/diskRestorePoints/{existing-disk-restore-point-name}"),
/// 						},
/// 					},
/// 				},
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D2_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .dataDisks(
///                     DataDiskArgs.builder()
///                         .createOption("Copy")
///                         .diskSizeGB(1023)
///                         .lun(0)
///                         .sourceResource(ApiEntityReferenceArgs.builder()
///                             .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/{existing-snapshot-name}")
///                             .build())
///                         .build(),
///                     DataDiskArgs.builder()
///                         .createOption("Copy")
///                         .diskSizeGB(1023)
///                         .lun(1)
///                         .sourceResource(ApiEntityReferenceArgs.builder()
///                             .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/{existing-disk-name}")
///                             .build())
///                         .build(),
///                     DataDiskArgs.builder()
///                         .createOption("Restore")
///                         .diskSizeGB(1023)
///                         .lun(2)
///                         .sourceResource(ApiEntityReferenceArgs.builder()
///                             .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/{existing-rpc-name}/restorePoints/{existing-rp-name}/diskRestorePoints/{existing-disk-restore-point-name}")
///                             .build())
///                         .build())
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D2_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         dataDisks: [
///             {
///                 createOption: azure_native.compute.DiskCreateOptionTypes.Copy,
///                 diskSizeGB: 1023,
///                 lun: 0,
///                 sourceResource: {
///                     id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/{existing-snapshot-name}",
///                 },
///             },
///             {
///                 createOption: azure_native.compute.DiskCreateOptionTypes.Copy,
///                 diskSizeGB: 1023,
///                 lun: 1,
///                 sourceResource: {
///                     id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/{existing-disk-name}",
///                 },
///             },
///             {
///                 createOption: azure_native.compute.DiskCreateOptionTypes.Restore,
///                 diskSizeGB: 1023,
///                 lun: 2,
///                 sourceResource: {
///                     id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/{existing-rpc-name}/restorePoints/{existing-rp-name}/diskRestorePoints/{existing-disk-restore-point-name}",
///                 },
///             },
///         ],
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D2_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "data_disks": [
///             {
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.COPY,
///                 "disk_size_gb": 1023,
///                 "lun": 0,
///                 "source_resource": {
///                     "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/{existing-snapshot-name}",
///                 },
///             },
///             {
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.COPY,
///                 "disk_size_gb": 1023,
///                 "lun": 1,
///                 "source_resource": {
///                     "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/{existing-disk-name}",
///                 },
///             },
///             {
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.RESTORE,
///                 "disk_size_gb": 1023,
///                 "lun": 2,
///                 "source_resource": {
///                     "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/{existing-rpc-name}/restorePoints/{existing-rp-name}/diskRestorePoints/{existing-disk-restore-point-name}",
///                 },
///             },
///         ],
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D2_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         dataDisks:
///           - createOption: Copy
///             diskSizeGB: 1023
///             lun: 0
///             sourceResource:
///               id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/{existing-snapshot-name}
///           - createOption: Copy
///             diskSizeGB: 1023
///             lun: 1
///             sourceResource:
///               id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/{existing-disk-name}
///           - createOption: Restore
///             diskSizeGB: 1023
///             lun: 2
///             sourceResource:
///               id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/{existing-rpc-name}/restorePoints/{existing-rp-name}/diskRestorePoints/{existing-disk-restore-point-name}
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm with empty data disks.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D2_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             DataDisks = new[]
///             {
///                 new AzureNative.Compute.Inputs.DataDiskArgs
///                 {
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.Empty,
///                     DiskSizeGB = 1023,
///                     Lun = 0,
///                 },
///                 new AzureNative.Compute.Inputs.DataDiskArgs
///                 {
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.Empty,
///                     DiskSizeGB = 1023,
///                     Lun = 1,
///                 },
///             },
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D2_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				DataDisks: compute.DataDiskArray{
/// 					&compute.DataDiskArgs{
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesEmpty),
/// 						DiskSizeGB:   pulumi.Int(1023),
/// 						Lun:          pulumi.Int(0),
/// 					},
/// 					&compute.DataDiskArgs{
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesEmpty),
/// 						DiskSizeGB:   pulumi.Int(1023),
/// 						Lun:          pulumi.Int(1),
/// 					},
/// 				},
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D2_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .dataDisks(
///                     DataDiskArgs.builder()
///                         .createOption("Empty")
///                         .diskSizeGB(1023)
///                         .lun(0)
///                         .build(),
///                     DataDiskArgs.builder()
///                         .createOption("Empty")
///                         .diskSizeGB(1023)
///                         .lun(1)
///                         .build())
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D2_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         dataDisks: [
///             {
///                 createOption: azure_native.compute.DiskCreateOptionTypes.Empty,
///                 diskSizeGB: 1023,
///                 lun: 0,
///             },
///             {
///                 createOption: azure_native.compute.DiskCreateOptionTypes.Empty,
///                 diskSizeGB: 1023,
///                 lun: 1,
///             },
///         ],
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D2_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "data_disks": [
///             {
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.EMPTY,
///                 "disk_size_gb": 1023,
///                 "lun": 0,
///             },
///             {
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.EMPTY,
///                 "disk_size_gb": 1023,
///                 "lun": 1,
///             },
///         ],
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D2_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         dataDisks:
///           - createOption: Empty
///             diskSizeGB: 1023
///             lun: 0
///           - createOption: Empty
///             diskSizeGB: 1023
///             lun: 1
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm with ephemeral os disk provisioning in Cache disk using placement property.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_DS1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         Plan = new AzureNative.Compute.Inputs.PlanArgs
///         {
///             Name = "windows2016",
///             Product = "windows-data-science-vm",
///             Publisher = "microsoft-ads",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "windows-data-science-vm",
///                 Publisher = "microsoft-ads",
///                 Sku = "windows2016",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 DiffDiskSettings = new AzureNative.Compute.Inputs.DiffDiskSettingsArgs
///                 {
///                     Option = AzureNative.Compute.DiffDiskOptions.Local,
///                     Placement = AzureNative.Compute.DiffDiskPlacement.CacheDisk,
///                 },
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_DS1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			Plan: &compute.PlanArgs{
/// 				Name:      pulumi.String("windows2016"),
/// 				Product:   pulumi.String("windows-data-science-vm"),
/// 				Publisher: pulumi.String("microsoft-ads"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("windows-data-science-vm"),
/// 					Publisher: pulumi.String("microsoft-ads"),
/// 					Sku:       pulumi.String("windows2016"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadOnly,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					DiffDiskSettings: &compute.DiffDiskSettingsArgs{
/// 						Option:    pulumi.String(compute.DiffDiskOptionsLocal),
/// 						Placement: pulumi.String(compute.DiffDiskPlacementCacheDisk),
/// 					},
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.PlanArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.DiffDiskSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_DS1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .plan(PlanArgs.builder()
///                 .name("windows2016")
///                 .product("windows-data-science-vm")
///                 .publisher("microsoft-ads")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("windows-data-science-vm")
///                     .publisher("microsoft-ads")
///                     .sku("windows2016")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadOnly")
///                     .createOption("FromImage")
///                     .diffDiskSettings(DiffDiskSettingsArgs.builder()
///                         .option("Local")
///                         .placement("CacheDisk")
///                         .build())
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_DS1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     plan: {
///         name: "windows2016",
///         product: "windows-data-science-vm",
///         publisher: "microsoft-ads",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "windows-data-science-vm",
///             publisher: "microsoft-ads",
///             sku: "windows2016",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadOnly,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             diffDiskSettings: {
///                 option: azure_native.compute.DiffDiskOptions.Local,
///                 placement: azure_native.compute.DiffDiskPlacement.CacheDisk,
///             },
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_DS1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     plan={
///         "name": "windows2016",
///         "product": "windows-data-science-vm",
///         "publisher": "microsoft-ads",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "windows-data-science-vm",
///             "publisher": "microsoft-ads",
///             "sku": "windows2016",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_ONLY,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "diff_disk_settings": {
///                 "option": azure_native.compute.DiffDiskOptions.LOCAL,
///                 "placement": azure_native.compute.DiffDiskPlacement.CACHE_DISK,
///             },
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_DS1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       plan:
///         name: windows2016
///         product: windows-data-science-vm
///         publisher: microsoft-ads
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: windows-data-science-vm
///           publisher: microsoft-ads
///           sku: windows2016
///           version: latest
///         osDisk:
///           caching: ReadOnly
///           createOption: FromImage
///           diffDiskSettings:
///             option: Local
///             placement: CacheDisk
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm with ephemeral os disk provisioning in Nvme disk using placement property.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_DS1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         Plan = new AzureNative.Compute.Inputs.PlanArgs
///         {
///             Name = "windows2016",
///             Product = "windows-data-science-vm",
///             Publisher = "microsoft-ads",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "windows-data-science-vm",
///                 Publisher = "microsoft-ads",
///                 Sku = "windows2016",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 DiffDiskSettings = new AzureNative.Compute.Inputs.DiffDiskSettingsArgs
///                 {
///                     Option = AzureNative.Compute.DiffDiskOptions.Local,
///                     Placement = AzureNative.Compute.DiffDiskPlacement.NvmeDisk,
///                 },
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_DS1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			Plan: &compute.PlanArgs{
/// 				Name:      pulumi.String("windows2016"),
/// 				Product:   pulumi.String("windows-data-science-vm"),
/// 				Publisher: pulumi.String("microsoft-ads"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("windows-data-science-vm"),
/// 					Publisher: pulumi.String("microsoft-ads"),
/// 					Sku:       pulumi.String("windows2016"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadOnly,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					DiffDiskSettings: &compute.DiffDiskSettingsArgs{
/// 						Option:    pulumi.String(compute.DiffDiskOptionsLocal),
/// 						Placement: pulumi.String(compute.DiffDiskPlacementNvmeDisk),
/// 					},
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.PlanArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.DiffDiskSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_DS1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .plan(PlanArgs.builder()
///                 .name("windows2016")
///                 .product("windows-data-science-vm")
///                 .publisher("microsoft-ads")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("windows-data-science-vm")
///                     .publisher("microsoft-ads")
///                     .sku("windows2016")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadOnly")
///                     .createOption("FromImage")
///                     .diffDiskSettings(DiffDiskSettingsArgs.builder()
///                         .option("Local")
///                         .placement("NvmeDisk")
///                         .build())
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_DS1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     plan: {
///         name: "windows2016",
///         product: "windows-data-science-vm",
///         publisher: "microsoft-ads",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "windows-data-science-vm",
///             publisher: "microsoft-ads",
///             sku: "windows2016",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadOnly,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             diffDiskSettings: {
///                 option: azure_native.compute.DiffDiskOptions.Local,
///                 placement: azure_native.compute.DiffDiskPlacement.NvmeDisk,
///             },
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_DS1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     plan={
///         "name": "windows2016",
///         "product": "windows-data-science-vm",
///         "publisher": "microsoft-ads",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "windows-data-science-vm",
///             "publisher": "microsoft-ads",
///             "sku": "windows2016",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_ONLY,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "diff_disk_settings": {
///                 "option": azure_native.compute.DiffDiskOptions.LOCAL,
///                 "placement": azure_native.compute.DiffDiskPlacement.NVME_DISK,
///             },
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_DS1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       plan:
///         name: windows2016
///         product: windows-data-science-vm
///         publisher: microsoft-ads
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: windows-data-science-vm
///           publisher: microsoft-ads
///           sku: windows2016
///           version: latest
///         osDisk:
///           caching: ReadOnly
///           createOption: FromImage
///           diffDiskSettings:
///             option: Local
///             placement: NvmeDisk
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm with ephemeral os disk provisioning in Resource disk using placement property.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_DS1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         Plan = new AzureNative.Compute.Inputs.PlanArgs
///         {
///             Name = "windows2016",
///             Product = "windows-data-science-vm",
///             Publisher = "microsoft-ads",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "windows-data-science-vm",
///                 Publisher = "microsoft-ads",
///                 Sku = "windows2016",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 DiffDiskSettings = new AzureNative.Compute.Inputs.DiffDiskSettingsArgs
///                 {
///                     Option = AzureNative.Compute.DiffDiskOptions.Local,
///                     Placement = AzureNative.Compute.DiffDiskPlacement.ResourceDisk,
///                 },
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_DS1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			Plan: &compute.PlanArgs{
/// 				Name:      pulumi.String("windows2016"),
/// 				Product:   pulumi.String("windows-data-science-vm"),
/// 				Publisher: pulumi.String("microsoft-ads"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("windows-data-science-vm"),
/// 					Publisher: pulumi.String("microsoft-ads"),
/// 					Sku:       pulumi.String("windows2016"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadOnly,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					DiffDiskSettings: &compute.DiffDiskSettingsArgs{
/// 						Option:    pulumi.String(compute.DiffDiskOptionsLocal),
/// 						Placement: pulumi.String(compute.DiffDiskPlacementResourceDisk),
/// 					},
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.PlanArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.DiffDiskSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_DS1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .plan(PlanArgs.builder()
///                 .name("windows2016")
///                 .product("windows-data-science-vm")
///                 .publisher("microsoft-ads")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("windows-data-science-vm")
///                     .publisher("microsoft-ads")
///                     .sku("windows2016")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadOnly")
///                     .createOption("FromImage")
///                     .diffDiskSettings(DiffDiskSettingsArgs.builder()
///                         .option("Local")
///                         .placement("ResourceDisk")
///                         .build())
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_DS1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     plan: {
///         name: "windows2016",
///         product: "windows-data-science-vm",
///         publisher: "microsoft-ads",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "windows-data-science-vm",
///             publisher: "microsoft-ads",
///             sku: "windows2016",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadOnly,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             diffDiskSettings: {
///                 option: azure_native.compute.DiffDiskOptions.Local,
///                 placement: azure_native.compute.DiffDiskPlacement.ResourceDisk,
///             },
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_DS1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     plan={
///         "name": "windows2016",
///         "product": "windows-data-science-vm",
///         "publisher": "microsoft-ads",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "windows-data-science-vm",
///             "publisher": "microsoft-ads",
///             "sku": "windows2016",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_ONLY,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "diff_disk_settings": {
///                 "option": azure_native.compute.DiffDiskOptions.LOCAL,
///                 "placement": azure_native.compute.DiffDiskPlacement.RESOURCE_DISK,
///             },
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_DS1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       plan:
///         name: windows2016
///         product: windows-data-science-vm
///         publisher: microsoft-ads
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: windows-data-science-vm
///           publisher: microsoft-ads
///           sku: windows2016
///           version: latest
///         osDisk:
///           caching: ReadOnly
///           createOption: FromImage
///           diffDiskSettings:
///             option: Local
///             placement: ResourceDisk
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm with ephemeral os disk.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_DS1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         Plan = new AzureNative.Compute.Inputs.PlanArgs
///         {
///             Name = "windows2016",
///             Product = "windows-data-science-vm",
///             Publisher = "microsoft-ads",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "windows-data-science-vm",
///                 Publisher = "microsoft-ads",
///                 Sku = "windows2016",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 DiffDiskSettings = new AzureNative.Compute.Inputs.DiffDiskSettingsArgs
///                 {
///                     Option = AzureNative.Compute.DiffDiskOptions.Local,
///                 },
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_DS1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			Plan: &compute.PlanArgs{
/// 				Name:      pulumi.String("windows2016"),
/// 				Product:   pulumi.String("windows-data-science-vm"),
/// 				Publisher: pulumi.String("microsoft-ads"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("windows-data-science-vm"),
/// 					Publisher: pulumi.String("microsoft-ads"),
/// 					Sku:       pulumi.String("windows2016"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadOnly,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					DiffDiskSettings: &compute.DiffDiskSettingsArgs{
/// 						Option: pulumi.String(compute.DiffDiskOptionsLocal),
/// 					},
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.PlanArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.DiffDiskSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_DS1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .plan(PlanArgs.builder()
///                 .name("windows2016")
///                 .product("windows-data-science-vm")
///                 .publisher("microsoft-ads")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("windows-data-science-vm")
///                     .publisher("microsoft-ads")
///                     .sku("windows2016")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadOnly")
///                     .createOption("FromImage")
///                     .diffDiskSettings(DiffDiskSettingsArgs.builder()
///                         .option("Local")
///                         .build())
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_DS1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     plan: {
///         name: "windows2016",
///         product: "windows-data-science-vm",
///         publisher: "microsoft-ads",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "windows-data-science-vm",
///             publisher: "microsoft-ads",
///             sku: "windows2016",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadOnly,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             diffDiskSettings: {
///                 option: azure_native.compute.DiffDiskOptions.Local,
///             },
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_DS1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     plan={
///         "name": "windows2016",
///         "product": "windows-data-science-vm",
///         "publisher": "microsoft-ads",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "windows-data-science-vm",
///             "publisher": "microsoft-ads",
///             "sku": "windows2016",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_ONLY,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "diff_disk_settings": {
///                 "option": azure_native.compute.DiffDiskOptions.LOCAL,
///             },
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_DS1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       plan:
///         name: windows2016
///         product: windows-data-science-vm
///         publisher: microsoft-ads
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: windows-data-science-vm
///           publisher: microsoft-ads
///           sku: windows2016
///           version: latest
///         osDisk:
///           caching: ReadOnly
///           createOption: FromImage
///           diffDiskSettings:
///             option: Local
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm with managed boot diagnostics.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         DiagnosticsProfile = new AzureNative.Compute.Inputs.DiagnosticsProfileArgs
///         {
///             BootDiagnostics = new AzureNative.Compute.Inputs.BootDiagnosticsArgs
///             {
///                 Enabled = true,
///             },
///         },
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			DiagnosticsProfile: &compute.DiagnosticsProfileArgs{
/// 				BootDiagnostics: &compute.BootDiagnosticsArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.DiagnosticsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.BootDiagnosticsArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .diagnosticsProfile(DiagnosticsProfileArgs.builder()
///                 .bootDiagnostics(BootDiagnosticsArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     diagnosticsProfile: {
///         bootDiagnostics: {
///             enabled: true,
///         },
///     },
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     diagnostics_profile={
///         "boot_diagnostics": {
///             "enabled": True,
///         },
///     },
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       diagnosticsProfile:
///         bootDiagnostics:
///           enabled: true
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm with password authentication.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm with premium storage.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 Sku = "2016-Datacenter",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Premium_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 					Sku:       pulumi.String("2016-Datacenter"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Premium_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sku("2016-Datacenter")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Premium_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sku: "2016-Datacenter",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Premium_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "sku": "2016-Datacenter",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.PREMIUM_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sku: 2016-Datacenter
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Premium_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm with ssh authentication.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_D1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///             LinuxConfiguration = new AzureNative.Compute.Inputs.LinuxConfigurationArgs
///             {
///                 DisablePasswordAuthentication = true,
///                 Ssh = new AzureNative.Compute.Inputs.SshConfigurationArgs
///                 {
///                     PublicKeys = new[]
///                     {
///                         new AzureNative.Compute.Inputs.SshPublicKeyArgs
///                         {
///                             KeyData = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeClRAk2ipUs/l5voIsDC5q9RI+YSRd1Bvd/O+axgY4WiBzG+4FwJWZm/mLLe5DoOdHQwmU2FrKXZSW4w2sYE70KeWnrFViCOX5MTVvJgPE8ClugNl8RWth/tU849DvM9sT7vFgfVSHcAS2yDRyDlueii+8nF2ym8XWAPltFVCyLHRsyBp5YPqK8JFYIa1eybKsY3hEAxRCA+/7bq8et+Gj3coOsuRmrehav7rE6N12Pb80I6ofa6SM5XNYq4Xk0iYNx7R3kdz0Jj9XgZYWjAHjJmT0gTRoOnt6upOuxK7xI/ykWrllgpXrCPu3Ymz+c+ujaqcxDopnAl2lmf69/J1",
///                             Path = "/home/{your-username}/.ssh/authorized_keys",
///                         },
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "{image_offer}",
///                 Publisher = "{image_publisher}",
///                 Sku = "{image_sku}",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_D1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 				LinuxConfiguration: &compute.LinuxConfigurationArgs{
/// 					DisablePasswordAuthentication: pulumi.Bool(true),
/// 					Ssh: &compute.SshConfigurationArgs{
/// 						PublicKeys: compute.SshPublicKeyTypeArray{
/// 							&compute.SshPublicKeyTypeArgs{
/// 								KeyData: pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeClRAk2ipUs/l5voIsDC5q9RI+YSRd1Bvd/O+axgY4WiBzG+4FwJWZm/mLLe5DoOdHQwmU2FrKXZSW4w2sYE70KeWnrFViCOX5MTVvJgPE8ClugNl8RWth/tU849DvM9sT7vFgfVSHcAS2yDRyDlueii+8nF2ym8XWAPltFVCyLHRsyBp5YPqK8JFYIa1eybKsY3hEAxRCA+/7bq8et+Gj3coOsuRmrehav7rE6N12Pb80I6ofa6SM5XNYq4Xk0iYNx7R3kdz0Jj9XgZYWjAHjJmT0gTRoOnt6upOuxK7xI/ykWrllgpXrCPu3Ymz+c+ujaqcxDopnAl2lmf69/J1"),
/// 								Path:    pulumi.String("/home/{your-username}/.ssh/authorized_keys"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("{image_offer}"),
/// 					Publisher: pulumi.String("{image_publisher}"),
/// 					Sku:       pulumi.String("{image_sku}"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadWrite,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.LinuxConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.SshConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_D1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .linuxConfiguration(LinuxConfigurationArgs.builder()
///                     .disablePasswordAuthentication(true)
///                     .ssh(SshConfigurationArgs.builder()
///                         .publicKeys(SshPublicKeyArgs.builder()
///                             .keyData("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeClRAk2ipUs/l5voIsDC5q9RI+YSRd1Bvd/O+axgY4WiBzG+4FwJWZm/mLLe5DoOdHQwmU2FrKXZSW4w2sYE70KeWnrFViCOX5MTVvJgPE8ClugNl8RWth/tU849DvM9sT7vFgfVSHcAS2yDRyDlueii+8nF2ym8XWAPltFVCyLHRsyBp5YPqK8JFYIa1eybKsY3hEAxRCA+/7bq8et+Gj3coOsuRmrehav7rE6N12Pb80I6ofa6SM5XNYq4Xk0iYNx7R3kdz0Jj9XgZYWjAHjJmT0gTRoOnt6upOuxK7xI/ykWrllgpXrCPu3Ymz+c+ujaqcxDopnAl2lmf69/J1")
///                             .path("/home/{your-username}/.ssh/authorized_keys")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("{image_offer}")
///                     .publisher("{image_publisher}")
///                     .sku("{image_sku}")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadWrite")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_D1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///         linuxConfiguration: {
///             disablePasswordAuthentication: true,
///             ssh: {
///                 publicKeys: [{
///                     keyData: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeClRAk2ipUs/l5voIsDC5q9RI+YSRd1Bvd/O+axgY4WiBzG+4FwJWZm/mLLe5DoOdHQwmU2FrKXZSW4w2sYE70KeWnrFViCOX5MTVvJgPE8ClugNl8RWth/tU849DvM9sT7vFgfVSHcAS2yDRyDlueii+8nF2ym8XWAPltFVCyLHRsyBp5YPqK8JFYIa1eybKsY3hEAxRCA+/7bq8et+Gj3coOsuRmrehav7rE6N12Pb80I6ofa6SM5XNYq4Xk0iYNx7R3kdz0Jj9XgZYWjAHjJmT0gTRoOnt6upOuxK7xI/ykWrllgpXrCPu3Ymz+c+ujaqcxDopnAl2lmf69/J1",
///                     path: "/home/{your-username}/.ssh/authorized_keys",
///                 }],
///             },
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "{image_offer}",
///             publisher: "{image_publisher}",
///             sku: "{image_sku}",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadWrite,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_D1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///         "linux_configuration": {
///             "disable_password_authentication": True,
///             "ssh": {
///                 "public_keys": [{
///                     "key_data": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeClRAk2ipUs/l5voIsDC5q9RI+YSRd1Bvd/O+axgY4WiBzG+4FwJWZm/mLLe5DoOdHQwmU2FrKXZSW4w2sYE70KeWnrFViCOX5MTVvJgPE8ClugNl8RWth/tU849DvM9sT7vFgfVSHcAS2yDRyDlueii+8nF2ym8XWAPltFVCyLHRsyBp5YPqK8JFYIa1eybKsY3hEAxRCA+/7bq8et+Gj3coOsuRmrehav7rE6N12Pb80I6ofa6SM5XNYq4Xk0iYNx7R3kdz0Jj9XgZYWjAHjJmT0gTRoOnt6upOuxK7xI/ykWrllgpXrCPu3Ymz+c+ujaqcxDopnAl2lmf69/J1",
///                     "path": "/home/{your-username}/.ssh/authorized_keys",
///                 }],
///             },
///         },
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "{image_offer}",
///             "publisher": "{image_publisher}",
///             "sku": "{image_sku}",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_WRITE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       hardwareProfile:
///         vmSize: Standard_D1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminUsername: '{your-username}'
///         computerName: myVM
///         linuxConfiguration:
///           disablePasswordAuthentication: true
///           ssh:
///             publicKeys:
///               - keyData: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeClRAk2ipUs/l5voIsDC5q9RI+YSRd1Bvd/O+axgY4WiBzG+4FwJWZm/mLLe5DoOdHQwmU2FrKXZSW4w2sYE70KeWnrFViCOX5MTVvJgPE8ClugNl8RWth/tU849DvM9sT7vFgfVSHcAS2yDRyDlueii+8nF2ym8XWAPltFVCyLHRsyBp5YPqK8JFYIa1eybKsY3hEAxRCA+/7bq8et+Gj3coOsuRmrehav7rE6N12Pb80I6ofa6SM5XNYq4Xk0iYNx7R3kdz0Jj9XgZYWjAHjJmT0gTRoOnt6upOuxK7xI/ykWrllgpXrCPu3Ymz+c+ujaqcxDopnAl2lmf69/J1
///                 path: /home/{your-username}/.ssh/authorized_keys
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: '{image_offer}'
///           publisher: '{image_publisher}'
///           sku: '{image_sku}'
///           version: latest
///         osDisk:
///           caching: ReadWrite
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a VM with capacity reservation
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.Compute.VirtualMachine("virtualMachine", new()
///     {
///         CapacityReservation = new AzureNative.Compute.Inputs.CapacityReservationProfileArgs
///         {
///             CapacityReservationGroup = new AzureNative.Compute.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/CapacityReservationGroups/{crgName}",
///             },
///         },
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Standard_DS1_v2,
///         },
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "{your-password}",
///             AdminUsername = "{your-username}",
///             ComputerName = "myVM",
///         },
///         Plan = new AzureNative.Compute.Inputs.PlanArgs
///         {
///             Name = "windows2016",
///             Product = "windows-data-science-vm",
///             Publisher = "microsoft-ads",
///         },
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Offer = "windows-data-science-vm",
///                 Publisher = "microsoft-ads",
///                 Sku = "windows2016",
///                 Version = "latest",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "myVMosdisk",
///             },
///         },
///         VmName = "myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachine(ctx, "virtualMachine", &compute.VirtualMachineArgs{
/// 			CapacityReservation: &compute.CapacityReservationProfileArgs{
/// 				CapacityReservationGroup: &compute.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/CapacityReservationGroups/{crgName}"),
/// 				},
/// 			},
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Standard_DS1_v2),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						Id:      pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}"),
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword: pulumi.String("{your-password}"),
/// 				AdminUsername: pulumi.String("{your-username}"),
/// 				ComputerName:  pulumi.String("myVM"),
/// 			},
/// 			Plan: &compute.PlanArgs{
/// 				Name:      pulumi.String("windows2016"),
/// 				Product:   pulumi.String("windows-data-science-vm"),
/// 				Publisher: pulumi.String("microsoft-ads"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Offer:     pulumi.String("windows-data-science-vm"),
/// 					Publisher: pulumi.String("microsoft-ads"),
/// 					Sku:       pulumi.String("windows2016"),
/// 					Version:   pulumi.String("latest"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesReadOnly,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name: pulumi.String("myVMosdisk"),
/// 				},
/// 			},
/// 			VmName: pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachine;
/// import com.pulumi.azurenative.compute.VirtualMachineArgs;
/// import com.pulumi.azurenative.compute.inputs.CapacityReservationProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.PlanArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.ManagedDiskParametersArgs;
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
///             .capacityReservation(CapacityReservationProfileArgs.builder()
///                 .capacityReservationGroup(SubResourceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/CapacityReservationGroups/{crgName}")
///                     .build())
///                 .build())
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Standard_DS1_v2")
///                 .build())
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}")
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("{your-password}")
///                 .adminUsername("{your-username}")
///                 .computerName("myVM")
///                 .build())
///             .plan(PlanArgs.builder()
///                 .name("windows2016")
///                 .product("windows-data-science-vm")
///                 .publisher("microsoft-ads")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(StorageProfileArgs.builder()
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("windows-data-science-vm")
///                     .publisher("microsoft-ads")
///                     .sku("windows2016")
///                     .version("latest")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("ReadOnly")
///                     .createOption("FromImage")
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("myVMosdisk")
///                     .build())
///                 .build())
///             .vmName("myVM")
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
/// const virtualMachine = new azure_native.compute.VirtualMachine("virtualMachine", {
///     capacityReservation: {
///         capacityReservationGroup: {
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/CapacityReservationGroups/{crgName}",
///         },
///     },
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Standard_DS1_v2,
///     },
///     location: "westus",
///     networkProfile: {
///         networkInterfaces: [{
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "{your-password}",
///         adminUsername: "{your-username}",
///         computerName: "myVM",
///     },
///     plan: {
///         name: "windows2016",
///         product: "windows-data-science-vm",
///         publisher: "microsoft-ads",
///     },
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         imageReference: {
///             offer: "windows-data-science-vm",
///             publisher: "microsoft-ads",
///             sku: "windows2016",
///             version: "latest",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.ReadOnly,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             managedDisk: {
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "myVMosdisk",
///         },
///     },
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.compute.VirtualMachine("virtualMachine",
///     capacity_reservation={
///         "capacity_reservation_group": {
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/CapacityReservationGroups/{crgName}",
///         },
///     },
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.STANDARD_DS1_V2,
///     },
///     location="westus",
///     network_profile={
///         "network_interfaces": [{
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}",
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "{your-password}",
///         "admin_username": "{your-username}",
///         "computer_name": "myVM",
///     },
///     plan={
///         "name": "windows2016",
///         "product": "windows-data-science-vm",
///         "publisher": "microsoft-ads",
///     },
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "image_reference": {
///             "offer": "windows-data-science-vm",
///             "publisher": "microsoft-ads",
///             "sku": "windows2016",
///             "version": "latest",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.READ_ONLY,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "managed_disk": {
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "myVMosdisk",
///         },
///     },
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:compute:VirtualMachine
///     properties:
///       capacityReservation:
///         capacityReservationGroup:
///           id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/CapacityReservationGroups/{crgName}
///       hardwareProfile:
///         vmSize: Standard_DS1_v2
///       location: westus
///       networkProfile:
///         networkInterfaces:
///           - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/{existing-nic-name}
///             primary: true
///       osProfile:
///         adminPassword: '{your-password}'
///         adminUsername: '{your-username}'
///         computerName: myVM
///       plan:
///         name: windows2016
///         product: windows-data-science-vm
///         publisher: microsoft-ads
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         imageReference:
///           offer: windows-data-science-vm
///           publisher: microsoft-ads
///           sku: windows2016
///           version: latest
///         osDisk:
///           caching: ReadOnly
///           createOption: FromImage
///           managedDisk:
///             storageAccountType: Standard_LRS
///           name: myVMosdisk
///       vmName: myVM
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
/// $ pulumi import azure-native:compute:VirtualMachine myVM /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}
/// ```
class VirtualMachine extends pulumi.CustomResource {
  /// Specifies additional capabilities enabled or disabled on the virtual machine.
  late final pulumi.Output<AdditionalCapabilitiesResponse?>
  additionalCapabilities;

  /// Specifies the gallery applications that should be made available to the VM/VMSS.
  late final pulumi.Output<ApplicationProfileResponse?> applicationProfile;

  /// Specifies information about the availability set that the virtual machine should be assigned to. Virtual machines specified in the same availability set are allocated to different nodes to maximize availability. For more information about availability sets, see [Availability sets overview](https://docs.microsoft.com/azure/virtual-machines/availability-set-overview). For more information on Azure planned maintenance, see [Maintenance and updates for Virtual Machines in Azure](https://docs.microsoft.com/azure/virtual-machines/maintenance-and-updates). Currently, a VM can only be added to availability set at creation time. The availability set to which the VM is being added should be under the same resource group as the availability set resource. An existing VM cannot be added to an availability set. This property cannot exist along with a non-null properties.virtualMachineScaleSet reference.
  late final pulumi.Output<SubResourceResponse?> availabilitySet;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Specifies the billing related details of a Azure Spot virtual machine. Minimum api-version: 2019-03-01.
  late final pulumi.Output<BillingProfileResponse?> billingProfile;

  /// Specifies information about the capacity reservation that is used to allocate virtual machine. Minimum api-version: 2021-04-01.
  late final pulumi.Output<CapacityReservationProfileResponse?>
  capacityReservation;

  /// Specifies the boot diagnostic settings state. Minimum api-version: 2015-06-15.
  late final pulumi.Output<DiagnosticsProfileResponse?> diagnosticsProfile;

  /// Etag is property returned in Create/Update/Get response of the VM, so that customer can supply it in the header to ensure optimistic updates.
  late final pulumi.Output<String> etag;

  /// Specifies the eviction policy for the Azure Spot virtual machine and Azure Spot scale set. For Azure Spot virtual machines, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2019-03-01. For Azure Spot scale sets, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2017-10-30-preview.
  late final pulumi.Output<String?> evictionPolicy;

  /// The extended location of the Virtual Machine.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. The default value is 90 minutes (PT1H30M). Minimum api-version: 2020-06-01.
  late final pulumi.Output<String?> extensionsTimeBudget;

  /// Specifies the hardware settings for the virtual machine.
  late final pulumi.Output<HardwareProfileResponse?> hardwareProfile;

  /// Specifies information about the dedicated host that the virtual machine resides in. Minimum api-version: 2018-10-01.
  late final pulumi.Output<SubResourceResponse?> host;

  /// Specifies information about the dedicated host group that the virtual machine resides in. **Note:** User cannot specify both host and hostGroup properties. Minimum api-version: 2020-06-01.
  late final pulumi.Output<SubResourceResponse?> hostGroup;

  /// The identity of the virtual machine, if configured.
  late final pulumi.Output<VirtualMachineIdentityResponse?> identity;

  /// The virtual machine instance view.
  late final pulumi.Output<VirtualMachineInstanceViewResponse> instanceView;

  /// Specifies that the image or disk that is being used was licensed on-premises. &lt;br&gt;&lt;br&gt; Possible values for Windows Server operating system are: &lt;br&gt;&lt;br&gt; Windows_Client &lt;br&gt;&lt;br&gt; Windows_Server &lt;br&gt;&lt;br&gt; Possible values for Linux Server operating system are: &lt;br&gt;&lt;br&gt; RHEL_BYOS (for RHEL) &lt;br&gt;&lt;br&gt; SLES_BYOS (for SUSE) &lt;br&gt;&lt;br&gt; For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) &lt;br&gt;&lt;br&gt; [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) &lt;br&gt;&lt;br&gt; Minimum api-version: 2015-06-15
  late final pulumi.Output<String?> licenseType;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// ManagedBy is set to Virtual Machine Scale Set(VMSS) flex ARM resourceID, if the VM is part of the VMSS. This property is used by platform for internal resource group delete optimization.
  late final pulumi.Output<String> managedBy;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Specifies the network interfaces of the virtual machine.
  late final pulumi.Output<NetworkProfileResponse?> networkProfile;

  /// Specifies the operating system settings used while creating the virtual machine. Some of the settings cannot be changed once VM is provisioned.
  late final pulumi.Output<OSProfileResponse?> osProfile;

  /// Placement section specifies the user-defined constraints for virtual machine hardware placement. This property cannot be changed once VM is provisioned. Minimum api-version: 2024-11-01.
  late final pulumi.Output<PlacementResponse?> placement;

  /// Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started -&gt;**. Enter any required information and then click **Save**.
  late final pulumi.Output<PlanResponse?> plan;

  /// Specifies the scale set logical fault domain into which the Virtual Machine will be created. By default, the Virtual Machine will by automatically assigned to a fault domain that best maintains balance across available fault domains. This is applicable only if the 'virtualMachineScaleSet' property of this Virtual Machine is set. The Virtual Machine Scale Set that is referenced, must have 'platformFaultDomainCount' greater than 1. This property cannot be updated once the Virtual Machine is created. Fault domain assignment can be viewed in the Virtual Machine Instance View. Minimum api‐version: 2020‐12‐01.
  late final pulumi.Output<int?> platformFaultDomain;

  /// Specifies the priority for the virtual machine. Minimum api-version: 2019-03-01
  late final pulumi.Output<String?> priority;

  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;

  /// Specifies information about the proximity placement group that the virtual machine should be assigned to. Minimum api-version: 2018-04-01.
  late final pulumi.Output<SubResourceResponse?> proximityPlacementGroup;

  /// The virtual machine child extension resources.
  late final pulumi.Output<List<Map<String, dynamic>>> resources;

  /// Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations for the virtual machine.
  late final pulumi.Output<ScheduledEventsPolicyResponse?>
  scheduledEventsPolicy;

  /// Specifies Scheduled Event related configurations.
  late final pulumi.Output<ScheduledEventsProfileResponse?>
  scheduledEventsProfile;

  /// Specifies the Security related profile settings for the virtual machine.
  late final pulumi.Output<SecurityProfileResponse?> securityProfile;

  /// Specifies the storage settings for the virtual machine disks.
  late final pulumi.Output<StorageProfileResponse?> storageProfile;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Specifies the time at which the Virtual Machine resource was created. Minimum api-version: 2021-11-01.
  late final pulumi.Output<String> timeCreated;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// UserData for the VM, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum api-version: 2021-03-01.
  late final pulumi.Output<String?> userData;

  /// Specifies information about the virtual machine scale set that the virtual machine should be assigned to. Virtual machines specified in the same virtual machine scale set are allocated to different nodes to maximize availability. Currently, a VM can only be added to virtual machine scale set at creation time. An existing VM cannot be added to a virtual machine scale set. This property cannot exist along with a non-null properties.availabilitySet reference. Minimum api‐version: 2019‐03‐01.
  late final pulumi.Output<SubResourceResponse?> virtualMachineScaleSet;

  /// Specifies the VM unique ID which is a 128-bits identifier that is encoded and stored in all Azure IaaS VMs SMBIOS and can be read using platform BIOS commands.
  late final pulumi.Output<String> vmId;

  /// The availability zones.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [VirtualMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachine]. {@macro pulumi_compute_virtual_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachine(
    String name, {
    VirtualMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:compute:VirtualMachine',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalCapabilities = registerOutput<AdditionalCapabilitiesResponse?>(
      'additionalCapabilities',
    );
    applicationProfile = registerOutput<ApplicationProfileResponse?>(
      'applicationProfile',
    );
    availabilitySet = registerOutput<SubResourceResponse?>('availabilitySet');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    billingProfile = registerOutput<BillingProfileResponse?>('billingProfile');
    capacityReservation = registerOutput<CapacityReservationProfileResponse?>(
      'capacityReservation',
    );
    diagnosticsProfile = registerOutput<DiagnosticsProfileResponse?>(
      'diagnosticsProfile',
    );
    etag = registerOutput<String>('etag');
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
    );
    extensionsTimeBudget = registerOutput<String?>('extensionsTimeBudget');
    hardwareProfile = registerOutput<HardwareProfileResponse?>(
      'hardwareProfile',
    );
    host = registerOutput<SubResourceResponse?>('host');
    hostGroup = registerOutput<SubResourceResponse?>('hostGroup');
    identity = registerOutput<VirtualMachineIdentityResponse?>('identity');
    instanceView = registerOutput<VirtualMachineInstanceViewResponse>(
      'instanceView',
    );
    licenseType = registerOutput<String?>('licenseType');
    location = registerOutput<String>('location');
    managedBy = registerOutput<String>('managedBy');
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<NetworkProfileResponse?>('networkProfile');
    osProfile = registerOutput<OSProfileResponse?>('osProfile');
    placement = registerOutput<PlacementResponse?>('placement');
    plan = registerOutput<PlanResponse?>('plan');
    platformFaultDomain = registerOutput<int?>('platformFaultDomain');
    priority = registerOutput<String?>('priority');
    provisioningState = registerOutput<String>('provisioningState');
    proximityPlacementGroup = registerOutput<SubResourceResponse?>(
      'proximityPlacementGroup',
    );
    resources = registerOutput<List<Map<String, dynamic>>>('resources');
    scheduledEventsPolicy = registerOutput<ScheduledEventsPolicyResponse?>(
      'scheduledEventsPolicy',
    );
    scheduledEventsProfile = registerOutput<ScheduledEventsProfileResponse?>(
      'scheduledEventsProfile',
    );
    securityProfile = registerOutput<SecurityProfileResponse?>(
      'securityProfile',
    );
    storageProfile = registerOutput<StorageProfileResponse?>('storageProfile');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    timeCreated = registerOutput<String>('timeCreated');
    type = registerOutput<String>('type');
    userData = registerOutput<String?>('userData');
    virtualMachineScaleSet = registerOutput<SubResourceResponse?>(
      'virtualMachineScaleSet',
    );
    vmId = registerOutput<String>('vmId');
    zones = registerOutput<List<String>?>('zones');
  }
}
