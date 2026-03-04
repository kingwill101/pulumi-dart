import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_capabilities_response.dart';
import 'automatic_repairs_policy_response.dart';
import 'extended_location_response.dart';
import 'plan_response.dart';
import 'priority_mix_policy_response.dart';
import 'resiliency_policy_response.dart';
import 'scale_in_policy_response.dart';
import 'scheduled_events_policy_response.dart';
import 'sku_profile_response.dart';
import 'sku_response.dart';
import 'spot_restore_policy_response.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';
import 'upgrade_policy_response.dart';
import 'virtual_machine_scale_set_args.dart';
import 'virtual_machine_scale_set_identity_response.dart';
import 'virtual_machine_scale_set_vmprofile_response.dart';

/// Describes a Virtual Machine Scale Set.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a VMSS with an extension that has suppressFailures enabled
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             DiagnosticsProfile = new AzureNative.Compute.Inputs.DiagnosticsProfileArgs
///             {
///                 BootDiagnostics = new AzureNative.Compute.Inputs.BootDiagnosticsArgs
///                 {
///                     Enabled = true,
///                     StorageUri = "http://{existing-storage-account-name}.blob.core.windows.net",
///                 },
///             },
///             ExtensionProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetExtensionProfileArgs
///             {
///                 Extensions = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetExtensionArgs
///                     {
///                         AutoUpgradeMinorVersion = false,
///                         Name = "{extension-name}",
///                         Publisher = "{extension-Publisher}",
///                         Settings = null,
///                         SuppressFailures = true,
///                         Type = "{extension-Type}",
///                         TypeHandlerVersion = "{handler-version}",
///                     },
///                 },
///             },
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				DiagnosticsProfile: &compute.DiagnosticsProfileArgs{
/// 					BootDiagnostics: &compute.BootDiagnosticsArgs{
/// 						Enabled:    pulumi.Bool(true),
/// 						StorageUri: pulumi.String("http://{existing-storage-account-name}.blob.core.windows.net"),
/// 					},
/// 				},
/// 				ExtensionProfile: &compute.VirtualMachineScaleSetExtensionProfileArgs{
/// 					Extensions: compute.VirtualMachineScaleSetExtensionTypeArray{
/// 						&compute.VirtualMachineScaleSetExtensionTypeArgs{
/// 							AutoUpgradeMinorVersion: pulumi.Bool(false),
/// 							Name:                    pulumi.String("{extension-name}"),
/// 							Publisher:               pulumi.String("{extension-Publisher}"),
/// 							Settings:                pulumi.Any(map[string]interface{}{}),
/// 							SuppressFailures:        pulumi.Bool(true),
/// 							Type:                    pulumi.String("{extension-Type}"),
/// 							TypeHandlerVersion:      pulumi.String("{handler-version}"),
/// 						},
/// 					},
/// 				},
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.DiagnosticsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.BootDiagnosticsArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetExtensionProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .diagnosticsProfile(DiagnosticsProfileArgs.builder()
///                     .bootDiagnostics(BootDiagnosticsArgs.builder()
///                         .enabled(true)
///                         .storageUri("http://{existing-storage-account-name}.blob.core.windows.net")
///                         .build())
///                     .build())
///                 .extensionProfile(VirtualMachineScaleSetExtensionProfileArgs.builder()
///                     .extensions(VirtualMachineScaleSetExtensionArgs.builder()
///                         .autoUpgradeMinorVersion(false)
///                         .name("{extension-name}")
///                         .publisher("{extension-Publisher}")
///                         .settings(Map.ofEntries(
///                         ))
///                         .suppressFailures(true)
///                         .type("{extension-Type}")
///                         .typeHandlerVersion("{handler-version}")
///                         .build())
///                     .build())
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         diagnosticsProfile: {
///             bootDiagnostics: {
///                 enabled: true,
///                 storageUri: "http://{existing-storage-account-name}.blob.core.windows.net",
///             },
///         },
///         extensionProfile: {
///             extensions: [{
///                 autoUpgradeMinorVersion: false,
///                 name: "{extension-name}",
///                 publisher: "{extension-Publisher}",
///                 settings: {},
///                 suppressFailures: true,
///                 type: "{extension-Type}",
///                 typeHandlerVersion: "{handler-version}",
///             }],
///         },
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "diagnostics_profile": {
///             "boot_diagnostics": {
///                 "enabled": True,
///                 "storage_uri": "http://{existing-storage-account-name}.blob.core.windows.net",
///             },
///         },
///         "extension_profile": {
///             "extensions": [{
///                 "auto_upgrade_minor_version": False,
///                 "name": "{extension-name}",
///                 "publisher": "{extension-Publisher}",
///                 "settings": {},
///                 "suppress_failures": True,
///                 "type": "{extension-Type}",
///                 "type_handler_version": "{handler-version}",
///             }],
///         },
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         diagnosticsProfile:
///           bootDiagnostics:
///             enabled: true
///             storageUri: http://{existing-storage-account-name}.blob.core.windows.net
///         extensionProfile:
///           extensions:
///             - autoUpgradeMinorVersion: false
///               name: '{extension-name}'
///               publisher: '{extension-Publisher}'
///               settings: {}
///               suppressFailures: true
///               type: '{extension-Type}'
///               typeHandlerVersion: '{handler-version}'
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a VMSS with an extension with protectedSettingsFromKeyVault
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             DiagnosticsProfile = new AzureNative.Compute.Inputs.DiagnosticsProfileArgs
///             {
///                 BootDiagnostics = new AzureNative.Compute.Inputs.BootDiagnosticsArgs
///                 {
///                     Enabled = true,
///                     StorageUri = "http://{existing-storage-account-name}.blob.core.windows.net",
///                 },
///             },
///             ExtensionProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetExtensionProfileArgs
///             {
///                 Extensions = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetExtensionArgs
///                     {
///                         AutoUpgradeMinorVersion = false,
///                         Name = "{extension-name}",
///                         ProtectedSettingsFromKeyVault = new AzureNative.Compute.Inputs.KeyVaultSecretReferenceArgs
///                         {
///                             SecretUrl = "https://kvName.vault.azure.net/secrets/secretName/79b88b3a6f5440ffb2e73e44a0db712e",
///                             SourceVault = new AzureNative.Compute.Inputs.SubResourceArgs
///                             {
///                                 Id = "/subscriptions/a53f7094-a16c-47af-abe4-b05c05d0d79a/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/kvName",
///                             },
///                         },
///                         Publisher = "{extension-Publisher}",
///                         Settings = null,
///                         Type = "{extension-Type}",
///                         TypeHandlerVersion = "{handler-version}",
///                     },
///                 },
///             },
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				DiagnosticsProfile: &compute.DiagnosticsProfileArgs{
/// 					BootDiagnostics: &compute.BootDiagnosticsArgs{
/// 						Enabled:    pulumi.Bool(true),
/// 						StorageUri: pulumi.String("http://{existing-storage-account-name}.blob.core.windows.net"),
/// 					},
/// 				},
/// 				ExtensionProfile: &compute.VirtualMachineScaleSetExtensionProfileArgs{
/// 					Extensions: compute.VirtualMachineScaleSetExtensionTypeArray{
/// 						&compute.VirtualMachineScaleSetExtensionTypeArgs{
/// 							AutoUpgradeMinorVersion: pulumi.Bool(false),
/// 							Name:                    pulumi.String("{extension-name}"),
/// 							ProtectedSettingsFromKeyVault: &compute.KeyVaultSecretReferenceArgs{
/// 								SecretUrl: pulumi.String("https://kvName.vault.azure.net/secrets/secretName/79b88b3a6f5440ffb2e73e44a0db712e"),
/// 								SourceVault: &compute.SubResourceArgs{
/// 									Id: pulumi.String("/subscriptions/a53f7094-a16c-47af-abe4-b05c05d0d79a/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/kvName"),
/// 								},
/// 							},
/// 							Publisher:          pulumi.String("{extension-Publisher}"),
/// 							Settings:           pulumi.Any(map[string]interface{}{}),
/// 							Type:               pulumi.String("{extension-Type}"),
/// 							TypeHandlerVersion: pulumi.String("{handler-version}"),
/// 						},
/// 					},
/// 				},
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.DiagnosticsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.BootDiagnosticsArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetExtensionProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .diagnosticsProfile(DiagnosticsProfileArgs.builder()
///                     .bootDiagnostics(BootDiagnosticsArgs.builder()
///                         .enabled(true)
///                         .storageUri("http://{existing-storage-account-name}.blob.core.windows.net")
///                         .build())
///                     .build())
///                 .extensionProfile(VirtualMachineScaleSetExtensionProfileArgs.builder()
///                     .extensions(VirtualMachineScaleSetExtensionArgs.builder()
///                         .autoUpgradeMinorVersion(false)
///                         .name("{extension-name}")
///                         .protectedSettingsFromKeyVault(KeyVaultSecretReferenceArgs.builder()
///                             .secretUrl("https://kvName.vault.azure.net/secrets/secretName/79b88b3a6f5440ffb2e73e44a0db712e")
///                             .sourceVault(SubResourceArgs.builder()
///                                 .id("/subscriptions/a53f7094-a16c-47af-abe4-b05c05d0d79a/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/kvName")
///                                 .build())
///                             .build())
///                         .publisher("{extension-Publisher}")
///                         .settings(Map.ofEntries(
///                         ))
///                         .type("{extension-Type}")
///                         .typeHandlerVersion("{handler-version}")
///                         .build())
///                     .build())
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         diagnosticsProfile: {
///             bootDiagnostics: {
///                 enabled: true,
///                 storageUri: "http://{existing-storage-account-name}.blob.core.windows.net",
///             },
///         },
///         extensionProfile: {
///             extensions: [{
///                 autoUpgradeMinorVersion: false,
///                 name: "{extension-name}",
///                 protectedSettingsFromKeyVault: {
///                     secretUrl: "https://kvName.vault.azure.net/secrets/secretName/79b88b3a6f5440ffb2e73e44a0db712e",
///                     sourceVault: {
///                         id: "/subscriptions/a53f7094-a16c-47af-abe4-b05c05d0d79a/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/kvName",
///                     },
///                 },
///                 publisher: "{extension-Publisher}",
///                 settings: {},
///                 type: "{extension-Type}",
///                 typeHandlerVersion: "{handler-version}",
///             }],
///         },
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "diagnostics_profile": {
///             "boot_diagnostics": {
///                 "enabled": True,
///                 "storage_uri": "http://{existing-storage-account-name}.blob.core.windows.net",
///             },
///         },
///         "extension_profile": {
///             "extensions": [{
///                 "auto_upgrade_minor_version": False,
///                 "name": "{extension-name}",
///                 "protected_settings_from_key_vault": {
///                     "secret_url": "https://kvName.vault.azure.net/secrets/secretName/79b88b3a6f5440ffb2e73e44a0db712e",
///                     "source_vault": {
///                         "id": "/subscriptions/a53f7094-a16c-47af-abe4-b05c05d0d79a/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/kvName",
///                     },
///                 },
///                 "publisher": "{extension-Publisher}",
///                 "settings": {},
///                 "type": "{extension-Type}",
///                 "type_handler_version": "{handler-version}",
///             }],
///         },
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         diagnosticsProfile:
///           bootDiagnostics:
///             enabled: true
///             storageUri: http://{existing-storage-account-name}.blob.core.windows.net
///         extensionProfile:
///           extensions:
///             - autoUpgradeMinorVersion: false
///               name: '{extension-name}'
///               protectedSettingsFromKeyVault:
///                 secretUrl: https://kvName.vault.azure.net/secrets/secretName/79b88b3a6f5440ffb2e73e44a0db712e
///                 sourceVault:
///                   id: /subscriptions/a53f7094-a16c-47af-abe4-b05c05d0d79a/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/kvName
///               publisher: '{extension-Publisher}'
///               settings: {}
///               type: '{extension-Type}'
///               typeHandlerVersion: '{handler-version}'
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a custom-image scale set from an unmanaged generalized os image.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     Image = new AzureNative.Compute.Inputs.VirtualHardDiskArgs
///                     {
///                         Uri = "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/{existing-generalized-os-image-blob-name}.vhd",
///                     },
///                     Name = "osDisk",
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						Image: &compute.VirtualHardDiskArgs{
/// 							Uri: pulumi.String("http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/{existing-generalized-os-image-blob-name}.vhd"),
/// 						},
/// 						Name: pulumi.String("osDisk"),
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .image(VirtualHardDiskArgs.builder()
///                             .uri("http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/{existing-generalized-os-image-blob-name}.vhd")
///                             .build())
///                         .name("osDisk")
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 image: {
///                     uri: "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/{existing-generalized-os-image-blob-name}.vhd",
///                 },
///                 name: "osDisk",
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "image": {
///                     "uri": "http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/{existing-generalized-os-image-blob-name}.vhd",
///                 },
///                 "name": "osDisk",
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             image:
///               uri: http://{existing-storage-account-name}.blob.core.windows.net/{existing-container-name}/{existing-generalized-os-image-blob-name}.vhd
///             name: osDisk
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a platform-image scale set with unmanaged os disks.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     Name = "osDisk",
///                     VhdContainers = new[]
///                     {
///                         "http://{existing-storage-account-name-0}.blob.core.windows.net/vhdContainer",
///                         "http://{existing-storage-account-name-1}.blob.core.windows.net/vhdContainer",
///                         "http://{existing-storage-account-name-2}.blob.core.windows.net/vhdContainer",
///                         "http://{existing-storage-account-name-3}.blob.core.windows.net/vhdContainer",
///                         "http://{existing-storage-account-name-4}.blob.core.windows.net/vhdContainer",
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						Name:         pulumi.String("osDisk"),
/// 						VhdContainers: pulumi.StringArray{
/// 							pulumi.String("http://{existing-storage-account-name-0}.blob.core.windows.net/vhdContainer"),
/// 							pulumi.String("http://{existing-storage-account-name-1}.blob.core.windows.net/vhdContainer"),
/// 							pulumi.String("http://{existing-storage-account-name-2}.blob.core.windows.net/vhdContainer"),
/// 							pulumi.String("http://{existing-storage-account-name-3}.blob.core.windows.net/vhdContainer"),
/// 							pulumi.String("http://{existing-storage-account-name-4}.blob.core.windows.net/vhdContainer"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .name("osDisk")
///                         .vhdContainers(
///                             "http://{existing-storage-account-name-0}.blob.core.windows.net/vhdContainer",
///                             "http://{existing-storage-account-name-1}.blob.core.windows.net/vhdContainer",
///                             "http://{existing-storage-account-name-2}.blob.core.windows.net/vhdContainer",
///                             "http://{existing-storage-account-name-3}.blob.core.windows.net/vhdContainer",
///                             "http://{existing-storage-account-name-4}.blob.core.windows.net/vhdContainer")
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 name: "osDisk",
///                 vhdContainers: [
///                     "http://{existing-storage-account-name-0}.blob.core.windows.net/vhdContainer",
///                     "http://{existing-storage-account-name-1}.blob.core.windows.net/vhdContainer",
///                     "http://{existing-storage-account-name-2}.blob.core.windows.net/vhdContainer",
///                     "http://{existing-storage-account-name-3}.blob.core.windows.net/vhdContainer",
///                     "http://{existing-storage-account-name-4}.blob.core.windows.net/vhdContainer",
///                 ],
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "name": "osDisk",
///                 "vhd_containers": [
///                     "http://{existing-storage-account-name-0}.blob.core.windows.net/vhdContainer",
///                     "http://{existing-storage-account-name-1}.blob.core.windows.net/vhdContainer",
///                     "http://{existing-storage-account-name-2}.blob.core.windows.net/vhdContainer",
///                     "http://{existing-storage-account-name-3}.blob.core.windows.net/vhdContainer",
///                     "http://{existing-storage-account-name-4}.blob.core.windows.net/vhdContainer",
///                 ],
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             name: osDisk
///             vhdContainers:
///               - http://{existing-storage-account-name-0}.blob.core.windows.net/vhdContainer
///               - http://{existing-storage-account-name-1}.blob.core.windows.net/vhdContainer
///               - http://{existing-storage-account-name-2}.blob.core.windows.net/vhdContainer
///               - http://{existing-storage-account-name-3}.blob.core.windows.net/vhdContainer
///               - http://{existing-storage-account-name-4}.blob.core.windows.net/vhdContainer
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set from a custom image.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set from a generalized shared image.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set from a specialized shared image.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         storageProfile: {
///             imageReference: {
///                 id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         storageProfile:
///           imageReference:
///             id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/mySharedGallery/images/mySharedImage
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set where nic config has DisableTcpStateTracking property
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         DisableTcpStateTracking = true,
///                         EnableAcceleratedNetworking = true,
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{nicConfig1-name}",
///                         Primary = true,
///                     },
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         DisableTcpStateTracking = false,
///                         EnableAcceleratedNetworking = false,
///                         EnableIPForwarding = false,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{nicConfig2-name}",
///                                 Primary = true,
///                                 PrivateIPAddressVersion = AzureNative.Compute.IPVersion.IPv4,
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name2}",
///                                 },
///                             },
///                         },
///                         Name = "{nicConfig2-name}",
///                         Primary = false,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							DisableTcpStateTracking:     pulumi.Bool(true),
/// 							EnableAcceleratedNetworking: pulumi.Bool(true),
/// 							EnableIPForwarding:          pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{nicConfig1-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							DisableTcpStateTracking:     pulumi.Bool(false),
/// 							EnableAcceleratedNetworking: pulumi.Bool(false),
/// 							EnableIPForwarding:          pulumi.Bool(false),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name:                    pulumi.String("{nicConfig2-name}"),
/// 									Primary:                 pulumi.Bool(true),
/// 									PrivateIPAddressVersion: pulumi.String(compute.IPVersionIPv4),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name2}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{nicConfig2-name}"),
/// 							Primary: pulumi.Bool(false),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(
///                         VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                             .disableTcpStateTracking(true)
///                             .enableAcceleratedNetworking(true)
///                             .enableIPForwarding(true)
///                             .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                                 .name("{vmss-name}")
///                                 .subnet(ApiEntityReferenceArgs.builder()
///                                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                     .build())
///                                 .build())
///                             .name("{nicConfig1-name}")
///                             .primary(true)
///                             .build(),
///                         VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                             .disableTcpStateTracking(false)
///                             .enableAcceleratedNetworking(false)
///                             .enableIPForwarding(false)
///                             .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                                 .name("{nicConfig2-name}")
///                                 .primary(true)
///                                 .privateIPAddressVersion("IPv4")
///                                 .subnet(ApiEntityReferenceArgs.builder()
///                                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name2}")
///                                     .build())
///                                 .build())
///                             .name("{nicConfig2-name}")
///                             .primary(false)
///                             .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [
///                 {
///                     disableTcpStateTracking: true,
///                     enableAcceleratedNetworking: true,
///                     enableIPForwarding: true,
///                     ipConfigurations: [{
///                         name: "{vmss-name}",
///                         subnet: {
///                             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                         },
///                     }],
///                     name: "{nicConfig1-name}",
///                     primary: true,
///                 },
///                 {
///                     disableTcpStateTracking: false,
///                     enableAcceleratedNetworking: false,
///                     enableIPForwarding: false,
///                     ipConfigurations: [{
///                         name: "{nicConfig2-name}",
///                         primary: true,
///                         privateIPAddressVersion: azure_native.compute.IPVersion.IPv4,
///                         subnet: {
///                             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name2}",
///                         },
///                     }],
///                     name: "{nicConfig2-name}",
///                     primary: false,
///                 },
///             ],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [
///                 {
///                     "disable_tcp_state_tracking": True,
///                     "enable_accelerated_networking": True,
///                     "enable_ip_forwarding": True,
///                     "ip_configurations": [{
///                         "name": "{vmss-name}",
///                         "subnet": {
///                             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                         },
///                     }],
///                     "name": "{nicConfig1-name}",
///                     "primary": True,
///                 },
///                 {
///                     "disable_tcp_state_tracking": False,
///                     "enable_accelerated_networking": False,
///                     "enable_ip_forwarding": False,
///                     "ip_configurations": [{
///                         "name": "{nicConfig2-name}",
///                         "primary": True,
///                         "private_ip_address_version": azure_native.compute.IPVersion.I_PV4,
///                         "subnet": {
///                             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name2}",
///                         },
///                     }],
///                     "name": "{nicConfig2-name}",
///                     "primary": False,
///                 },
///             ],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - disableTcpStateTracking: true
///               enableAcceleratedNetworking: true
///               enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{nicConfig1-name}'
///               primary: true
///             - disableTcpStateTracking: false
///               enableAcceleratedNetworking: false
///               enableIPForwarding: false
///               ipConfigurations:
///                 - name: '{nicConfig2-name}'
///                   primary: true
///                   privateIPAddressVersion: IPv4
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name2}
///               name: '{nicConfig2-name}'
///               primary: false
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with Application Profile
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             ApplicationProfile = new AzureNative.Compute.Inputs.ApplicationProfileArgs
///             {
///                 GalleryApplications = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VMGalleryApplicationArgs
///                     {
///                         ConfigurationReference = "https://mystorageaccount.blob.core.windows.net/configurations/settings.config",
///                         EnableAutomaticUpgrade = false,
///                         Order = 1,
///                         PackageReferenceId = "/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdb/resourceGroups/myresourceGroupName2/providers/Microsoft.Compute/galleries/myGallery1/applications/MyApplication1/versions/1.0",
///                         Tags = "myTag1",
///                         TreatFailureAsDeploymentFailure = true,
///                     },
///                     new AzureNative.Compute.Inputs.VMGalleryApplicationArgs
///                     {
///                         PackageReferenceId = "/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdg/resourceGroups/myresourceGroupName3/providers/Microsoft.Compute/galleries/myGallery2/applications/MyApplication2/versions/1.1",
///                     },
///                 },
///             },
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				ApplicationProfile: &compute.ApplicationProfileArgs{
/// 					GalleryApplications: compute.VMGalleryApplicationArray{
/// 						&compute.VMGalleryApplicationArgs{
/// 							ConfigurationReference:          pulumi.String("https://mystorageaccount.blob.core.windows.net/configurations/settings.config"),
/// 							EnableAutomaticUpgrade:          pulumi.Bool(false),
/// 							Order:                           pulumi.Int(1),
/// 							PackageReferenceId:              pulumi.String("/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdb/resourceGroups/myresourceGroupName2/providers/Microsoft.Compute/galleries/myGallery1/applications/MyApplication1/versions/1.0"),
/// 							Tags:                            pulumi.String("myTag1"),
/// 							TreatFailureAsDeploymentFailure: pulumi.Bool(true),
/// 						},
/// 						&compute.VMGalleryApplicationArgs{
/// 							PackageReferenceId: pulumi.String("/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdg/resourceGroups/myresourceGroupName3/providers/Microsoft.Compute/galleries/myGallery2/applications/MyApplication2/versions/1.1"),
/// 						},
/// 					},
/// 				},
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ApplicationProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .applicationProfile(ApplicationProfileArgs.builder()
///                     .galleryApplications(
///                         VMGalleryApplicationArgs.builder()
///                             .configurationReference("https://mystorageaccount.blob.core.windows.net/configurations/settings.config")
///                             .enableAutomaticUpgrade(false)
///                             .order(1)
///                             .packageReferenceId("/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdb/resourceGroups/myresourceGroupName2/providers/Microsoft.Compute/galleries/myGallery1/applications/MyApplication1/versions/1.0")
///                             .tags("myTag1")
///                             .treatFailureAsDeploymentFailure(true)
///                             .build(),
///                         VMGalleryApplicationArgs.builder()
///                             .packageReferenceId("/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdg/resourceGroups/myresourceGroupName3/providers/Microsoft.Compute/galleries/myGallery2/applications/MyApplication2/versions/1.1")
///                             .build())
///                     .build())
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         applicationProfile: {
///             galleryApplications: [
///                 {
///                     configurationReference: "https://mystorageaccount.blob.core.windows.net/configurations/settings.config",
///                     enableAutomaticUpgrade: false,
///                     order: 1,
///                     packageReferenceId: "/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdb/resourceGroups/myresourceGroupName2/providers/Microsoft.Compute/galleries/myGallery1/applications/MyApplication1/versions/1.0",
///                     tags: "myTag1",
///                     treatFailureAsDeploymentFailure: true,
///                 },
///                 {
///                     packageReferenceId: "/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdg/resourceGroups/myresourceGroupName3/providers/Microsoft.Compute/galleries/myGallery2/applications/MyApplication2/versions/1.1",
///                 },
///             ],
///         },
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "application_profile": {
///             "gallery_applications": [
///                 {
///                     "configuration_reference": "https://mystorageaccount.blob.core.windows.net/configurations/settings.config",
///                     "enable_automatic_upgrade": False,
///                     "order": 1,
///                     "package_reference_id": "/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdb/resourceGroups/myresourceGroupName2/providers/Microsoft.Compute/galleries/myGallery1/applications/MyApplication1/versions/1.0",
///                     "tags": "myTag1",
///                     "treat_failure_as_deployment_failure": True,
///                 },
///                 {
///                     "package_reference_id": "/subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdg/resourceGroups/myresourceGroupName3/providers/Microsoft.Compute/galleries/myGallery2/applications/MyApplication2/versions/1.1",
///                 },
///             ],
///         },
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         applicationProfile:
///           galleryApplications:
///             - configurationReference: https://mystorageaccount.blob.core.windows.net/configurations/settings.config
///               enableAutomaticUpgrade: false
///               order: 1
///               packageReferenceId: /subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdb/resourceGroups/myresourceGroupName2/providers/Microsoft.Compute/galleries/myGallery1/applications/MyApplication1/versions/1.0
///               tags: myTag1
///               treatFailureAsDeploymentFailure: true
///             - packageReferenceId: /subscriptions/32c17a9e-aa7b-4ba5-a45b-e324116b6fdg/resourceGroups/myresourceGroupName3/providers/Microsoft.Compute/galleries/myGallery2/applications/MyApplication2/versions/1.1
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with Automatic Zone Rebalancing enabled
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = false,
///         ResiliencyPolicy = new AzureNative.Compute.Inputs.ResiliencyPolicyArgs
///         {
///             AutomaticZoneRebalancingPolicy = new AzureNative.Compute.Inputs.AutomaticZoneRebalancingPolicyArgs
///             {
///                 Enabled = true,
///                 RebalanceBehavior = AzureNative.Compute.RebalanceBehavior.CreateBeforeDelete,
///                 RebalanceStrategy = AzureNative.Compute.RebalanceStrategy.Recreate,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:      pulumi.String("westus"),
/// 			Overprovision: pulumi.Bool(false),
/// 			ResiliencyPolicy: &compute.ResiliencyPolicyArgs{
/// 				AutomaticZoneRebalancingPolicy: &compute.AutomaticZoneRebalancingPolicyArgs{
/// 					Enabled:           pulumi.Bool(true),
/// 					RebalanceBehavior: pulumi.String(compute.RebalanceBehaviorCreateBeforeDelete),
/// 					RebalanceStrategy: pulumi.String(compute.RebalanceStrategyRecreate),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.ResiliencyPolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.AutomaticZoneRebalancingPolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(false)
///             .resiliencyPolicy(ResiliencyPolicyArgs.builder()
///                 .automaticZoneRebalancingPolicy(AutomaticZoneRebalancingPolicyArgs.builder()
///                     .enabled(true)
///                     .rebalanceBehavior("CreateBeforeDelete")
///                     .rebalanceStrategy("Recreate")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: false,
///     resiliencyPolicy: {
///         automaticZoneRebalancingPolicy: {
///             enabled: true,
///             rebalanceBehavior: azure_native.compute.RebalanceBehavior.CreateBeforeDelete,
///             rebalanceStrategy: azure_native.compute.RebalanceStrategy.Recreate,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=False,
///     resiliency_policy={
///         "automatic_zone_rebalancing_policy": {
///             "enabled": True,
///             "rebalance_behavior": azure_native.compute.RebalanceBehavior.CREATE_BEFORE_DELETE,
///             "rebalance_strategy": azure_native.compute.RebalanceStrategy.RECREATE,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: false
///       resiliencyPolicy:
///         automaticZoneRebalancingPolicy:
///           enabled: true
///           rebalanceBehavior: CreateBeforeDelete
///           rebalanceStrategy: Recreate
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with Disk Controller Type
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
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
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             HardwareProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetHardwareProfileArgs
///             {
///                 VmSizeProperties = new AzureNative.Compute.Inputs.VMSizePropertiesArgs
///                 {
///                     VCPUsAvailable = 1,
///                     VCPUsPerCore = 1,
///                 },
///             },
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 DiskControllerType = AzureNative.Compute.DiskControllerTypes.NVMe,
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///             UserData = "RXhhbXBsZSBVc2VyRGF0YQ==",
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
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
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				HardwareProfile: &compute.VirtualMachineScaleSetHardwareProfileArgs{
/// 					VmSizeProperties: &compute.VMSizePropertiesArgs{
/// 						VCPUsAvailable: pulumi.Int(1),
/// 						VCPUsPerCore:   pulumi.Int(1),
/// 					},
/// 				},
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					DiskControllerType: pulumi.String(compute.DiskControllerTypesNVMe),
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 				UserData: pulumi.String("RXhhbXBsZSBVc2VyRGF0YQ=="),
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.ScheduledEventsPolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.ScheduledEventsAdditionalPublishingTargetsArgs;
/// import com.pulumi.azurenative.compute.inputs.EventGridAndResourceGraphArgs;
/// import com.pulumi.azurenative.compute.inputs.UserInitiatedRebootArgs;
/// import com.pulumi.azurenative.compute.inputs.UserInitiatedRedeployArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetHardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VMSizePropertiesArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
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
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .hardwareProfile(VirtualMachineScaleSetHardwareProfileArgs.builder()
///                     .vmSizeProperties(VMSizePropertiesArgs.builder()
///                         .vCPUsAvailable(1)
///                         .vCPUsPerCore(1)
///                         .build())
///                     .build())
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .diskControllerType("NVMe")
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .userData("RXhhbXBsZSBVc2VyRGF0YQ==")
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
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
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         hardwareProfile: {
///             vmSizeProperties: {
///                 vCPUsAvailable: 1,
///                 vCPUsPerCore: 1,
///             },
///         },
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             diskControllerType: azure_native.compute.DiskControllerTypes.NVMe,
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///         userData: "RXhhbXBsZSBVc2VyRGF0YQ==",
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
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
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "hardware_profile": {
///             "vm_size_properties": {
///                 "v_cpus_available": 1,
///                 "v_cpus_per_core": 1,
///             },
///         },
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "disk_controller_type": azure_native.compute.DiskControllerTypes.NV_ME,
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///         "user_data": "RXhhbXBsZSBVc2VyRGF0YQ==",
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       scheduledEventsPolicy:
///         scheduledEventsAdditionalPublishingTargets:
///           eventGridAndResourceGraph:
///             enable: true
///         userInitiatedReboot:
///           automaticallyApprove: true
///         userInitiatedRedeploy:
///           automaticallyApprove: true
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         hardwareProfile:
///           vmSizeProperties:
///             vCPUsAvailable: 1
///             vCPUsPerCore: 1
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           diskControllerType: NVMe
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///         userData: RXhhbXBsZSBVc2VyRGF0YQ==
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with DiskEncryptionSet resource in os disk and data disk.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_DS1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 DataDisks = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetDataDiskArgs
///                     {
///                         Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                         CreateOption = AzureNative.Compute.DiskCreateOptionTypes.Empty,
///                         DiskSizeGB = 1023,
///                         Lun = 0,
///                         ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                         {
///                             DiskEncryptionSet = new AzureNative.Compute.Inputs.DiskEncryptionSetParametersArgs
///                             {
///                                 Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                             },
///                             StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                         },
///                     },
///                 },
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         DiskEncryptionSet = new AzureNative.Compute.Inputs.DiskEncryptionSetParametersArgs
///                         {
///                             Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                         },
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_DS1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					DataDisks: compute.VirtualMachineScaleSetDataDiskArray{
/// 						&compute.VirtualMachineScaleSetDataDiskArgs{
/// 							Caching:      compute.CachingTypesReadWrite,
/// 							CreateOption: pulumi.String(compute.DiskCreateOptionTypesEmpty),
/// 							DiskSizeGB:   pulumi.Int(1023),
/// 							Lun:          pulumi.Int(0),
/// 							ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 								DiskEncryptionSet: &compute.DiskEncryptionSetParametersArgs{
/// 									Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}"),
/// 								},
/// 								StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 							},
/// 						},
/// 					},
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							DiskEncryptionSet: &compute.DiskEncryptionSetParametersArgs{
/// 								Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}"),
/// 							},
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_DS1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .dataDisks(VirtualMachineScaleSetDataDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("Empty")
///                         .diskSizeGB(1023)
///                         .lun(0)
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .diskEncryptionSet(DiskEncryptionSetParametersArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}")
///                                 .build())
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .imageReference(ImageReferenceArgs.builder()
///                         .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .diskEncryptionSet(DiskEncryptionSetParametersArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}")
///                                 .build())
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_DS1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             dataDisks: [{
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
///             }],
///             imageReference: {
///                 id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     diskEncryptionSet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                     },
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_DS1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "data_disks": [{
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
///             }],
///             "image_reference": {
///                 "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "disk_encryption_set": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                     },
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_DS1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           dataDisks:
///             - caching: ReadWrite
///               createOption: Empty
///               diskSizeGB: 1023
///               lun: 0
///               managedDisk:
///                 diskEncryptionSet:
///                   id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}
///                 storageAccountType: Standard_LRS
///           imageReference:
///             id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               diskEncryptionSet:
///                 id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with Fpga Network Interfaces.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableAcceleratedNetworking = false,
///                         EnableFpga = true,
///                         EnableIPForwarding = false,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{fpgaNic-Name}",
///                                 Primary = true,
///                                 PrivateIPAddressVersion = AzureNative.Compute.IPVersion.IPv4,
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{fpgaNic-Name}",
///                         Primary = false,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableAcceleratedNetworking: pulumi.Bool(false),
/// 							EnableFpga:                  pulumi.Bool(true),
/// 							EnableIPForwarding:          pulumi.Bool(false),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name:                    pulumi.String("{fpgaNic-Name}"),
/// 									Primary:                 pulumi.Bool(true),
/// 									PrivateIPAddressVersion: pulumi.String(compute.IPVersionIPv4),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{fpgaNic-Name}"),
/// 							Primary: pulumi.Bool(false),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(
///                         VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                             .enableIPForwarding(true)
///                             .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                                 .name("{vmss-name}")
///                                 .subnet(ApiEntityReferenceArgs.builder()
///                                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                     .build())
///                                 .build())
///                             .name("{vmss-name}")
///                             .primary(true)
///                             .build(),
///                         VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                             .enableAcceleratedNetworking(false)
///                             .enableFpga(true)
///                             .enableIPForwarding(false)
///                             .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                                 .name("{fpgaNic-Name}")
///                                 .primary(true)
///                                 .privateIPAddressVersion("IPv4")
///                                 .subnet(ApiEntityReferenceArgs.builder()
///                                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name}")
///                                     .build())
///                                 .build())
///                             .name("{fpgaNic-Name}")
///                             .primary(false)
///                             .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [
///                 {
///                     enableIPForwarding: true,
///                     ipConfigurations: [{
///                         name: "{vmss-name}",
///                         subnet: {
///                             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                         },
///                     }],
///                     name: "{vmss-name}",
///                     primary: true,
///                 },
///                 {
///                     enableAcceleratedNetworking: false,
///                     enableFpga: true,
///                     enableIPForwarding: false,
///                     ipConfigurations: [{
///                         name: "{fpgaNic-Name}",
///                         primary: true,
///                         privateIPAddressVersion: azure_native.compute.IPVersion.IPv4,
///                         subnet: {
///                             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name}",
///                         },
///                     }],
///                     name: "{fpgaNic-Name}",
///                     primary: false,
///                 },
///             ],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [
///                 {
///                     "enable_ip_forwarding": True,
///                     "ip_configurations": [{
///                         "name": "{vmss-name}",
///                         "subnet": {
///                             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                         },
///                     }],
///                     "name": "{vmss-name}",
///                     "primary": True,
///                 },
///                 {
///                     "enable_accelerated_networking": False,
///                     "enable_fpga": True,
///                     "enable_ip_forwarding": False,
///                     "ip_configurations": [{
///                         "name": "{fpgaNic-Name}",
///                         "primary": True,
///                         "private_ip_address_version": azure_native.compute.IPVersion.I_PV4,
///                         "subnet": {
///                             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name}",
///                         },
///                     }],
///                     "name": "{fpgaNic-Name}",
///                     "primary": False,
///                 },
///             ],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///             - enableAcceleratedNetworking: false
///               enableFpga: true
///               enableIPForwarding: false
///               ipConfigurations:
///                 - name: '{fpgaNic-Name}'
///                   primary: true
///                   privateIPAddressVersion: IPv4
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name}
///               name: '{fpgaNic-Name}'
///               primary: false
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with Host Encryption using encryptionAtHost property.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         Plan = new AzureNative.Compute.Inputs.PlanArgs
///         {
///             Name = "windows2016",
///             Product = "windows-data-science-vm",
///             Publisher = "microsoft-ads",
///         },
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_DS1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             SecurityProfile = new AzureNative.Compute.Inputs.SecurityProfileArgs
///             {
///                 EncryptionAtHost = true,
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "windows-data-science-vm",
///                     Publisher = "microsoft-ads",
///                     Sku = "windows2016",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:      pulumi.String("westus"),
/// 			Overprovision: pulumi.Bool(true),
/// 			Plan: &compute.PlanArgs{
/// 				Name:      pulumi.String("windows2016"),
/// 				Product:   pulumi.String("windows-data-science-vm"),
/// 				Publisher: pulumi.String("microsoft-ads"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_DS1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				SecurityProfile: &compute.SecurityProfileArgs{
/// 					EncryptionAtHost: pulumi.Bool(true),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("windows-data-science-vm"),
/// 						Publisher: pulumi.String("microsoft-ads"),
/// 						Sku:       pulumi.String("windows2016"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadOnly,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.PlanArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.SecurityProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .plan(PlanArgs.builder()
///                 .name("windows2016")
///                 .product("windows-data-science-vm")
///                 .publisher("microsoft-ads")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_DS1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .securityProfile(SecurityProfileArgs.builder()
///                     .encryptionAtHost(true)
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("windows-data-science-vm")
///                         .publisher("microsoft-ads")
///                         .sku("windows2016")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadOnly")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     plan: {
///         name: "windows2016",
///         product: "windows-data-science-vm",
///         publisher: "microsoft-ads",
///     },
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_DS1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         securityProfile: {
///             encryptionAtHost: true,
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "windows-data-science-vm",
///                 publisher: "microsoft-ads",
///                 sku: "windows2016",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadOnly,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     plan={
///         "name": "windows2016",
///         "product": "windows-data-science-vm",
///         "publisher": "microsoft-ads",
///     },
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_DS1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "security_profile": {
///             "encryption_at_host": True,
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "windows-data-science-vm",
///                 "publisher": "microsoft-ads",
///                 "sku": "windows2016",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_ONLY,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       plan:
///         name: windows2016
///         product: windows-data-science-vm
///         publisher: microsoft-ads
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_DS1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         securityProfile:
///           encryptionAtHost: true
///         storageProfile:
///           imageReference:
///             offer: windows-data-science-vm
///             publisher: microsoft-ads
///             sku: windows2016
///             version: latest
///           osDisk:
///             caching: ReadOnly
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with Network Interfaces with public ip address dns settings.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         AuxiliaryMode = AzureNative.Compute.NetworkInterfaceAuxiliaryMode.AcceleratedConnections,
///                         AuxiliarySku = AzureNative.Compute.NetworkInterfaceAuxiliarySku.A1,
///                         DisableTcpStateTracking = true,
///                         EnableAcceleratedNetworking = true,
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{nicConfig1-name}",
///                         Primary = true,
///                     },
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         DisableTcpStateTracking = false,
///                         EnableAcceleratedNetworking = false,
///                         EnableIPForwarding = false,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{nicConfig2-name}",
///                                 Primary = true,
///                                 PrivateIPAddressVersion = AzureNative.Compute.IPVersion.IPv4,
///                                 PublicIPAddressConfiguration = new AzureNative.Compute.Inputs.VirtualMachineScaleSetPublicIPAddressConfigurationArgs
///                                 {
///                                     DnsSettings = new AzureNative.Compute.Inputs.VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsArgs
///                                     {
///                                         DomainNameLabel = "vmsstestlabel01",
///                                         DomainNameLabelScope = AzureNative.Compute.DomainNameLabelScopeTypes.NoReuse,
///                                     },
///                                     IdleTimeoutInMinutes = 10,
///                                     Name = "publicip",
///                                 },
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name2}",
///                                 },
///                             },
///                         },
///                         Name = "{nicConfig2-name}",
///                         Primary = false,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							AuxiliaryMode:               pulumi.String(compute.NetworkInterfaceAuxiliaryModeAcceleratedConnections),
/// 							AuxiliarySku:                pulumi.String(compute.NetworkInterfaceAuxiliarySkuA1),
/// 							DisableTcpStateTracking:     pulumi.Bool(true),
/// 							EnableAcceleratedNetworking: pulumi.Bool(true),
/// 							EnableIPForwarding:          pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{nicConfig1-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							DisableTcpStateTracking:     pulumi.Bool(false),
/// 							EnableAcceleratedNetworking: pulumi.Bool(false),
/// 							EnableIPForwarding:          pulumi.Bool(false),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name:                    pulumi.String("{nicConfig2-name}"),
/// 									Primary:                 pulumi.Bool(true),
/// 									PrivateIPAddressVersion: pulumi.String(compute.IPVersionIPv4),
/// 									PublicIPAddressConfiguration: &compute.VirtualMachineScaleSetPublicIPAddressConfigurationArgs{
/// 										DnsSettings: &compute.VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsArgs{
/// 											DomainNameLabel:      pulumi.String("vmsstestlabel01"),
/// 											DomainNameLabelScope: pulumi.String(compute.DomainNameLabelScopeTypesNoReuse),
/// 										},
/// 										IdleTimeoutInMinutes: pulumi.Int(10),
/// 										Name:                 pulumi.String("publicip"),
/// 									},
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name2}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{nicConfig2-name}"),
/// 							Primary: pulumi.Bool(false),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(
///                         VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                             .auxiliaryMode("AcceleratedConnections")
///                             .auxiliarySku("A1")
///                             .disableTcpStateTracking(true)
///                             .enableAcceleratedNetworking(true)
///                             .enableIPForwarding(true)
///                             .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                                 .name("{vmss-name}")
///                                 .subnet(ApiEntityReferenceArgs.builder()
///                                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                     .build())
///                                 .build())
///                             .name("{nicConfig1-name}")
///                             .primary(true)
///                             .build(),
///                         VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                             .disableTcpStateTracking(false)
///                             .enableAcceleratedNetworking(false)
///                             .enableIPForwarding(false)
///                             .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                                 .name("{nicConfig2-name}")
///                                 .primary(true)
///                                 .privateIPAddressVersion("IPv4")
///                                 .publicIPAddressConfiguration(VirtualMachineScaleSetPublicIPAddressConfigurationArgs.builder()
///                                     .dnsSettings(VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsArgs.builder()
///                                         .domainNameLabel("vmsstestlabel01")
///                                         .domainNameLabelScope("NoReuse")
///                                         .build())
///                                     .idleTimeoutInMinutes(10)
///                                     .name("publicip")
///                                     .build())
///                                 .subnet(ApiEntityReferenceArgs.builder()
///                                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name2}")
///                                     .build())
///                                 .build())
///                             .name("{nicConfig2-name}")
///                             .primary(false)
///                             .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [
///                 {
///                     auxiliaryMode: azure_native.compute.NetworkInterfaceAuxiliaryMode.AcceleratedConnections,
///                     auxiliarySku: azure_native.compute.NetworkInterfaceAuxiliarySku.A1,
///                     disableTcpStateTracking: true,
///                     enableAcceleratedNetworking: true,
///                     enableIPForwarding: true,
///                     ipConfigurations: [{
///                         name: "{vmss-name}",
///                         subnet: {
///                             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                         },
///                     }],
///                     name: "{nicConfig1-name}",
///                     primary: true,
///                 },
///                 {
///                     disableTcpStateTracking: false,
///                     enableAcceleratedNetworking: false,
///                     enableIPForwarding: false,
///                     ipConfigurations: [{
///                         name: "{nicConfig2-name}",
///                         primary: true,
///                         privateIPAddressVersion: azure_native.compute.IPVersion.IPv4,
///                         publicIPAddressConfiguration: {
///                             dnsSettings: {
///                                 domainNameLabel: "vmsstestlabel01",
///                                 domainNameLabelScope: azure_native.compute.DomainNameLabelScopeTypes.NoReuse,
///                             },
///                             idleTimeoutInMinutes: 10,
///                             name: "publicip",
///                         },
///                         subnet: {
///                             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name2}",
///                         },
///                     }],
///                     name: "{nicConfig2-name}",
///                     primary: false,
///                 },
///             ],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [
///                 {
///                     "auxiliary_mode": azure_native.compute.NetworkInterfaceAuxiliaryMode.ACCELERATED_CONNECTIONS,
///                     "auxiliary_sku": azure_native.compute.NetworkInterfaceAuxiliarySku.A1,
///                     "disable_tcp_state_tracking": True,
///                     "enable_accelerated_networking": True,
///                     "enable_ip_forwarding": True,
///                     "ip_configurations": [{
///                         "name": "{vmss-name}",
///                         "subnet": {
///                             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                         },
///                     }],
///                     "name": "{nicConfig1-name}",
///                     "primary": True,
///                 },
///                 {
///                     "disable_tcp_state_tracking": False,
///                     "enable_accelerated_networking": False,
///                     "enable_ip_forwarding": False,
///                     "ip_configurations": [{
///                         "name": "{nicConfig2-name}",
///                         "primary": True,
///                         "private_ip_address_version": azure_native.compute.IPVersion.I_PV4,
///                         "public_ip_address_configuration": {
///                             "dns_settings": {
///                                 "domain_name_label": "vmsstestlabel01",
///                                 "domain_name_label_scope": azure_native.compute.DomainNameLabelScopeTypes.NO_REUSE,
///                             },
///                             "idle_timeout_in_minutes": 10,
///                             "name": "publicip",
///                         },
///                         "subnet": {
///                             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name2}",
///                         },
///                     }],
///                     "name": "{nicConfig2-name}",
///                     "primary": False,
///                 },
///             ],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - auxiliaryMode: AcceleratedConnections
///               auxiliarySku: A1
///               disableTcpStateTracking: true
///               enableAcceleratedNetworking: true
///               enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{nicConfig1-name}'
///               primary: true
///             - disableTcpStateTracking: false
///               enableAcceleratedNetworking: false
///               enableIPForwarding: false
///               ipConfigurations:
///                 - name: '{nicConfig2-name}'
///                   primary: true
///                   privateIPAddressVersion: IPv4
///                   publicIPAddressConfiguration:
///                     dnsSettings:
///                       domainNameLabel: vmsstestlabel01
///                       domainNameLabelScope: NoReuse
///                     idleTimeoutInMinutes: 10
///                     name: publicip
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-fpga-subnet-name2}
///               name: '{nicConfig2-name}'
///               primary: false
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/{existing-custom-image-name}
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with OS image scheduled events enabled.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             ScheduledEventsProfile = new AzureNative.Compute.Inputs.ScheduledEventsProfileArgs
///             {
///                 OsImageNotificationProfile = new AzureNative.Compute.Inputs.OSImageNotificationProfileArgs
///                 {
///                     Enable = true,
///                     NotBeforeTimeout = "PT15M",
///                 },
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				ScheduledEventsProfile: &compute.ScheduledEventsProfileArgs{
/// 					OsImageNotificationProfile: &compute.OSImageNotificationProfileArgs{
/// 						Enable:           pulumi.Bool(true),
/// 						NotBeforeTimeout: pulumi.String("PT15M"),
/// 					},
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ScheduledEventsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.OSImageNotificationProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .scheduledEventsProfile(ScheduledEventsProfileArgs.builder()
///                     .osImageNotificationProfile(OSImageNotificationProfileArgs.builder()
///                         .enable(true)
///                         .notBeforeTimeout("PT15M")
///                         .build())
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         scheduledEventsProfile: {
///             osImageNotificationProfile: {
///                 enable: true,
///                 notBeforeTimeout: "PT15M",
///             },
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "scheduled_events_profile": {
///             "os_image_notification_profile": {
///                 "enable": True,
///                 "not_before_timeout": "PT15M",
///             },
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         scheduledEventsProfile:
///           osImageNotificationProfile:
///             enable: true
///             notBeforeTimeout: PT15M
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with ProxyAgent Settings of enabled and mode.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D2s_v3",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             SecurityProfile = new AzureNative.Compute.Inputs.SecurityProfileArgs
///             {
///                 ProxyAgentSettings = new AzureNative.Compute.Inputs.ProxyAgentSettingsArgs
///                 {
///                     Enabled = true,
///                 },
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2019-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.StandardSSD_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D2s_v3"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				SecurityProfile: &compute.SecurityProfileArgs{
/// 					ProxyAgentSettings: &compute.ProxyAgentSettingsArgs{
/// 						Enabled: pulumi.Bool(true),
/// 					},
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2019-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadOnly,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_StandardSSD_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.SecurityProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ProxyAgentSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D2s_v3")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .securityProfile(SecurityProfileArgs.builder()
///                     .proxyAgentSettings(ProxyAgentSettingsArgs.builder()
///                         .enabled(true)
///                         .build())
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2019-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadOnly")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("StandardSSD_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D2s_v3",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         securityProfile: {
///             proxyAgentSettings: {
///                 enabled: true,
///             },
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2019-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadOnly,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.StandardSSD_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D2s_v3",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "security_profile": {
///             "proxy_agent_settings": {
///                 "enabled": True,
///             },
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2019-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_ONLY,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_SS_D_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D2s_v3
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         securityProfile:
///           proxyAgentSettings:
///             enabled: true
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2019-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadOnly
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: StandardSSD_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with Resilient VM Creation enabled
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = false,
///         ResiliencyPolicy = new AzureNative.Compute.Inputs.ResiliencyPolicyArgs
///         {
///             ResilientVMCreationPolicy = new AzureNative.Compute.Inputs.ResilientVMCreationPolicyArgs
///             {
///                 Enabled = true,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:      pulumi.String("westus"),
/// 			Overprovision: pulumi.Bool(false),
/// 			ResiliencyPolicy: &compute.ResiliencyPolicyArgs{
/// 				ResilientVMCreationPolicy: &compute.ResilientVMCreationPolicyArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.ResiliencyPolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.ResilientVMCreationPolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(false)
///             .resiliencyPolicy(ResiliencyPolicyArgs.builder()
///                 .resilientVMCreationPolicy(ResilientVMCreationPolicyArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: false,
///     resiliencyPolicy: {
///         resilientVMCreationPolicy: {
///             enabled: true,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=False,
///     resiliency_policy={
///         "resilient_vm_creation_policy": {
///             "enabled": True,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: false
///       resiliencyPolicy:
///         resilientVMCreationPolicy:
///           enabled: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with Resilient VM Deletion enabled
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = false,
///         ResiliencyPolicy = new AzureNative.Compute.Inputs.ResiliencyPolicyArgs
///         {
///             ResilientVMDeletionPolicy = new AzureNative.Compute.Inputs.ResilientVMDeletionPolicyArgs
///             {
///                 Enabled = true,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:      pulumi.String("westus"),
/// 			Overprovision: pulumi.Bool(false),
/// 			ResiliencyPolicy: &compute.ResiliencyPolicyArgs{
/// 				ResilientVMDeletionPolicy: &compute.ResilientVMDeletionPolicyArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.ResiliencyPolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.ResilientVMDeletionPolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(false)
///             .resiliencyPolicy(ResiliencyPolicyArgs.builder()
///                 .resilientVMDeletionPolicy(ResilientVMDeletionPolicyArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: false,
///     resiliencyPolicy: {
///         resilientVMDeletionPolicy: {
///             enabled: true,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=False,
///     resiliency_policy={
///         "resilient_vm_deletion_policy": {
///             "enabled": True,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: false
///       resiliencyPolicy:
///         resilientVMDeletionPolicy:
///           enabled: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with Security Posture Reference
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "eastus2euap",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_A1",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             AutomaticOSUpgradePolicy = new AzureNative.Compute.Inputs.AutomaticOSUpgradePolicyArgs
///             {
///                 EnableAutomaticOSUpgrade = true,
///             },
///             Mode = AzureNative.Compute.UpgradeMode.Automatic,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             SecurityPostureReference = new AzureNative.Compute.Inputs.SecurityPostureReferenceArgs
///             {
///                 Id = "/CommunityGalleries/{communityGalleryName}/securityPostures/{securityPostureName}/versions/{major.minor.patch}|{major.*}|latest",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2022-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     Name = "osDisk",
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("eastus2euap"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_A1"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				AutomaticOSUpgradePolicy: &compute.AutomaticOSUpgradePolicyArgs{
/// 					EnableAutomaticOSUpgrade: pulumi.Bool(true),
/// 				},
/// 				Mode: compute.UpgradeModeAutomatic,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				SecurityPostureReference: &compute.SecurityPostureReferenceArgs{
/// 					Id: pulumi.String("/CommunityGalleries/{communityGalleryName}/securityPostures/{securityPostureName}/versions/{major.minor.patch}|{major.*}|latest"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2022-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						Name:         pulumi.String("osDisk"),
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.AutomaticOSUpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.SecurityPostureReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("eastus2euap")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_A1")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .automaticOSUpgradePolicy(AutomaticOSUpgradePolicyArgs.builder()
///                     .enableAutomaticOSUpgrade(true)
///                     .build())
///                 .mode("Automatic")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .securityPostureReference(SecurityPostureReferenceArgs.builder()
///                     .id("/CommunityGalleries/{communityGalleryName}/securityPostures/{securityPostureName}/versions/{major.minor.patch}|{major.*}|latest")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2022-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .name("osDisk")
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "eastus2euap",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_A1",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         automaticOSUpgradePolicy: {
///             enableAutomaticOSUpgrade: true,
///         },
///         mode: azure_native.compute.UpgradeMode.Automatic,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         securityPostureReference: {
///             id: "/CommunityGalleries/{communityGalleryName}/securityPostures/{securityPostureName}/versions/{major.minor.patch}|{major.*}|latest",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2022-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 name: "osDisk",
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="eastus2euap",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_A1",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "automatic_os_upgrade_policy": {
///             "enable_automatic_os_upgrade": True,
///         },
///         "mode": azure_native.compute.UpgradeMode.AUTOMATIC,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "security_posture_reference": {
///             "id": "/CommunityGalleries/{communityGalleryName}/securityPostures/{securityPostureName}/versions/{major.minor.patch}|{major.*}|latest",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2022-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "name": "osDisk",
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: eastus2euap
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_A1
///         tier: Standard
///       upgradePolicy:
///         automaticOSUpgradePolicy:
///           enableAutomaticOSUpgrade: true
///         mode: Automatic
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         securityPostureReference:
///           id: /CommunityGalleries/{communityGalleryName}/securityPostures/{securityPostureName}/versions/{major.minor.patch}|{major.*}|latest
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2022-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             name: osDisk
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with SecurityType as ConfidentialVM
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_DC2as_v5",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             SecurityProfile = new AzureNative.Compute.Inputs.SecurityProfileArgs
///             {
///                 SecurityType = AzureNative.Compute.SecurityTypes.ConfidentialVM,
///                 UefiSettings = new AzureNative.Compute.Inputs.UefiSettingsArgs
///                 {
///                     SecureBootEnabled = true,
///                     VTpmEnabled = true,
///                 },
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "2019-datacenter-cvm",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "windows-cvm",
///                     Version = "17763.2183.2109130127",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         SecurityProfile = new AzureNative.Compute.Inputs.VMDiskSecurityProfileArgs
///                         {
///                             SecurityEncryptionType = AzureNative.Compute.SecurityEncryptionTypes.VMGuestStateOnly,
///                         },
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.StandardSSD_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_DC2as_v5"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				SecurityProfile: &compute.SecurityProfileArgs{
/// 					SecurityType: pulumi.String(compute.SecurityTypesConfidentialVM),
/// 					UefiSettings: &compute.UefiSettingsArgs{
/// 						SecureBootEnabled: pulumi.Bool(true),
/// 						VTpmEnabled:       pulumi.Bool(true),
/// 					},
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("2019-datacenter-cvm"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("windows-cvm"),
/// 						Version:   pulumi.String("17763.2183.2109130127"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadOnly,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							SecurityProfile: &compute.VMDiskSecurityProfileArgs{
/// 								SecurityEncryptionType: pulumi.String(compute.SecurityEncryptionTypesVMGuestStateOnly),
/// 							},
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_StandardSSD_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.SecurityProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.UefiSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_DC2as_v5")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .securityProfile(SecurityProfileArgs.builder()
///                     .securityType("ConfidentialVM")
///                     .uefiSettings(UefiSettingsArgs.builder()
///                         .secureBootEnabled(true)
///                         .vTpmEnabled(true)
///                         .build())
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("2019-datacenter-cvm")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("windows-cvm")
///                         .version("17763.2183.2109130127")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadOnly")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .securityProfile(VMDiskSecurityProfileArgs.builder()
///                                 .securityEncryptionType("VMGuestStateOnly")
///                                 .build())
///                             .storageAccountType("StandardSSD_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_DC2as_v5",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         securityProfile: {
///             securityType: azure_native.compute.SecurityTypes.ConfidentialVM,
///             uefiSettings: {
///                 secureBootEnabled: true,
///                 vTpmEnabled: true,
///             },
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "2019-datacenter-cvm",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "windows-cvm",
///                 version: "17763.2183.2109130127",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadOnly,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     securityProfile: {
///                         securityEncryptionType: azure_native.compute.SecurityEncryptionTypes.VMGuestStateOnly,
///                     },
///                     storageAccountType: azure_native.compute.StorageAccountTypes.StandardSSD_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_DC2as_v5",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "security_profile": {
///             "security_type": azure_native.compute.SecurityTypes.CONFIDENTIAL_VM,
///             "uefi_settings": {
///                 "secure_boot_enabled": True,
///                 "v_tpm_enabled": True,
///             },
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "2019-datacenter-cvm",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "windows-cvm",
///                 "version": "17763.2183.2109130127",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_ONLY,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "security_profile": {
///                         "security_encryption_type": azure_native.compute.SecurityEncryptionTypes.VM_GUEST_STATE_ONLY,
///                     },
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_SS_D_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_DC2as_v5
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         securityProfile:
///           securityType: ConfidentialVM
///           uefiSettings:
///             secureBootEnabled: true
///             vTpmEnabled: true
///         storageProfile:
///           imageReference:
///             offer: 2019-datacenter-cvm
///             publisher: MicrosoftWindowsServer
///             sku: windows-cvm
///             version: 17763.2183.2109130127
///           osDisk:
///             caching: ReadOnly
///             createOption: FromImage
///             managedDisk:
///               securityProfile:
///                 securityEncryptionType: VMGuestStateOnly
///               storageAccountType: StandardSSD_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with SecurityType as ConfidentialVM and NonPersistedTPM securityEncryptionType
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_DC2es_v5",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             SecurityProfile = new AzureNative.Compute.Inputs.SecurityProfileArgs
///             {
///                 SecurityType = AzureNative.Compute.SecurityTypes.ConfidentialVM,
///                 UefiSettings = new AzureNative.Compute.Inputs.UefiSettingsArgs
///                 {
///                     SecureBootEnabled = false,
///                     VTpmEnabled = true,
///                 },
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "2022-datacenter-cvm",
///                     Publisher = "UbuntuServer",
///                     Sku = "linux-cvm",
///                     Version = "17763.2183.2109130127",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         SecurityProfile = new AzureNative.Compute.Inputs.VMDiskSecurityProfileArgs
///                         {
///                             SecurityEncryptionType = AzureNative.Compute.SecurityEncryptionTypes.NonPersistedTPM,
///                         },
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.StandardSSD_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_DC2es_v5"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				SecurityProfile: &compute.SecurityProfileArgs{
/// 					SecurityType: pulumi.String(compute.SecurityTypesConfidentialVM),
/// 					UefiSettings: &compute.UefiSettingsArgs{
/// 						SecureBootEnabled: pulumi.Bool(false),
/// 						VTpmEnabled:       pulumi.Bool(true),
/// 					},
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("2022-datacenter-cvm"),
/// 						Publisher: pulumi.String("UbuntuServer"),
/// 						Sku:       pulumi.String("linux-cvm"),
/// 						Version:   pulumi.String("17763.2183.2109130127"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadOnly,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							SecurityProfile: &compute.VMDiskSecurityProfileArgs{
/// 								SecurityEncryptionType: pulumi.String(compute.SecurityEncryptionTypesNonPersistedTPM),
/// 							},
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_StandardSSD_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.SecurityProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.UefiSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_DC2es_v5")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .securityProfile(SecurityProfileArgs.builder()
///                     .securityType("ConfidentialVM")
///                     .uefiSettings(UefiSettingsArgs.builder()
///                         .secureBootEnabled(false)
///                         .vTpmEnabled(true)
///                         .build())
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("2022-datacenter-cvm")
///                         .publisher("UbuntuServer")
///                         .sku("linux-cvm")
///                         .version("17763.2183.2109130127")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadOnly")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .securityProfile(VMDiskSecurityProfileArgs.builder()
///                                 .securityEncryptionType("NonPersistedTPM")
///                                 .build())
///                             .storageAccountType("StandardSSD_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_DC2es_v5",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         securityProfile: {
///             securityType: azure_native.compute.SecurityTypes.ConfidentialVM,
///             uefiSettings: {
///                 secureBootEnabled: false,
///                 vTpmEnabled: true,
///             },
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "2022-datacenter-cvm",
///                 publisher: "UbuntuServer",
///                 sku: "linux-cvm",
///                 version: "17763.2183.2109130127",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadOnly,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     securityProfile: {
///                         securityEncryptionType: azure_native.compute.SecurityEncryptionTypes.NonPersistedTPM,
///                     },
///                     storageAccountType: azure_native.compute.StorageAccountTypes.StandardSSD_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_DC2es_v5",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "security_profile": {
///             "security_type": azure_native.compute.SecurityTypes.CONFIDENTIAL_VM,
///             "uefi_settings": {
///                 "secure_boot_enabled": False,
///                 "v_tpm_enabled": True,
///             },
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "2022-datacenter-cvm",
///                 "publisher": "UbuntuServer",
///                 "sku": "linux-cvm",
///                 "version": "17763.2183.2109130127",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_ONLY,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "security_profile": {
///                         "security_encryption_type": azure_native.compute.SecurityEncryptionTypes.NON_PERSISTED_TPM,
///                     },
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_SS_D_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_DC2es_v5
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         securityProfile:
///           securityType: ConfidentialVM
///           uefiSettings:
///             secureBootEnabled: false
///             vTpmEnabled: true
///         storageProfile:
///           imageReference:
///             offer: 2022-datacenter-cvm
///             publisher: UbuntuServer
///             sku: linux-cvm
///             version: 17763.2183.2109130127
///           osDisk:
///             caching: ReadOnly
///             createOption: FromImage
///             managedDisk:
///               securityProfile:
///                 securityEncryptionType: NonPersistedTPM
///               storageAccountType: StandardSSD_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with Service Artifact Reference
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "eastus2euap",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_A1",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             AutomaticOSUpgradePolicy = new AzureNative.Compute.Inputs.AutomaticOSUpgradePolicyArgs
///             {
///                 EnableAutomaticOSUpgrade = true,
///             },
///             Mode = AzureNative.Compute.UpgradeMode.Automatic,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             ServiceArtifactReference = new AzureNative.Compute.Inputs.ServiceArtifactReferenceArgs
///             {
///                 Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/myGalleryName/serviceArtifacts/serviceArtifactName/vmArtifactsProfiles/vmArtifactsProfilesName",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2022-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     Name = "osDisk",
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("eastus2euap"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_A1"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				AutomaticOSUpgradePolicy: &compute.AutomaticOSUpgradePolicyArgs{
/// 					EnableAutomaticOSUpgrade: pulumi.Bool(true),
/// 				},
/// 				Mode: compute.UpgradeModeAutomatic,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				ServiceArtifactReference: &compute.ServiceArtifactReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/myGalleryName/serviceArtifacts/serviceArtifactName/vmArtifactsProfiles/vmArtifactsProfilesName"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2022-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						Name:         pulumi.String("osDisk"),
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.AutomaticOSUpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ServiceArtifactReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("eastus2euap")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_A1")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .automaticOSUpgradePolicy(AutomaticOSUpgradePolicyArgs.builder()
///                     .enableAutomaticOSUpgrade(true)
///                     .build())
///                 .mode("Automatic")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .serviceArtifactReference(ServiceArtifactReferenceArgs.builder()
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/myGalleryName/serviceArtifacts/serviceArtifactName/vmArtifactsProfiles/vmArtifactsProfilesName")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2022-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .name("osDisk")
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "eastus2euap",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_A1",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         automaticOSUpgradePolicy: {
///             enableAutomaticOSUpgrade: true,
///         },
///         mode: azure_native.compute.UpgradeMode.Automatic,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         serviceArtifactReference: {
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/myGalleryName/serviceArtifacts/serviceArtifactName/vmArtifactsProfiles/vmArtifactsProfilesName",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2022-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 name: "osDisk",
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="eastus2euap",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_A1",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "automatic_os_upgrade_policy": {
///             "enable_automatic_os_upgrade": True,
///         },
///         "mode": azure_native.compute.UpgradeMode.AUTOMATIC,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "service_artifact_reference": {
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/myGalleryName/serviceArtifacts/serviceArtifactName/vmArtifactsProfiles/vmArtifactsProfilesName",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2022-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "name": "osDisk",
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: eastus2euap
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_A1
///         tier: Standard
///       upgradePolicy:
///         automaticOSUpgradePolicy:
///           enableAutomaticOSUpgrade: true
///         mode: Automatic
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         serviceArtifactReference:
///           id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/myGalleryName/serviceArtifacts/serviceArtifactName/vmArtifactsProfiles/vmArtifactsProfilesName
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2022-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             name: osDisk
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with Uefi Settings of secureBoot and vTPM.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D2s_v3",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             SecurityProfile = new AzureNative.Compute.Inputs.SecurityProfileArgs
///             {
///                 SecurityType = AzureNative.Compute.SecurityTypes.TrustedLaunch,
///                 UefiSettings = new AzureNative.Compute.Inputs.UefiSettingsArgs
///                 {
///                     SecureBootEnabled = true,
///                     VTpmEnabled = true,
///                 },
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "windowsserver-gen2preview-preview",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "windows10-tvm",
///                     Version = "18363.592.2001092016",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.StandardSSD_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D2s_v3"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				SecurityProfile: &compute.SecurityProfileArgs{
/// 					SecurityType: pulumi.String(compute.SecurityTypesTrustedLaunch),
/// 					UefiSettings: &compute.UefiSettingsArgs{
/// 						SecureBootEnabled: pulumi.Bool(true),
/// 						VTpmEnabled:       pulumi.Bool(true),
/// 					},
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("windowsserver-gen2preview-preview"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("windows10-tvm"),
/// 						Version:   pulumi.String("18363.592.2001092016"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadOnly,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_StandardSSD_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.SecurityProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.UefiSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D2s_v3")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .securityProfile(SecurityProfileArgs.builder()
///                     .securityType("TrustedLaunch")
///                     .uefiSettings(UefiSettingsArgs.builder()
///                         .secureBootEnabled(true)
///                         .vTpmEnabled(true)
///                         .build())
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("windowsserver-gen2preview-preview")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("windows10-tvm")
///                         .version("18363.592.2001092016")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadOnly")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("StandardSSD_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D2s_v3",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         securityProfile: {
///             securityType: azure_native.compute.SecurityTypes.TrustedLaunch,
///             uefiSettings: {
///                 secureBootEnabled: true,
///                 vTpmEnabled: true,
///             },
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "windowsserver-gen2preview-preview",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "windows10-tvm",
///                 version: "18363.592.2001092016",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadOnly,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.StandardSSD_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D2s_v3",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "security_profile": {
///             "security_type": azure_native.compute.SecurityTypes.TRUSTED_LAUNCH,
///             "uefi_settings": {
///                 "secure_boot_enabled": True,
///                 "v_tpm_enabled": True,
///             },
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "windowsserver-gen2preview-preview",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "windows10-tvm",
///                 "version": "18363.592.2001092016",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_ONLY,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_SS_D_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D2s_v3
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         securityProfile:
///           securityType: TrustedLaunch
///           uefiSettings:
///             secureBootEnabled: true
///             vTpmEnabled: true
///         storageProfile:
///           imageReference:
///             offer: windowsserver-gen2preview-preview
///             publisher: MicrosoftWindowsServer
///             sku: windows10-tvm
///             version: 18363.592.2001092016
///           osDisk:
///             caching: ReadOnly
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: StandardSSD_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with a marketplace image plan.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         Plan = new AzureNative.Compute.Inputs.PlanArgs
///         {
///             Name = "windows2016",
///             Product = "windows-data-science-vm",
///             Publisher = "microsoft-ads",
///         },
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "windows-data-science-vm",
///                     Publisher = "microsoft-ads",
///                     Sku = "windows2016",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:      pulumi.String("westus"),
/// 			Overprovision: pulumi.Bool(true),
/// 			Plan: &compute.PlanArgs{
/// 				Name:      pulumi.String("windows2016"),
/// 				Product:   pulumi.String("windows-data-science-vm"),
/// 				Publisher: pulumi.String("microsoft-ads"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("windows-data-science-vm"),
/// 						Publisher: pulumi.String("microsoft-ads"),
/// 						Sku:       pulumi.String("windows2016"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.PlanArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .plan(PlanArgs.builder()
///                 .name("windows2016")
///                 .product("windows-data-science-vm")
///                 .publisher("microsoft-ads")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("windows-data-science-vm")
///                         .publisher("microsoft-ads")
///                         .sku("windows2016")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     plan: {
///         name: "windows2016",
///         product: "windows-data-science-vm",
///         publisher: "microsoft-ads",
///     },
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "windows-data-science-vm",
///                 publisher: "microsoft-ads",
///                 sku: "windows2016",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     plan={
///         "name": "windows2016",
///         "product": "windows-data-science-vm",
///         "publisher": "microsoft-ads",
///     },
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "windows-data-science-vm",
///                 "publisher": "microsoft-ads",
///                 "sku": "windows2016",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       plan:
///         name: windows2016
///         product: windows-data-science-vm
///         publisher: microsoft-ads
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: windows-data-science-vm
///             publisher: microsoft-ads
///             sku: windows2016
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with an azure application gateway.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 ApplicationGatewayBackendAddressPools = new[]
///                                 {
///                                     new AzureNative.Compute.Inputs.SubResourceArgs
///                                     {
///                                         Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/applicationGateways/{existing-application-gateway-name}/backendAddressPools/{existing-backend-address-pool-name}",
///                                     },
///                                 },
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									ApplicationGatewayBackendAddressPools: compute.SubResourceArray{
/// 										&compute.SubResourceArgs{
/// 											Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/applicationGateways/{existing-application-gateway-name}/backendAddressPools/{existing-backend-address-pool-name}"),
/// 										},
/// 									},
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .applicationGatewayBackendAddressPools(SubResourceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/applicationGateways/{existing-application-gateway-name}/backendAddressPools/{existing-backend-address-pool-name}")
///                                 .build())
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     applicationGatewayBackendAddressPools: [{
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/applicationGateways/{existing-application-gateway-name}/backendAddressPools/{existing-backend-address-pool-name}",
///                     }],
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "application_gateway_backend_address_pools": [{
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/applicationGateways/{existing-application-gateway-name}/backendAddressPools/{existing-backend-address-pool-name}",
///                     }],
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - applicationGatewayBackendAddressPools:
///                     - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/applicationGateways/{existing-application-gateway-name}/backendAddressPools/{existing-backend-address-pool-name}
///                   name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with an azure load balancer.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 LoadBalancerBackendAddressPools = new[]
///                                 {
///                                     new AzureNative.Compute.Inputs.SubResourceArgs
///                                     {
///                                         Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/loadBalancers/{existing-load-balancer-name}/backendAddressPools/{existing-backend-address-pool-name}",
///                                     },
///                                 },
///                                 LoadBalancerInboundNatPools = new[]
///                                 {
///                                     new AzureNative.Compute.Inputs.SubResourceArgs
///                                     {
///                                         Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/loadBalancers/{existing-load-balancer-name}/inboundNatPools/{existing-nat-pool-name}",
///                                     },
///                                 },
///                                 Name = "{vmss-name}",
///                                 PublicIPAddressConfiguration = new AzureNative.Compute.Inputs.VirtualMachineScaleSetPublicIPAddressConfigurationArgs
///                                 {
///                                     Name = "{vmss-name}",
///                                     PublicIPAddressVersion = AzureNative.Compute.IPVersion.IPv4,
///                                 },
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									LoadBalancerBackendAddressPools: compute.SubResourceArray{
/// 										&compute.SubResourceArgs{
/// 											Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/loadBalancers/{existing-load-balancer-name}/backendAddressPools/{existing-backend-address-pool-name}"),
/// 										},
/// 									},
/// 									LoadBalancerInboundNatPools: compute.SubResourceArray{
/// 										&compute.SubResourceArgs{
/// 											Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/loadBalancers/{existing-load-balancer-name}/inboundNatPools/{existing-nat-pool-name}"),
/// 										},
/// 									},
/// 									Name: pulumi.String("{vmss-name}"),
/// 									PublicIPAddressConfiguration: &compute.VirtualMachineScaleSetPublicIPAddressConfigurationArgs{
/// 										Name:                   pulumi.String("{vmss-name}"),
/// 										PublicIPAddressVersion: pulumi.String(compute.IPVersionIPv4),
/// 									},
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .loadBalancerBackendAddressPools(SubResourceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/loadBalancers/{existing-load-balancer-name}/backendAddressPools/{existing-backend-address-pool-name}")
///                                 .build())
///                             .loadBalancerInboundNatPools(SubResourceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/loadBalancers/{existing-load-balancer-name}/inboundNatPools/{existing-nat-pool-name}")
///                                 .build())
///                             .name("{vmss-name}")
///                             .publicIPAddressConfiguration(VirtualMachineScaleSetPublicIPAddressConfigurationArgs.builder()
///                                 .name("{vmss-name}")
///                                 .publicIPAddressVersion("IPv4")
///                                 .build())
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     loadBalancerBackendAddressPools: [{
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/loadBalancers/{existing-load-balancer-name}/backendAddressPools/{existing-backend-address-pool-name}",
///                     }],
///                     loadBalancerInboundNatPools: [{
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/loadBalancers/{existing-load-balancer-name}/inboundNatPools/{existing-nat-pool-name}",
///                     }],
///                     name: "{vmss-name}",
///                     publicIPAddressConfiguration: {
///                         name: "{vmss-name}",
///                         publicIPAddressVersion: azure_native.compute.IPVersion.IPv4,
///                     },
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "load_balancer_backend_address_pools": [{
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/loadBalancers/{existing-load-balancer-name}/backendAddressPools/{existing-backend-address-pool-name}",
///                     }],
///                     "load_balancer_inbound_nat_pools": [{
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/loadBalancers/{existing-load-balancer-name}/inboundNatPools/{existing-nat-pool-name}",
///                     }],
///                     "name": "{vmss-name}",
///                     "public_ip_address_configuration": {
///                         "name": "{vmss-name}",
///                         "public_ip_address_version": azure_native.compute.IPVersion.I_PV4,
///                     },
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - loadBalancerBackendAddressPools:
///                     - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/loadBalancers/{existing-load-balancer-name}/backendAddressPools/{existing-backend-address-pool-name}
///                   loadBalancerInboundNatPools:
///                     - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/loadBalancers/{existing-load-balancer-name}/inboundNatPools/{existing-nat-pool-name}
///                   name: '{vmss-name}'
///                   publicIPAddressConfiguration:
///                     name: '{vmss-name}'
///                     publicIPAddressVersion: IPv4
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with automatic repairs enabled
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         AutomaticRepairsPolicy = new AzureNative.Compute.Inputs.AutomaticRepairsPolicyArgs
///         {
///             Enabled = true,
///             GracePeriod = "PT10M",
///         },
///         Location = "westus",
///         Overprovision = true,
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
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			AutomaticRepairsPolicy: &compute.AutomaticRepairsPolicyArgs{
/// 				Enabled:     pulumi.Bool(true),
/// 				GracePeriod: pulumi.String("PT10M"),
/// 			},
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
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
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.AutomaticRepairsPolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.ScheduledEventsPolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.ScheduledEventsAdditionalPublishingTargetsArgs;
/// import com.pulumi.azurenative.compute.inputs.EventGridAndResourceGraphArgs;
/// import com.pulumi.azurenative.compute.inputs.UserInitiatedRebootArgs;
/// import com.pulumi.azurenative.compute.inputs.UserInitiatedRedeployArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .automaticRepairsPolicy(AutomaticRepairsPolicyArgs.builder()
///                 .enabled(true)
///                 .gracePeriod("PT10M")
///                 .build())
///             .location("westus")
///             .overprovision(true)
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
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     automaticRepairsPolicy: {
///         enabled: true,
///         gracePeriod: "PT10M",
///     },
///     location: "westus",
///     overprovision: true,
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
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     automatic_repairs_policy={
///         "enabled": True,
///         "grace_period": "PT10M",
///     },
///     location="westus",
///     overprovision=True,
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
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       automaticRepairsPolicy:
///         enabled: true
///         gracePeriod: PT10M
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       scheduledEventsPolicy:
///         scheduledEventsAdditionalPublishingTargets:
///           eventGridAndResourceGraph:
///             enable: true
///         userInitiatedReboot:
///           automaticallyApprove: true
///         userInitiatedRedeploy:
///           automaticallyApprove: true
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with boot diagnostics.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             DiagnosticsProfile = new AzureNative.Compute.Inputs.DiagnosticsProfileArgs
///             {
///                 BootDiagnostics = new AzureNative.Compute.Inputs.BootDiagnosticsArgs
///                 {
///                     Enabled = true,
///                     StorageUri = "http://{existing-storage-account-name}.blob.core.windows.net",
///                 },
///             },
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				DiagnosticsProfile: &compute.DiagnosticsProfileArgs{
/// 					BootDiagnostics: &compute.BootDiagnosticsArgs{
/// 						Enabled:    pulumi.Bool(true),
/// 						StorageUri: pulumi.String("http://{existing-storage-account-name}.blob.core.windows.net"),
/// 					},
/// 				},
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.DiagnosticsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.BootDiagnosticsArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .diagnosticsProfile(DiagnosticsProfileArgs.builder()
///                     .bootDiagnostics(BootDiagnosticsArgs.builder()
///                         .enabled(true)
///                         .storageUri("http://{existing-storage-account-name}.blob.core.windows.net")
///                         .build())
///                     .build())
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         diagnosticsProfile: {
///             bootDiagnostics: {
///                 enabled: true,
///                 storageUri: "http://{existing-storage-account-name}.blob.core.windows.net",
///             },
///         },
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "diagnostics_profile": {
///             "boot_diagnostics": {
///                 "enabled": True,
///                 "storage_uri": "http://{existing-storage-account-name}.blob.core.windows.net",
///             },
///         },
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         diagnosticsProfile:
///           bootDiagnostics:
///             enabled: true
///             storageUri: http://{existing-storage-account-name}.blob.core.windows.net
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with empty data disks on each vm.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D2_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 DataDisks = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetDataDiskArgs
///                     {
///                         CreateOption = AzureNative.Compute.DiskCreateOptionTypes.Empty,
///                         DiskSizeGB = 1023,
///                         Lun = 0,
///                     },
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetDataDiskArgs
///                     {
///                         CreateOption = AzureNative.Compute.DiskCreateOptionTypes.Empty,
///                         DiskSizeGB = 1023,
///                         Lun = 1,
///                     },
///                 },
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     DiskSizeGB = 512,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D2_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					DataDisks: compute.VirtualMachineScaleSetDataDiskArray{
/// 						&compute.VirtualMachineScaleSetDataDiskArgs{
/// 							CreateOption: pulumi.String(compute.DiskCreateOptionTypesEmpty),
/// 							DiskSizeGB:   pulumi.Int(1023),
/// 							Lun:          pulumi.Int(0),
/// 						},
/// 						&compute.VirtualMachineScaleSetDataDiskArgs{
/// 							CreateOption: pulumi.String(compute.DiskCreateOptionTypesEmpty),
/// 							DiskSizeGB:   pulumi.Int(1023),
/// 							Lun:          pulumi.Int(1),
/// 						},
/// 					},
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						DiskSizeGB:   pulumi.Int(512),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D2_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .dataDisks(
///                         VirtualMachineScaleSetDataDiskArgs.builder()
///                             .createOption("Empty")
///                             .diskSizeGB(1023)
///                             .lun(0)
///                             .build(),
///                         VirtualMachineScaleSetDataDiskArgs.builder()
///                             .createOption("Empty")
///                             .diskSizeGB(1023)
///                             .lun(1)
///                             .build())
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .diskSizeGB(512)
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D2_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             dataDisks: [
///                 {
///                     createOption: azure_native.compute.DiskCreateOptionTypes.Empty,
///                     diskSizeGB: 1023,
///                     lun: 0,
///                 },
///                 {
///                     createOption: azure_native.compute.DiskCreateOptionTypes.Empty,
///                     diskSizeGB: 1023,
///                     lun: 1,
///                 },
///             ],
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 diskSizeGB: 512,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D2_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "data_disks": [
///                 {
///                     "create_option": azure_native.compute.DiskCreateOptionTypes.EMPTY,
///                     "disk_size_gb": 1023,
///                     "lun": 0,
///                 },
///                 {
///                     "create_option": azure_native.compute.DiskCreateOptionTypes.EMPTY,
///                     "disk_size_gb": 1023,
///                     "lun": 1,
///                 },
///             ],
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "disk_size_gb": 512,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D2_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           dataDisks:
///             - createOption: Empty
///               diskSizeGB: 1023
///               lun: 0
///             - createOption: Empty
///               diskSizeGB: 1023
///               lun: 1
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             diskSizeGB: 512
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with ephemeral os disk provisioning in Nvme disk using placement property.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         Plan = new AzureNative.Compute.Inputs.PlanArgs
///         {
///             Name = "windows2016",
///             Product = "windows-data-science-vm",
///             Publisher = "microsoft-ads",
///         },
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_DS1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "windows-data-science-vm",
///                     Publisher = "microsoft-ads",
///                     Sku = "windows2016",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     DiffDiskSettings = new AzureNative.Compute.Inputs.DiffDiskSettingsArgs
///                     {
///                         Option = AzureNative.Compute.DiffDiskOptions.Local,
///                         Placement = AzureNative.Compute.DiffDiskPlacement.NvmeDisk,
///                     },
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:      pulumi.String("westus"),
/// 			Overprovision: pulumi.Bool(true),
/// 			Plan: &compute.PlanArgs{
/// 				Name:      pulumi.String("windows2016"),
/// 				Product:   pulumi.String("windows-data-science-vm"),
/// 				Publisher: pulumi.String("microsoft-ads"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_DS1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("windows-data-science-vm"),
/// 						Publisher: pulumi.String("microsoft-ads"),
/// 						Sku:       pulumi.String("windows2016"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadOnly,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						DiffDiskSettings: &compute.DiffDiskSettingsArgs{
/// 							Option:    pulumi.String(compute.DiffDiskOptionsLocal),
/// 							Placement: pulumi.String(compute.DiffDiskPlacementNvmeDisk),
/// 						},
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.PlanArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.DiffDiskSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .plan(PlanArgs.builder()
///                 .name("windows2016")
///                 .product("windows-data-science-vm")
///                 .publisher("microsoft-ads")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_DS1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("windows-data-science-vm")
///                         .publisher("microsoft-ads")
///                         .sku("windows2016")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadOnly")
///                         .createOption("FromImage")
///                         .diffDiskSettings(DiffDiskSettingsArgs.builder()
///                             .option("Local")
///                             .placement("NvmeDisk")
///                             .build())
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     plan: {
///         name: "windows2016",
///         product: "windows-data-science-vm",
///         publisher: "microsoft-ads",
///     },
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_DS1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "windows-data-science-vm",
///                 publisher: "microsoft-ads",
///                 sku: "windows2016",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadOnly,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 diffDiskSettings: {
///                     option: azure_native.compute.DiffDiskOptions.Local,
///                     placement: azure_native.compute.DiffDiskPlacement.NvmeDisk,
///                 },
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     plan={
///         "name": "windows2016",
///         "product": "windows-data-science-vm",
///         "publisher": "microsoft-ads",
///     },
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_DS1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "windows-data-science-vm",
///                 "publisher": "microsoft-ads",
///                 "sku": "windows2016",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_ONLY,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "diff_disk_settings": {
///                     "option": azure_native.compute.DiffDiskOptions.LOCAL,
///                     "placement": azure_native.compute.DiffDiskPlacement.NVME_DISK,
///                 },
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       plan:
///         name: windows2016
///         product: windows-data-science-vm
///         publisher: microsoft-ads
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_DS1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: windows-data-science-vm
///             publisher: microsoft-ads
///             sku: windows2016
///             version: latest
///           osDisk:
///             caching: ReadOnly
///             createOption: FromImage
///             diffDiskSettings:
///               option: Local
///               placement: NvmeDisk
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with ephemeral os disks using placement property.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         Plan = new AzureNative.Compute.Inputs.PlanArgs
///         {
///             Name = "windows2016",
///             Product = "windows-data-science-vm",
///             Publisher = "microsoft-ads",
///         },
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_DS1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "windows-data-science-vm",
///                     Publisher = "microsoft-ads",
///                     Sku = "windows2016",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     DiffDiskSettings = new AzureNative.Compute.Inputs.DiffDiskSettingsArgs
///                     {
///                         Option = AzureNative.Compute.DiffDiskOptions.Local,
///                         Placement = AzureNative.Compute.DiffDiskPlacement.ResourceDisk,
///                     },
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:      pulumi.String("westus"),
/// 			Overprovision: pulumi.Bool(true),
/// 			Plan: &compute.PlanArgs{
/// 				Name:      pulumi.String("windows2016"),
/// 				Product:   pulumi.String("windows-data-science-vm"),
/// 				Publisher: pulumi.String("microsoft-ads"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_DS1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("windows-data-science-vm"),
/// 						Publisher: pulumi.String("microsoft-ads"),
/// 						Sku:       pulumi.String("windows2016"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadOnly,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						DiffDiskSettings: &compute.DiffDiskSettingsArgs{
/// 							Option:    pulumi.String(compute.DiffDiskOptionsLocal),
/// 							Placement: pulumi.String(compute.DiffDiskPlacementResourceDisk),
/// 						},
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.PlanArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.DiffDiskSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .plan(PlanArgs.builder()
///                 .name("windows2016")
///                 .product("windows-data-science-vm")
///                 .publisher("microsoft-ads")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_DS1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("windows-data-science-vm")
///                         .publisher("microsoft-ads")
///                         .sku("windows2016")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadOnly")
///                         .createOption("FromImage")
///                         .diffDiskSettings(DiffDiskSettingsArgs.builder()
///                             .option("Local")
///                             .placement("ResourceDisk")
///                             .build())
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     plan: {
///         name: "windows2016",
///         product: "windows-data-science-vm",
///         publisher: "microsoft-ads",
///     },
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_DS1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "windows-data-science-vm",
///                 publisher: "microsoft-ads",
///                 sku: "windows2016",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadOnly,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 diffDiskSettings: {
///                     option: azure_native.compute.DiffDiskOptions.Local,
///                     placement: azure_native.compute.DiffDiskPlacement.ResourceDisk,
///                 },
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     plan={
///         "name": "windows2016",
///         "product": "windows-data-science-vm",
///         "publisher": "microsoft-ads",
///     },
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_DS1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "windows-data-science-vm",
///                 "publisher": "microsoft-ads",
///                 "sku": "windows2016",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_ONLY,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "diff_disk_settings": {
///                     "option": azure_native.compute.DiffDiskOptions.LOCAL,
///                     "placement": azure_native.compute.DiffDiskPlacement.RESOURCE_DISK,
///                 },
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       plan:
///         name: windows2016
///         product: windows-data-science-vm
///         publisher: microsoft-ads
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_DS1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: windows-data-science-vm
///             publisher: microsoft-ads
///             sku: windows2016
///             version: latest
///           osDisk:
///             caching: ReadOnly
///             createOption: FromImage
///             diffDiskSettings:
///               option: Local
///               placement: ResourceDisk
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with ephemeral os disks.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         Plan = new AzureNative.Compute.Inputs.PlanArgs
///         {
///             Name = "windows2016",
///             Product = "windows-data-science-vm",
///             Publisher = "microsoft-ads",
///         },
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_DS1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "windows-data-science-vm",
///                     Publisher = "microsoft-ads",
///                     Sku = "windows2016",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadOnly,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     DiffDiskSettings = new AzureNative.Compute.Inputs.DiffDiskSettingsArgs
///                     {
///                         Option = AzureNative.Compute.DiffDiskOptions.Local,
///                     },
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:      pulumi.String("westus"),
/// 			Overprovision: pulumi.Bool(true),
/// 			Plan: &compute.PlanArgs{
/// 				Name:      pulumi.String("windows2016"),
/// 				Product:   pulumi.String("windows-data-science-vm"),
/// 				Publisher: pulumi.String("microsoft-ads"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_DS1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("windows-data-science-vm"),
/// 						Publisher: pulumi.String("microsoft-ads"),
/// 						Sku:       pulumi.String("windows2016"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadOnly,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						DiffDiskSettings: &compute.DiffDiskSettingsArgs{
/// 							Option: pulumi.String(compute.DiffDiskOptionsLocal),
/// 						},
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.PlanArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.DiffDiskSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .plan(PlanArgs.builder()
///                 .name("windows2016")
///                 .product("windows-data-science-vm")
///                 .publisher("microsoft-ads")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_DS1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("windows-data-science-vm")
///                         .publisher("microsoft-ads")
///                         .sku("windows2016")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadOnly")
///                         .createOption("FromImage")
///                         .diffDiskSettings(DiffDiskSettingsArgs.builder()
///                             .option("Local")
///                             .build())
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     plan: {
///         name: "windows2016",
///         product: "windows-data-science-vm",
///         publisher: "microsoft-ads",
///     },
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_DS1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "windows-data-science-vm",
///                 publisher: "microsoft-ads",
///                 sku: "windows2016",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadOnly,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 diffDiskSettings: {
///                     option: azure_native.compute.DiffDiskOptions.Local,
///                 },
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     plan={
///         "name": "windows2016",
///         "product": "windows-data-science-vm",
///         "publisher": "microsoft-ads",
///     },
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_DS1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "windows-data-science-vm",
///                 "publisher": "microsoft-ads",
///                 "sku": "windows2016",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_ONLY,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "diff_disk_settings": {
///                     "option": azure_native.compute.DiffDiskOptions.LOCAL,
///                 },
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       plan:
///         name: windows2016
///         product: windows-data-science-vm
///         publisher: microsoft-ads
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_DS1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: windows-data-science-vm
///             publisher: microsoft-ads
///             sku: windows2016
///             version: latest
///           osDisk:
///             caching: ReadOnly
///             createOption: FromImage
///             diffDiskSettings:
///               option: Local
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with extension time budget.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             DiagnosticsProfile = new AzureNative.Compute.Inputs.DiagnosticsProfileArgs
///             {
///                 BootDiagnostics = new AzureNative.Compute.Inputs.BootDiagnosticsArgs
///                 {
///                     Enabled = true,
///                     StorageUri = "http://{existing-storage-account-name}.blob.core.windows.net",
///                 },
///             },
///             ExtensionProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetExtensionProfileArgs
///             {
///                 Extensions = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetExtensionArgs
///                     {
///                         AutoUpgradeMinorVersion = false,
///                         Name = "{extension-name}",
///                         Publisher = "{extension-Publisher}",
///                         Settings = null,
///                         Type = "{extension-Type}",
///                         TypeHandlerVersion = "{handler-version}",
///                     },
///                 },
///                 ExtensionsTimeBudget = "PT1H20M",
///             },
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				DiagnosticsProfile: &compute.DiagnosticsProfileArgs{
/// 					BootDiagnostics: &compute.BootDiagnosticsArgs{
/// 						Enabled:    pulumi.Bool(true),
/// 						StorageUri: pulumi.String("http://{existing-storage-account-name}.blob.core.windows.net"),
/// 					},
/// 				},
/// 				ExtensionProfile: &compute.VirtualMachineScaleSetExtensionProfileArgs{
/// 					Extensions: compute.VirtualMachineScaleSetExtensionTypeArray{
/// 						&compute.VirtualMachineScaleSetExtensionTypeArgs{
/// 							AutoUpgradeMinorVersion: pulumi.Bool(false),
/// 							Name:                    pulumi.String("{extension-name}"),
/// 							Publisher:               pulumi.String("{extension-Publisher}"),
/// 							Settings:                pulumi.Any(map[string]interface{}{}),
/// 							Type:                    pulumi.String("{extension-Type}"),
/// 							TypeHandlerVersion:      pulumi.String("{handler-version}"),
/// 						},
/// 					},
/// 					ExtensionsTimeBudget: pulumi.String("PT1H20M"),
/// 				},
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.DiagnosticsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.BootDiagnosticsArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetExtensionProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .diagnosticsProfile(DiagnosticsProfileArgs.builder()
///                     .bootDiagnostics(BootDiagnosticsArgs.builder()
///                         .enabled(true)
///                         .storageUri("http://{existing-storage-account-name}.blob.core.windows.net")
///                         .build())
///                     .build())
///                 .extensionProfile(VirtualMachineScaleSetExtensionProfileArgs.builder()
///                     .extensions(VirtualMachineScaleSetExtensionArgs.builder()
///                         .autoUpgradeMinorVersion(false)
///                         .name("{extension-name}")
///                         .publisher("{extension-Publisher}")
///                         .settings(Map.ofEntries(
///                         ))
///                         .type("{extension-Type}")
///                         .typeHandlerVersion("{handler-version}")
///                         .build())
///                     .extensionsTimeBudget("PT1H20M")
///                     .build())
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         diagnosticsProfile: {
///             bootDiagnostics: {
///                 enabled: true,
///                 storageUri: "http://{existing-storage-account-name}.blob.core.windows.net",
///             },
///         },
///         extensionProfile: {
///             extensions: [{
///                 autoUpgradeMinorVersion: false,
///                 name: "{extension-name}",
///                 publisher: "{extension-Publisher}",
///                 settings: {},
///                 type: "{extension-Type}",
///                 typeHandlerVersion: "{handler-version}",
///             }],
///             extensionsTimeBudget: "PT1H20M",
///         },
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "diagnostics_profile": {
///             "boot_diagnostics": {
///                 "enabled": True,
///                 "storage_uri": "http://{existing-storage-account-name}.blob.core.windows.net",
///             },
///         },
///         "extension_profile": {
///             "extensions": [{
///                 "auto_upgrade_minor_version": False,
///                 "name": "{extension-name}",
///                 "publisher": "{extension-Publisher}",
///                 "settings": {},
///                 "type": "{extension-Type}",
///                 "type_handler_version": "{handler-version}",
///             }],
///             "extensions_time_budget": "PT1H20M",
///         },
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         diagnosticsProfile:
///           bootDiagnostics:
///             enabled: true
///             storageUri: http://{existing-storage-account-name}.blob.core.windows.net
///         extensionProfile:
///           extensions:
///             - autoUpgradeMinorVersion: false
///               name: '{extension-name}'
///               publisher: '{extension-Publisher}'
///               settings: {}
///               type: '{extension-Type}'
///               typeHandlerVersion: '{handler-version}'
///           extensionsTimeBudget: PT1H20M
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with managed boot diagnostics.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             DiagnosticsProfile = new AzureNative.Compute.Inputs.DiagnosticsProfileArgs
///             {
///                 BootDiagnostics = new AzureNative.Compute.Inputs.BootDiagnosticsArgs
///                 {
///                     Enabled = true,
///                 },
///             },
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				DiagnosticsProfile: &compute.DiagnosticsProfileArgs{
/// 					BootDiagnostics: &compute.BootDiagnosticsArgs{
/// 						Enabled: pulumi.Bool(true),
/// 					},
/// 				},
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.DiagnosticsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.BootDiagnosticsArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .diagnosticsProfile(DiagnosticsProfileArgs.builder()
///                     .bootDiagnostics(BootDiagnosticsArgs.builder()
///                         .enabled(true)
///                         .build())
///                     .build())
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         diagnosticsProfile: {
///             bootDiagnostics: {
///                 enabled: true,
///             },
///         },
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "diagnostics_profile": {
///             "boot_diagnostics": {
///                 "enabled": True,
///             },
///         },
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         diagnosticsProfile:
///           bootDiagnostics:
///             enabled: true
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with password authentication.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with premium storage.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Premium_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Premium_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Premium_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Premium_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.PREMIUM_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Premium_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with priority mix policy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         OrchestrationMode = AzureNative.Compute.OrchestrationMode.Flexible,
///         PlatformFaultDomainCount = 1,
///         PriorityMixPolicy = new AzureNative.Compute.Inputs.PriorityMixPolicyArgs
///         {
///             BaseRegularPriorityCount = 10,
///             RegularPriorityPercentageAboveBase = 50,
///         },
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 2,
///             Name = "Standard_A8m_v2",
///             Tier = "Standard",
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkApiVersion = AzureNative.Compute.NetworkApiVersion.NetworkApiVersion_2020_11_01,
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableAcceleratedNetworking = false,
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 ApplicationGatewayBackendAddressPools = new() { },
///                                 LoadBalancerBackendAddressPools = new() { },
///                                 Name = "{vmss-name}",
///                                 Primary = true,
///                                 PublicIPAddressConfiguration = new AzureNative.Compute.Inputs.VirtualMachineScaleSetPublicIPAddressConfigurationArgs
///                                 {
///                                     IdleTimeoutInMinutes = 15,
///                                     Name = "{vmss-name}",
///                                 },
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             Priority = AzureNative.Compute.VirtualMachinePriorityTypes.Spot,
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "0001-com-ubuntu-server-focal",
///                     Publisher = "Canonical",
///                     Sku = "20_04-lts-gen2",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:                 pulumi.String("westus"),
/// 			OrchestrationMode:        pulumi.String(compute.OrchestrationModeFlexible),
/// 			PlatformFaultDomainCount: pulumi.Int(1),
/// 			PriorityMixPolicy: &compute.PriorityMixPolicyArgs{
/// 				BaseRegularPriorityCount:           pulumi.Int(10),
/// 				RegularPriorityPercentageAboveBase: pulumi.Int(50),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(2),
/// 				Name:     pulumi.String("Standard_A8m_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkApiVersion: pulumi.String(compute.NetworkApiVersion_2020_11_01),
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableAcceleratedNetworking: pulumi.Bool(false),
/// 							EnableIPForwarding:          pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									ApplicationGatewayBackendAddressPools: compute.SubResourceArray{},
/// 									LoadBalancerBackendAddressPools:       compute.SubResourceArray{},
/// 									Name:                                  pulumi.String("{vmss-name}"),
/// 									Primary:                               pulumi.Bool(true),
/// 									PublicIPAddressConfiguration: &compute.VirtualMachineScaleSetPublicIPAddressConfigurationArgs{
/// 										IdleTimeoutInMinutes: pulumi.Int(15),
/// 										Name:                 pulumi.String("{vmss-name}"),
/// 									},
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				Priority: pulumi.String(compute.VirtualMachinePriorityTypesSpot),
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("0001-com-ubuntu-server-focal"),
/// 						Publisher: pulumi.String("Canonical"),
/// 						Sku:       pulumi.String("20_04-lts-gen2"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.PriorityMixPolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .orchestrationMode("Flexible")
///             .platformFaultDomainCount(1)
///             .priorityMixPolicy(PriorityMixPolicyArgs.builder()
///                 .baseRegularPriorityCount(10)
///                 .regularPriorityPercentageAboveBase(50)
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(2.0)
///                 .name("Standard_A8m_v2")
///                 .tier("Standard")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkApiVersion("2020-11-01")
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableAcceleratedNetworking(false)
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .applicationGatewayBackendAddressPools()
///                             .loadBalancerBackendAddressPools()
///                             .name("{vmss-name}")
///                             .primary(true)
///                             .publicIPAddressConfiguration(VirtualMachineScaleSetPublicIPAddressConfigurationArgs.builder()
///                                 .idleTimeoutInMinutes(15)
///                                 .name("{vmss-name}")
///                                 .build())
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .priority("Spot")
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("0001-com-ubuntu-server-focal")
///                         .publisher("Canonical")
///                         .sku("20_04-lts-gen2")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     orchestrationMode: azure_native.compute.OrchestrationMode.Flexible,
///     platformFaultDomainCount: 1,
///     priorityMixPolicy: {
///         baseRegularPriorityCount: 10,
///         regularPriorityPercentageAboveBase: 50,
///     },
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 2,
///         name: "Standard_A8m_v2",
///         tier: "Standard",
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkApiVersion: azure_native.compute.NetworkApiVersion.NetworkApiVersion_2020_11_01,
///             networkInterfaceConfigurations: [{
///                 enableAcceleratedNetworking: false,
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     applicationGatewayBackendAddressPools: [],
///                     loadBalancerBackendAddressPools: [],
///                     name: "{vmss-name}",
///                     primary: true,
///                     publicIPAddressConfiguration: {
///                         idleTimeoutInMinutes: 15,
///                         name: "{vmss-name}",
///                     },
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         priority: azure_native.compute.VirtualMachinePriorityTypes.Spot,
///         storageProfile: {
///             imageReference: {
///                 offer: "0001-com-ubuntu-server-focal",
///                 publisher: "Canonical",
///                 sku: "20_04-lts-gen2",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     orchestration_mode=azure_native.compute.OrchestrationMode.FLEXIBLE,
///     platform_fault_domain_count=1,
///     priority_mix_policy={
///         "base_regular_priority_count": 10,
///         "regular_priority_percentage_above_base": 50,
///     },
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 2,
///         "name": "Standard_A8m_v2",
///         "tier": "Standard",
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_api_version": azure_native.compute.NetworkApiVersion.NETWORK_API_VERSION_2020_11_01,
///             "network_interface_configurations": [{
///                 "enable_accelerated_networking": False,
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "application_gateway_backend_address_pools": [],
///                     "load_balancer_backend_address_pools": [],
///                     "name": "{vmss-name}",
///                     "primary": True,
///                     "public_ip_address_configuration": {
///                         "idle_timeout_in_minutes": 15,
///                         "name": "{vmss-name}",
///                     },
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "priority": azure_native.compute.VirtualMachinePriorityTypes.SPOT,
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "0001-com-ubuntu-server-focal",
///                 "publisher": "Canonical",
///                 "sku": "20_04-lts-gen2",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       orchestrationMode: Flexible
///       platformFaultDomainCount: 1
///       priorityMixPolicy:
///         baseRegularPriorityCount: 10
///         regularPriorityPercentageAboveBase: 50
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 2
///         name: Standard_A8m_v2
///         tier: Standard
///       virtualMachineProfile:
///         networkProfile:
///           networkApiVersion: 2020-11-01
///           networkInterfaceConfigurations:
///             - enableAcceleratedNetworking: false
///               enableIPForwarding: true
///               ipConfigurations:
///                 - applicationGatewayBackendAddressPools: []
///                   loadBalancerBackendAddressPools: []
///                   name: '{vmss-name}'
///                   primary: true
///                   publicIPAddressConfiguration:
///                     idleTimeoutInMinutes: 15
///                     name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         priority: Spot
///         storageProfile:
///           imageReference:
///             offer: 0001-com-ubuntu-server-focal
///             publisher: Canonical
///             sku: 20_04-lts-gen2
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with scaleInPolicy.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         ScaleInPolicy = new AzureNative.Compute.Inputs.ScaleInPolicyArgs
///         {
///             ForceDeletion = true,
///             PrioritizeUnhealthyVMs = true,
///             Rules = new[]
///             {
///                 AzureNative.Compute.VirtualMachineScaleSetScaleInRules.OldestVM,
///             },
///         },
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ScaleInPolicy: &compute.ScaleInPolicyArgs{
/// 				ForceDeletion:          pulumi.Bool(true),
/// 				PrioritizeUnhealthyVMs: pulumi.Bool(true),
/// 				Rules: pulumi.StringArray{
/// 					pulumi.String(compute.VirtualMachineScaleSetScaleInRulesOldestVM),
/// 				},
/// 			},
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.ScaleInPolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .scaleInPolicy(ScaleInPolicyArgs.builder()
///                 .forceDeletion(true)
///                 .prioritizeUnhealthyVMs(true)
///                 .rules("OldestVM")
///                 .build())
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     scaleInPolicy: {
///         forceDeletion: true,
///         prioritizeUnhealthyVMs: true,
///         rules: [azure_native.compute.VirtualMachineScaleSetScaleInRules.OldestVM],
///     },
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     scale_in_policy={
///         "force_deletion": True,
///         "prioritize_unhealthy_vms": True,
///         "rules": [azure_native.compute.VirtualMachineScaleSetScaleInRules.OLDEST_VM],
///     },
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       scaleInPolicy:
///         forceDeletion: true
///         prioritizeUnhealthyVMs: true
///         rules:
///           - OldestVM
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with sku profile
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         OrchestrationMode = AzureNative.Compute.OrchestrationMode.Flexible,
///         PriorityMixPolicy = new AzureNative.Compute.Inputs.PriorityMixPolicyArgs
///         {
///             BaseRegularPriorityCount = 4,
///             RegularPriorityPercentageAboveBase = 50,
///         },
///         ResourceGroupName = "myResourceGroup",
///         SinglePlacementGroup = false,
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 10,
///             Name = "Mix",
///         },
///         SkuProfile = new AzureNative.Compute.Inputs.SkuProfileArgs
///         {
///             AllocationStrategy = AzureNative.Compute.AllocationStrategy.CapacityOptimized,
///             VmSizes = new[]
///             {
///                 new AzureNative.Compute.Inputs.SkuProfileVMSizeArgs
///                 {
///                     Name = "Standard_D8s_v5",
///                 },
///                 new AzureNative.Compute.Inputs.SkuProfileVMSizeArgs
///                 {
///                     Name = "Standard_E16s_v5",
///                 },
///                 new AzureNative.Compute.Inputs.SkuProfileVMSizeArgs
///                 {
///                     Name = "Standard_D2s_v5",
///                 },
///             },
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             BillingProfile = new AzureNative.Compute.Inputs.BillingProfileArgs
///             {
///                 MaxPrice = -1,
///             },
///             EvictionPolicy = AzureNative.Compute.VirtualMachineEvictionPolicyTypes.Deallocate,
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             Priority = AzureNative.Compute.VirtualMachinePriorityTypes.Spot,
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			OrchestrationMode: pulumi.String(compute.OrchestrationModeFlexible),
/// 			PriorityMixPolicy: &compute.PriorityMixPolicyArgs{
/// 				BaseRegularPriorityCount:           pulumi.Int(4),
/// 				RegularPriorityPercentageAboveBase: pulumi.Int(50),
/// 			},
/// 			ResourceGroupName:    pulumi.String("myResourceGroup"),
/// 			SinglePlacementGroup: pulumi.Bool(false),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(10),
/// 				Name:     pulumi.String("Mix"),
/// 			},
/// 			SkuProfile: &compute.SkuProfileArgs{
/// 				AllocationStrategy: pulumi.String(compute.AllocationStrategyCapacityOptimized),
/// 				VmSizes: compute.SkuProfileVMSizeArray{
/// 					&compute.SkuProfileVMSizeArgs{
/// 						Name: pulumi.String("Standard_D8s_v5"),
/// 					},
/// 					&compute.SkuProfileVMSizeArgs{
/// 						Name: pulumi.String("Standard_E16s_v5"),
/// 					},
/// 					&compute.SkuProfileVMSizeArgs{
/// 						Name: pulumi.String("Standard_D2s_v5"),
/// 					},
/// 				},
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				BillingProfile: &compute.BillingProfileArgs{
/// 					MaxPrice: pulumi.Float64(-1),
/// 				},
/// 				EvictionPolicy: pulumi.String(compute.VirtualMachineEvictionPolicyTypesDeallocate),
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				Priority: pulumi.String(compute.VirtualMachinePriorityTypesSpot),
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.PriorityMixPolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.BillingProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .orchestrationMode("Flexible")
///             .priorityMixPolicy(PriorityMixPolicyArgs.builder()
///                 .baseRegularPriorityCount(4)
///                 .regularPriorityPercentageAboveBase(50)
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .singlePlacementGroup(false)
///             .sku(SkuArgs.builder()
///                 .capacity(10.0)
///                 .name("Mix")
///                 .build())
///             .skuProfile(SkuProfileArgs.builder()
///                 .allocationStrategy("CapacityOptimized")
///                 .vmSizes(
///                     SkuProfileVMSizeArgs.builder()
///                         .name("Standard_D8s_v5")
///                         .build(),
///                     SkuProfileVMSizeArgs.builder()
///                         .name("Standard_E16s_v5")
///                         .build(),
///                     SkuProfileVMSizeArgs.builder()
///                         .name("Standard_D2s_v5")
///                         .build())
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .billingProfile(BillingProfileArgs.builder()
///                     .maxPrice(-1.0)
///                     .build())
///                 .evictionPolicy("Deallocate")
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .priority("Spot")
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     orchestrationMode: azure_native.compute.OrchestrationMode.Flexible,
///     priorityMixPolicy: {
///         baseRegularPriorityCount: 4,
///         regularPriorityPercentageAboveBase: 50,
///     },
///     resourceGroupName: "myResourceGroup",
///     singlePlacementGroup: false,
///     sku: {
///         capacity: 10,
///         name: "Mix",
///     },
///     skuProfile: {
///         allocationStrategy: azure_native.compute.AllocationStrategy.CapacityOptimized,
///         vmSizes: [
///             {
///                 name: "Standard_D8s_v5",
///             },
///             {
///                 name: "Standard_E16s_v5",
///             },
///             {
///                 name: "Standard_D2s_v5",
///             },
///         ],
///     },
///     virtualMachineProfile: {
///         billingProfile: {
///             maxPrice: -1,
///         },
///         evictionPolicy: azure_native.compute.VirtualMachineEvictionPolicyTypes.Deallocate,
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         priority: azure_native.compute.VirtualMachinePriorityTypes.Spot,
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     orchestration_mode=azure_native.compute.OrchestrationMode.FLEXIBLE,
///     priority_mix_policy={
///         "base_regular_priority_count": 4,
///         "regular_priority_percentage_above_base": 50,
///     },
///     resource_group_name="myResourceGroup",
///     single_placement_group=False,
///     sku={
///         "capacity": 10,
///         "name": "Mix",
///     },
///     sku_profile={
///         "allocation_strategy": azure_native.compute.AllocationStrategy.CAPACITY_OPTIMIZED,
///         "vm_sizes": [
///             {
///                 "name": "Standard_D8s_v5",
///             },
///             {
///                 "name": "Standard_E16s_v5",
///             },
///             {
///                 "name": "Standard_D2s_v5",
///             },
///         ],
///     },
///     virtual_machine_profile={
///         "billing_profile": {
///             "max_price": -1,
///         },
///         "eviction_policy": azure_native.compute.VirtualMachineEvictionPolicyTypes.DEALLOCATE,
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "priority": azure_native.compute.VirtualMachinePriorityTypes.SPOT,
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       orchestrationMode: Flexible
///       priorityMixPolicy:
///         baseRegularPriorityCount: 4
///         regularPriorityPercentageAboveBase: 50
///       resourceGroupName: myResourceGroup
///       singlePlacementGroup: false
///       sku:
///         capacity: 10
///         name: Mix
///       skuProfile:
///         allocationStrategy: CapacityOptimized
///         vmSizes:
///           - name: Standard_D8s_v5
///           - name: Standard_E16s_v5
///           - name: Standard_D2s_v5
///       virtualMachineProfile:
///         billingProfile:
///           maxPrice: -1
///         evictionPolicy: Deallocate
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         priority: Spot
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with sku profile and prioritized allocation strategy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         OrchestrationMode = AzureNative.Compute.OrchestrationMode.Flexible,
///         PriorityMixPolicy = new AzureNative.Compute.Inputs.PriorityMixPolicyArgs
///         {
///             BaseRegularPriorityCount = 4,
///             RegularPriorityPercentageAboveBase = 50,
///         },
///         ResourceGroupName = "myResourceGroup",
///         SinglePlacementGroup = false,
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 10,
///             Name = "Mix",
///         },
///         SkuProfile = new AzureNative.Compute.Inputs.SkuProfileArgs
///         {
///             AllocationStrategy = AzureNative.Compute.AllocationStrategy.Prioritized,
///             VmSizes = new[]
///             {
///                 new AzureNative.Compute.Inputs.SkuProfileVMSizeArgs
///                 {
///                     Name = "Standard_D8s_v5",
///                     Rank = 0,
///                 },
///                 new AzureNative.Compute.Inputs.SkuProfileVMSizeArgs
///                 {
///                     Name = "Standard_E16s_v5",
///                     Rank = 1,
///                 },
///                 new AzureNative.Compute.Inputs.SkuProfileVMSizeArgs
///                 {
///                     Name = "Standard_D2s_v5",
///                     Rank = 2,
///                 },
///             },
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             BillingProfile = new AzureNative.Compute.Inputs.BillingProfileArgs
///             {
///                 MaxPrice = -1,
///             },
///             EvictionPolicy = AzureNative.Compute.VirtualMachineEvictionPolicyTypes.Deallocate,
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             Priority = AzureNative.Compute.VirtualMachinePriorityTypes.Spot,
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			OrchestrationMode: pulumi.String(compute.OrchestrationModeFlexible),
/// 			PriorityMixPolicy: &compute.PriorityMixPolicyArgs{
/// 				BaseRegularPriorityCount:           pulumi.Int(4),
/// 				RegularPriorityPercentageAboveBase: pulumi.Int(50),
/// 			},
/// 			ResourceGroupName:    pulumi.String("myResourceGroup"),
/// 			SinglePlacementGroup: pulumi.Bool(false),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(10),
/// 				Name:     pulumi.String("Mix"),
/// 			},
/// 			SkuProfile: &compute.SkuProfileArgs{
/// 				AllocationStrategy: pulumi.String(compute.AllocationStrategyPrioritized),
/// 				VmSizes: compute.SkuProfileVMSizeArray{
/// 					&compute.SkuProfileVMSizeArgs{
/// 						Name: pulumi.String("Standard_D8s_v5"),
/// 						Rank: pulumi.Int(0),
/// 					},
/// 					&compute.SkuProfileVMSizeArgs{
/// 						Name: pulumi.String("Standard_E16s_v5"),
/// 						Rank: pulumi.Int(1),
/// 					},
/// 					&compute.SkuProfileVMSizeArgs{
/// 						Name: pulumi.String("Standard_D2s_v5"),
/// 						Rank: pulumi.Int(2),
/// 					},
/// 				},
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				BillingProfile: &compute.BillingProfileArgs{
/// 					MaxPrice: pulumi.Float64(-1),
/// 				},
/// 				EvictionPolicy: pulumi.String(compute.VirtualMachineEvictionPolicyTypesDeallocate),
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				Priority: pulumi.String(compute.VirtualMachinePriorityTypesSpot),
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.PriorityMixPolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.BillingProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .orchestrationMode("Flexible")
///             .priorityMixPolicy(PriorityMixPolicyArgs.builder()
///                 .baseRegularPriorityCount(4)
///                 .regularPriorityPercentageAboveBase(50)
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .singlePlacementGroup(false)
///             .sku(SkuArgs.builder()
///                 .capacity(10.0)
///                 .name("Mix")
///                 .build())
///             .skuProfile(SkuProfileArgs.builder()
///                 .allocationStrategy("Prioritized")
///                 .vmSizes(
///                     SkuProfileVMSizeArgs.builder()
///                         .name("Standard_D8s_v5")
///                         .rank(0)
///                         .build(),
///                     SkuProfileVMSizeArgs.builder()
///                         .name("Standard_E16s_v5")
///                         .rank(1)
///                         .build(),
///                     SkuProfileVMSizeArgs.builder()
///                         .name("Standard_D2s_v5")
///                         .rank(2)
///                         .build())
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .billingProfile(BillingProfileArgs.builder()
///                     .maxPrice(-1.0)
///                     .build())
///                 .evictionPolicy("Deallocate")
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .priority("Spot")
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     orchestrationMode: azure_native.compute.OrchestrationMode.Flexible,
///     priorityMixPolicy: {
///         baseRegularPriorityCount: 4,
///         regularPriorityPercentageAboveBase: 50,
///     },
///     resourceGroupName: "myResourceGroup",
///     singlePlacementGroup: false,
///     sku: {
///         capacity: 10,
///         name: "Mix",
///     },
///     skuProfile: {
///         allocationStrategy: azure_native.compute.AllocationStrategy.Prioritized,
///         vmSizes: [
///             {
///                 name: "Standard_D8s_v5",
///                 rank: 0,
///             },
///             {
///                 name: "Standard_E16s_v5",
///                 rank: 1,
///             },
///             {
///                 name: "Standard_D2s_v5",
///                 rank: 2,
///             },
///         ],
///     },
///     virtualMachineProfile: {
///         billingProfile: {
///             maxPrice: -1,
///         },
///         evictionPolicy: azure_native.compute.VirtualMachineEvictionPolicyTypes.Deallocate,
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         priority: azure_native.compute.VirtualMachinePriorityTypes.Spot,
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     orchestration_mode=azure_native.compute.OrchestrationMode.FLEXIBLE,
///     priority_mix_policy={
///         "base_regular_priority_count": 4,
///         "regular_priority_percentage_above_base": 50,
///     },
///     resource_group_name="myResourceGroup",
///     single_placement_group=False,
///     sku={
///         "capacity": 10,
///         "name": "Mix",
///     },
///     sku_profile={
///         "allocation_strategy": azure_native.compute.AllocationStrategy.PRIORITIZED,
///         "vm_sizes": [
///             {
///                 "name": "Standard_D8s_v5",
///                 "rank": 0,
///             },
///             {
///                 "name": "Standard_E16s_v5",
///                 "rank": 1,
///             },
///             {
///                 "name": "Standard_D2s_v5",
///                 "rank": 2,
///             },
///         ],
///     },
///     virtual_machine_profile={
///         "billing_profile": {
///             "max_price": -1,
///         },
///         "eviction_policy": azure_native.compute.VirtualMachineEvictionPolicyTypes.DEALLOCATE,
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "priority": azure_native.compute.VirtualMachinePriorityTypes.SPOT,
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       orchestrationMode: Flexible
///       priorityMixPolicy:
///         baseRegularPriorityCount: 4
///         regularPriorityPercentageAboveBase: 50
///       resourceGroupName: myResourceGroup
///       singlePlacementGroup: false
///       sku:
///         capacity: 10
///         name: Mix
///       skuProfile:
///         allocationStrategy: Prioritized
///         vmSizes:
///           - name: Standard_D8s_v5
///             rank: 0
///           - name: Standard_E16s_v5
///             rank: 1
///           - name: Standard_D2s_v5
///             rank: 2
///       virtualMachineProfile:
///         billingProfile:
///           maxPrice: -1
///         evictionPolicy: Deallocate
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         priority: Spot
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with spot restore policy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 2,
///             Name = "Standard_A8m_v2",
///             Tier = "Standard",
///         },
///         SpotRestorePolicy = new AzureNative.Compute.Inputs.SpotRestorePolicyArgs
///         {
///             Enabled = true,
///             RestoreTimeout = "PT1H",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             BillingProfile = new AzureNative.Compute.Inputs.BillingProfileArgs
///             {
///                 MaxPrice = -1,
///             },
///             EvictionPolicy = AzureNative.Compute.VirtualMachineEvictionPolicyTypes.Deallocate,
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             Priority = AzureNative.Compute.VirtualMachinePriorityTypes.Spot,
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(2),
/// 				Name:     pulumi.String("Standard_A8m_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			SpotRestorePolicy: &compute.SpotRestorePolicyArgs{
/// 				Enabled:        pulumi.Bool(true),
/// 				RestoreTimeout: pulumi.String("PT1H"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				BillingProfile: &compute.BillingProfileArgs{
/// 					MaxPrice: pulumi.Float64(-1),
/// 				},
/// 				EvictionPolicy: pulumi.String(compute.VirtualMachineEvictionPolicyTypesDeallocate),
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				Priority: pulumi.String(compute.VirtualMachinePriorityTypesSpot),
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.SpotRestorePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.BillingProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(2.0)
///                 .name("Standard_A8m_v2")
///                 .tier("Standard")
///                 .build())
///             .spotRestorePolicy(SpotRestorePolicyArgs.builder()
///                 .enabled(true)
///                 .restoreTimeout("PT1H")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .billingProfile(BillingProfileArgs.builder()
///                     .maxPrice(-1.0)
///                     .build())
///                 .evictionPolicy("Deallocate")
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .priority("Spot")
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 2,
///         name: "Standard_A8m_v2",
///         tier: "Standard",
///     },
///     spotRestorePolicy: {
///         enabled: true,
///         restoreTimeout: "PT1H",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         billingProfile: {
///             maxPrice: -1,
///         },
///         evictionPolicy: azure_native.compute.VirtualMachineEvictionPolicyTypes.Deallocate,
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         priority: azure_native.compute.VirtualMachinePriorityTypes.Spot,
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 2,
///         "name": "Standard_A8m_v2",
///         "tier": "Standard",
///     },
///     spot_restore_policy={
///         "enabled": True,
///         "restore_timeout": "PT1H",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "billing_profile": {
///             "max_price": -1,
///         },
///         "eviction_policy": azure_native.compute.VirtualMachineEvictionPolicyTypes.DEALLOCATE,
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "priority": azure_native.compute.VirtualMachinePriorityTypes.SPOT,
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 2
///         name: Standard_A8m_v2
///         tier: Standard
///       spotRestorePolicy:
///         enabled: true
///         restoreTimeout: PT1H
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         billingProfile:
///           maxPrice: -1
///         evictionPolicy: Deallocate
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         priority: Spot
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with ssh authentication.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///                 LinuxConfiguration = new AzureNative.Compute.Inputs.LinuxConfigurationArgs
///                 {
///                     DisablePasswordAuthentication = true,
///                     Ssh = new AzureNative.Compute.Inputs.SshConfigurationArgs
///                     {
///                         PublicKeys = new[]
///                         {
///                             new AzureNative.Compute.Inputs.SshPublicKeyArgs
///                             {
///                                 KeyData = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeClRAk2ipUs/l5voIsDC5q9RI+YSRd1Bvd/O+axgY4WiBzG+4FwJWZm/mLLe5DoOdHQwmU2FrKXZSW4w2sYE70KeWnrFViCOX5MTVvJgPE8ClugNl8RWth/tU849DvM9sT7vFgfVSHcAS2yDRyDlueii+8nF2ym8XWAPltFVCyLHRsyBp5YPqK8JFYIa1eybKsY3hEAxRCA+/7bq8et+Gj3coOsuRmrehav7rE6N12Pb80I6ofa6SM5XNYq4Xk0iYNx7R3kdz0Jj9XgZYWjAHjJmT0gTRoOnt6upOuxK7xI/ykWrllgpXrCPu3Ymz+c+ujaqcxDopnAl2lmf69/J1",
///                                 Path = "/home/{your-username}/.ssh/authorized_keys",
///                             },
///                         },
///                     },
///                 },
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 					LinuxConfiguration: &compute.LinuxConfigurationArgs{
/// 						DisablePasswordAuthentication: pulumi.Bool(true),
/// 						Ssh: &compute.SshConfigurationArgs{
/// 							PublicKeys: compute.SshPublicKeyTypeArray{
/// 								&compute.SshPublicKeyTypeArgs{
/// 									KeyData: pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeClRAk2ipUs/l5voIsDC5q9RI+YSRd1Bvd/O+axgY4WiBzG+4FwJWZm/mLLe5DoOdHQwmU2FrKXZSW4w2sYE70KeWnrFViCOX5MTVvJgPE8ClugNl8RWth/tU849DvM9sT7vFgfVSHcAS2yDRyDlueii+8nF2ym8XWAPltFVCyLHRsyBp5YPqK8JFYIa1eybKsY3hEAxRCA+/7bq8et+Gj3coOsuRmrehav7rE6N12Pb80I6ofa6SM5XNYq4Xk0iYNx7R3kdz0Jj9XgZYWjAHjJmT0gTRoOnt6upOuxK7xI/ykWrllgpXrCPu3Ymz+c+ujaqcxDopnAl2lmf69/J1"),
/// 									Path:    pulumi.String("/home/{your-username}/.ssh/authorized_keys"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.LinuxConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.SshConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .linuxConfiguration(LinuxConfigurationArgs.builder()
///                         .disablePasswordAuthentication(true)
///                         .ssh(SshConfigurationArgs.builder()
///                             .publicKeys(SshPublicKeyArgs.builder()
///                                 .keyData("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeClRAk2ipUs/l5voIsDC5q9RI+YSRd1Bvd/O+axgY4WiBzG+4FwJWZm/mLLe5DoOdHQwmU2FrKXZSW4w2sYE70KeWnrFViCOX5MTVvJgPE8ClugNl8RWth/tU849DvM9sT7vFgfVSHcAS2yDRyDlueii+8nF2ym8XWAPltFVCyLHRsyBp5YPqK8JFYIa1eybKsY3hEAxRCA+/7bq8et+Gj3coOsuRmrehav7rE6N12Pb80I6ofa6SM5XNYq4Xk0iYNx7R3kdz0Jj9XgZYWjAHjJmT0gTRoOnt6upOuxK7xI/ykWrllgpXrCPu3Ymz+c+ujaqcxDopnAl2lmf69/J1")
///                                 .path("/home/{your-username}/.ssh/authorized_keys")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///             linuxConfiguration: {
///                 disablePasswordAuthentication: true,
///                 ssh: {
///                     publicKeys: [{
///                         keyData: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeClRAk2ipUs/l5voIsDC5q9RI+YSRd1Bvd/O+axgY4WiBzG+4FwJWZm/mLLe5DoOdHQwmU2FrKXZSW4w2sYE70KeWnrFViCOX5MTVvJgPE8ClugNl8RWth/tU849DvM9sT7vFgfVSHcAS2yDRyDlueii+8nF2ym8XWAPltFVCyLHRsyBp5YPqK8JFYIa1eybKsY3hEAxRCA+/7bq8et+Gj3coOsuRmrehav7rE6N12Pb80I6ofa6SM5XNYq4Xk0iYNx7R3kdz0Jj9XgZYWjAHjJmT0gTRoOnt6upOuxK7xI/ykWrllgpXrCPu3Ymz+c+ujaqcxDopnAl2lmf69/J1",
///                         path: "/home/{your-username}/.ssh/authorized_keys",
///                     }],
///                 },
///             },
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///             "linux_configuration": {
///                 "disable_password_authentication": True,
///                 "ssh": {
///                     "public_keys": [{
///                         "key_data": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeClRAk2ipUs/l5voIsDC5q9RI+YSRd1Bvd/O+axgY4WiBzG+4FwJWZm/mLLe5DoOdHQwmU2FrKXZSW4w2sYE70KeWnrFViCOX5MTVvJgPE8ClugNl8RWth/tU849DvM9sT7vFgfVSHcAS2yDRyDlueii+8nF2ym8XWAPltFVCyLHRsyBp5YPqK8JFYIa1eybKsY3hEAxRCA+/7bq8et+Gj3coOsuRmrehav7rE6N12Pb80I6ofa6SM5XNYq4Xk0iYNx7R3kdz0Jj9XgZYWjAHjJmT0gTRoOnt6upOuxK7xI/ykWrllgpXrCPu3Ymz+c+ujaqcxDopnAl2lmf69/J1",
///                         "path": "/home/{your-username}/.ssh/authorized_keys",
///                     }],
///                 },
///             },
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///           linuxConfiguration:
///             disablePasswordAuthentication: true
///             ssh:
///               publicKeys:
///                 - keyData: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeClRAk2ipUs/l5voIsDC5q9RI+YSRd1Bvd/O+axgY4WiBzG+4FwJWZm/mLLe5DoOdHQwmU2FrKXZSW4w2sYE70KeWnrFViCOX5MTVvJgPE8ClugNl8RWth/tU849DvM9sT7vFgfVSHcAS2yDRyDlueii+8nF2ym8XWAPltFVCyLHRsyBp5YPqK8JFYIa1eybKsY3hEAxRCA+/7bq8et+Gj3coOsuRmrehav7rE6N12Pb80I6ofa6SM5XNYq4Xk0iYNx7R3kdz0Jj9XgZYWjAHjJmT0gTRoOnt6upOuxK7xI/ykWrllgpXrCPu3Ymz+c+ujaqcxDopnAl2lmf69/J1
///                   path: /home/{your-username}/.ssh/authorized_keys
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with terminate scheduled events enabled.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             ScheduledEventsProfile = new AzureNative.Compute.Inputs.ScheduledEventsProfileArgs
///             {
///                 TerminateNotificationProfile = new AzureNative.Compute.Inputs.TerminateNotificationProfileArgs
///                 {
///                     Enable = true,
///                     NotBeforeTimeout = "PT5M",
///                 },
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				ScheduledEventsProfile: &compute.ScheduledEventsProfileArgs{
/// 					TerminateNotificationProfile: &compute.TerminateNotificationProfileArgs{
/// 						Enable:           pulumi.Bool(true),
/// 						NotBeforeTimeout: pulumi.String("PT5M"),
/// 					},
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ScheduledEventsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.TerminateNotificationProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .scheduledEventsProfile(ScheduledEventsProfileArgs.builder()
///                     .terminateNotificationProfile(TerminateNotificationProfileArgs.builder()
///                         .enable(true)
///                         .notBeforeTimeout("PT5M")
///                         .build())
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         scheduledEventsProfile: {
///             terminateNotificationProfile: {
///                 enable: true,
///                 notBeforeTimeout: "PT5M",
///             },
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "scheduled_events_profile": {
///             "terminate_notification_profile": {
///                 "enable": True,
///                 "not_before_timeout": "PT5M",
///             },
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         scheduledEventsProfile:
///           terminateNotificationProfile:
///             enable: true
///             notBeforeTimeout: PT5M
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with userData.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///             UserData = "RXhhbXBsZSBVc2VyRGF0YQ==",
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 				UserData: pulumi.String("RXhhbXBsZSBVc2VyRGF0YQ=="),
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .userData("RXhhbXBsZSBVc2VyRGF0YQ==")
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///         userData: "RXhhbXBsZSBVc2VyRGF0YQ==",
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///         "user_data": "RXhhbXBsZSBVc2VyRGF0YQ==",
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///         userData: RXhhbXBsZSBVc2VyRGF0YQ==
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with virtual machines in different zones.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "centralus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 2,
///             Name = "Standard_A1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Automatic,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 DataDisks = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetDataDiskArgs
///                     {
///                         CreateOption = AzureNative.Compute.DiskCreateOptionTypes.Empty,
///                         DiskSizeGB = 1023,
///                         Lun = 0,
///                     },
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetDataDiskArgs
///                     {
///                         CreateOption = AzureNative.Compute.DiskCreateOptionTypes.Empty,
///                         DiskSizeGB = 1023,
///                         Lun = 1,
///                     },
///                 },
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     DiskSizeGB = 512,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
///         Zones = new[]
///         {
///             "1",
///             "3",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("centralus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(2),
/// 				Name:     pulumi.String("Standard_A1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeAutomatic,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					DataDisks: compute.VirtualMachineScaleSetDataDiskArray{
/// 						&compute.VirtualMachineScaleSetDataDiskArgs{
/// 							CreateOption: pulumi.String(compute.DiskCreateOptionTypesEmpty),
/// 							DiskSizeGB:   pulumi.Int(1023),
/// 							Lun:          pulumi.Int(0),
/// 						},
/// 						&compute.VirtualMachineScaleSetDataDiskArgs{
/// 							CreateOption: pulumi.String(compute.DiskCreateOptionTypesEmpty),
/// 							DiskSizeGB:   pulumi.Int(1023),
/// 							Lun:          pulumi.Int(1),
/// 						},
/// 					},
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						DiskSizeGB:   pulumi.Int(512),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 				pulumi.String("3"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("centralus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(2.0)
///                 .name("Standard_A1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Automatic")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .dataDisks(
///                         VirtualMachineScaleSetDataDiskArgs.builder()
///                             .createOption("Empty")
///                             .diskSizeGB(1023)
///                             .lun(0)
///                             .build(),
///                         VirtualMachineScaleSetDataDiskArgs.builder()
///                             .createOption("Empty")
///                             .diskSizeGB(1023)
///                             .lun(1)
///                             .build())
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .diskSizeGB(512)
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
///             .zones(
///                 "1",
///                 "3")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "centralus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 2,
///         name: "Standard_A1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Automatic,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             dataDisks: [
///                 {
///                     createOption: azure_native.compute.DiskCreateOptionTypes.Empty,
///                     diskSizeGB: 1023,
///                     lun: 0,
///                 },
///                 {
///                     createOption: azure_native.compute.DiskCreateOptionTypes.Empty,
///                     diskSizeGB: 1023,
///                     lun: 1,
///                 },
///             ],
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 diskSizeGB: 512,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
///     zones: [
///         "1",
///         "3",
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="centralus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 2,
///         "name": "Standard_A1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.AUTOMATIC,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "data_disks": [
///                 {
///                     "create_option": azure_native.compute.DiskCreateOptionTypes.EMPTY,
///                     "disk_size_gb": 1023,
///                     "lun": 0,
///                 },
///                 {
///                     "create_option": azure_native.compute.DiskCreateOptionTypes.EMPTY,
///                     "disk_size_gb": 1023,
///                     "lun": 1,
///                 },
///             ],
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "disk_size_gb": 512,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}",
///     zones=[
///         "1",
///         "3",
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: centralus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 2
///         name: Standard_A1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Automatic
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           dataDisks:
///             - createOption: Empty
///               diskSizeGB: 1023
///               lun: 0
///             - createOption: Empty
///               diskSizeGB: 1023
///               lun: 1
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             diskSizeGB: 512
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///       zones:
///         - '1'
///         - '3'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with vm size properties
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             HardwareProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetHardwareProfileArgs
///             {
///                 VmSizeProperties = new AzureNative.Compute.Inputs.VMSizePropertiesArgs
///                 {
///                     VCPUsAvailable = 1,
///                     VCPUsPerCore = 1,
///                 },
///             },
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///             UserData = "RXhhbXBsZSBVc2VyRGF0YQ==",
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				HardwareProfile: &compute.VirtualMachineScaleSetHardwareProfileArgs{
/// 					VmSizeProperties: &compute.VMSizePropertiesArgs{
/// 						VCPUsAvailable: pulumi.Int(1),
/// 						VCPUsPerCore:   pulumi.Int(1),
/// 					},
/// 				},
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 				UserData: pulumi.String("RXhhbXBsZSBVc2VyRGF0YQ=="),
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetHardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VMSizePropertiesArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .hardwareProfile(VirtualMachineScaleSetHardwareProfileArgs.builder()
///                     .vmSizeProperties(VMSizePropertiesArgs.builder()
///                         .vCPUsAvailable(1)
///                         .vCPUsPerCore(1)
///                         .build())
///                     .build())
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .userData("RXhhbXBsZSBVc2VyRGF0YQ==")
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         hardwareProfile: {
///             vmSizeProperties: {
///                 vCPUsAvailable: 1,
///                 vCPUsPerCore: 1,
///             },
///         },
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///         userData: "RXhhbXBsZSBVc2VyRGF0YQ==",
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "hardware_profile": {
///             "vm_size_properties": {
///                 "v_cpus_available": 1,
///                 "v_cpus_per_core": 1,
///             },
///         },
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///         "user_data": "RXhhbXBsZSBVc2VyRGF0YQ==",
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         hardwareProfile:
///           vmSizeProperties:
///             vCPUsAvailable: 1
///             vCPUsPerCore: 1
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///         userData: RXhhbXBsZSBVc2VyRGF0YQ==
///       vmScaleSetName: '{vmss-name}'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a scale set with zonalPlatformFaultDomainAlignMode as Aligned
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
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
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_D1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
///         ZonalPlatformFaultDomainAlignMode = AzureNative.Compute.ZonalPlatformFaultDomainAlignMode.Aligned,
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
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
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_D1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName:                    pulumi.String("{vmss-name}"),
/// 			ZonalPlatformFaultDomainAlignMode: pulumi.String(compute.ZonalPlatformFaultDomainAlignModeAligned),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.ScheduledEventsPolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.ScheduledEventsAdditionalPublishingTargetsArgs;
/// import com.pulumi.azurenative.compute.inputs.EventGridAndResourceGraphArgs;
/// import com.pulumi.azurenative.compute.inputs.UserInitiatedRebootArgs;
/// import com.pulumi.azurenative.compute.inputs.UserInitiatedRedeployArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
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
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_D1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
///             .zonalPlatformFaultDomainAlignMode("Aligned")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
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
///     sku: {
///         capacity: 3,
///         name: "Standard_D1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
///     zonalPlatformFaultDomainAlignMode: azure_native.compute.ZonalPlatformFaultDomainAlignMode.Aligned,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
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
///     sku={
///         "capacity": 3,
///         "name": "Standard_D1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}",
///     zonal_platform_fault_domain_align_mode=azure_native.compute.ZonalPlatformFaultDomainAlignMode.ALIGNED)
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       scheduledEventsPolicy:
///         scheduledEventsAdditionalPublishingTargets:
///           eventGridAndResourceGraph:
///             enable: true
///         userInitiatedReboot:
///           automaticallyApprove: true
///         userInitiatedRedeploy:
///           automaticallyApprove: true
///       sku:
///         capacity: 3
///         name: Standard_D1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
///       zonalPlatformFaultDomainAlignMode: Aligned
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a scale set with capacity reservation.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSet = new AzureNative.Compute.VirtualMachineScaleSet("virtualMachineScaleSet", new()
///     {
///         Location = "westus",
///         Overprovision = true,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 3,
///             Name = "Standard_DS1_v2",
///             Tier = "Standard",
///         },
///         UpgradePolicy = new AzureNative.Compute.Inputs.UpgradePolicyArgs
///         {
///             Mode = AzureNative.Compute.UpgradeMode.Manual,
///         },
///         VirtualMachineProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProfileArgs
///         {
///             CapacityReservation = new AzureNative.Compute.Inputs.CapacityReservationProfileArgs
///             {
///                 CapacityReservationGroup = new AzureNative.Compute.Inputs.SubResourceArgs
///                 {
///                     Id = "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/CapacityReservationGroups/{crgName}",
///                 },
///             },
///             NetworkProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkProfileArgs
///             {
///                 NetworkInterfaceConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                     {
///                         EnableIPForwarding = true,
///                         IpConfigurations = new[]
///                         {
///                             new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                             {
///                                 Name = "{vmss-name}",
///                                 Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                                 {
///                                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                                 },
///                             },
///                         },
///                         Name = "{vmss-name}",
///                         Primary = true,
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSProfileArgs
///             {
///                 AdminPassword = "{your-password}",
///                 AdminUsername = "{your-username}",
///                 ComputerNamePrefix = "{vmss-name}",
///             },
///             StorageProfile = new AzureNative.Compute.Inputs.VirtualMachineScaleSetStorageProfileArgs
///             {
///                 ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter",
///                     Version = "latest",
///                 },
///                 OsDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetOSDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.ReadWrite,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                     ManagedDisk = new AzureNative.Compute.Inputs.VirtualMachineScaleSetManagedDiskParametersArgs
///                     {
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                 },
///             },
///         },
///         VmScaleSetName = "{vmss-name}",
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
/// 		_, err := compute.NewVirtualMachineScaleSet(ctx, "virtualMachineScaleSet", &compute.VirtualMachineScaleSetArgs{
/// 			Location:          pulumi.String("westus"),
/// 			Overprovision:     pulumi.Bool(true),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(3),
/// 				Name:     pulumi.String("Standard_DS1_v2"),
/// 				Tier:     pulumi.String("Standard"),
/// 			},
/// 			UpgradePolicy: &compute.UpgradePolicyArgs{
/// 				Mode: compute.UpgradeModeManual,
/// 			},
/// 			VirtualMachineProfile: &compute.VirtualMachineScaleSetVMProfileArgs{
/// 				CapacityReservation: &compute.CapacityReservationProfileArgs{
/// 					CapacityReservationGroup: &compute.SubResourceArgs{
/// 						Id: pulumi.String("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/CapacityReservationGroups/{crgName}"),
/// 					},
/// 				},
/// 				NetworkProfile: &compute.VirtualMachineScaleSetNetworkProfileArgs{
/// 					NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 						&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 							EnableIPForwarding: pulumi.Bool(true),
/// 							IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 								&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 									Name: pulumi.String("{vmss-name}"),
/// 									Subnet: &compute.ApiEntityReferenceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}"),
/// 									},
/// 								},
/// 							},
/// 							Name:    pulumi.String("{vmss-name}"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.VirtualMachineScaleSetOSProfileArgs{
/// 					AdminPassword:      pulumi.String("{your-password}"),
/// 					AdminUsername:      pulumi.String("{your-username}"),
/// 					ComputerNamePrefix: pulumi.String("{vmss-name}"),
/// 				},
/// 				StorageProfile: &compute.VirtualMachineScaleSetStorageProfileArgs{
/// 					ImageReference: &compute.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsDisk: &compute.VirtualMachineScaleSetOSDiskArgs{
/// 						Caching:      compute.CachingTypesReadWrite,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 						ManagedDisk: &compute.VirtualMachineScaleSetManagedDiskParametersArgs{
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmScaleSetName: pulumi.String("{vmss-name}"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSet;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
/// import com.pulumi.azurenative.compute.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.CapacityReservationProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetManagedDiskParametersArgs;
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
///         var virtualMachineScaleSet = new VirtualMachineScaleSet("virtualMachineScaleSet", VirtualMachineScaleSetArgs.builder()
///             .location("westus")
///             .overprovision(true)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(3.0)
///                 .name("Standard_DS1_v2")
///                 .tier("Standard")
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .mode("Manual")
///                 .build())
///             .virtualMachineProfile(VirtualMachineScaleSetVMProfileArgs.builder()
///                 .capacityReservation(CapacityReservationProfileArgs.builder()
///                     .capacityReservationGroup(SubResourceArgs.builder()
///                         .id("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/CapacityReservationGroups/{crgName}")
///                         .build())
///                     .build())
///                 .networkProfile(VirtualMachineScaleSetNetworkProfileArgs.builder()
///                     .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                         .enableIPForwarding(true)
///                         .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                             .name("{vmss-name}")
///                             .subnet(ApiEntityReferenceArgs.builder()
///                                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}")
///                                 .build())
///                             .build())
///                         .name("{vmss-name}")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .osProfile(VirtualMachineScaleSetOSProfileArgs.builder()
///                     .adminPassword("{your-password}")
///                     .adminUsername("{your-username}")
///                     .computerNamePrefix("{vmss-name}")
///                     .build())
///                 .storageProfile(VirtualMachineScaleSetStorageProfileArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter")
///                         .version("latest")
///                         .build())
///                     .osDisk(VirtualMachineScaleSetOSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .createOption("FromImage")
///                         .managedDisk(VirtualMachineScaleSetManagedDiskParametersArgs.builder()
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .vmScaleSetName("{vmss-name}")
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
/// const virtualMachineScaleSet = new azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet", {
///     location: "westus",
///     overprovision: true,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 3,
///         name: "Standard_DS1_v2",
///         tier: "Standard",
///     },
///     upgradePolicy: {
///         mode: azure_native.compute.UpgradeMode.Manual,
///     },
///     virtualMachineProfile: {
///         capacityReservation: {
///             capacityReservationGroup: {
///                 id: "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/CapacityReservationGroups/{crgName}",
///             },
///         },
///         networkProfile: {
///             networkInterfaceConfigurations: [{
///                 enableIPForwarding: true,
///                 ipConfigurations: [{
///                     name: "{vmss-name}",
///                     subnet: {
///                         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 name: "{vmss-name}",
///                 primary: true,
///             }],
///         },
///         osProfile: {
///             adminPassword: "{your-password}",
///             adminUsername: "{your-username}",
///             computerNamePrefix: "{vmss-name}",
///         },
///         storageProfile: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter",
///                 version: "latest",
///             },
///             osDisk: {
///                 caching: azure_native.compute.CachingTypes.ReadWrite,
///                 createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///                 managedDisk: {
///                     storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///                 },
///             },
///         },
///     },
///     vmScaleSetName: "{vmss-name}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set = azure_native.compute.VirtualMachineScaleSet("virtualMachineScaleSet",
///     location="westus",
///     overprovision=True,
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": 3,
///         "name": "Standard_DS1_v2",
///         "tier": "Standard",
///     },
///     upgrade_policy={
///         "mode": azure_native.compute.UpgradeMode.MANUAL,
///     },
///     virtual_machine_profile={
///         "capacity_reservation": {
///             "capacity_reservation_group": {
///                 "id": "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/CapacityReservationGroups/{crgName}",
///             },
///         },
///         "network_profile": {
///             "network_interface_configurations": [{
///                 "enable_ip_forwarding": True,
///                 "ip_configurations": [{
///                     "name": "{vmss-name}",
///                     "subnet": {
///                         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}",
///                     },
///                 }],
///                 "name": "{vmss-name}",
///                 "primary": True,
///             }],
///         },
///         "os_profile": {
///             "admin_password": "{your-password}",
///             "admin_username": "{your-username}",
///             "computer_name_prefix": "{vmss-name}",
///         },
///         "storage_profile": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter",
///                 "version": "latest",
///             },
///             "os_disk": {
///                 "caching": azure_native.compute.CachingTypes.READ_WRITE,
///                 "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///                 },
///             },
///         },
///     },
///     vm_scale_set_name="{vmss-name}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSet:
///     type: azure-native:compute:VirtualMachineScaleSet
///     properties:
///       location: westus
///       overprovision: true
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 3
///         name: Standard_DS1_v2
///         tier: Standard
///       upgradePolicy:
///         mode: Manual
///       virtualMachineProfile:
///         capacityReservation:
///           capacityReservationGroup:
///             id: subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/CapacityReservationGroups/{crgName}
///         networkProfile:
///           networkInterfaceConfigurations:
///             - enableIPForwarding: true
///               ipConfigurations:
///                 - name: '{vmss-name}'
///                   subnet:
///                     id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/{existing-virtual-network-name}/subnets/{existing-subnet-name}
///               name: '{vmss-name}'
///               primary: true
///         osProfile:
///           adminPassword: '{your-password}'
///           adminUsername: '{your-username}'
///           computerNamePrefix: '{vmss-name}'
///         storageProfile:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter
///             version: latest
///           osDisk:
///             caching: ReadWrite
///             createOption: FromImage
///             managedDisk:
///               storageAccountType: Standard_LRS
///       vmScaleSetName: '{vmss-name}'
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
/// $ pulumi import azure-native:compute:VirtualMachineScaleSet {vmss-name} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}
/// ```
class VirtualMachineScaleSet extends pulumi.CustomResource {
  /// Specifies additional capabilities enabled or disabled on the Virtual Machines in the Virtual Machine Scale Set. For instance: whether the Virtual Machines have the capability to support attaching managed data disks with UltraSSD_LRS storage account type.
  late final pulumi.Output<AdditionalCapabilitiesResponse?>
  additionalCapabilities;

  /// Policy for automatic repairs.
  late final pulumi.Output<AutomaticRepairsPolicyResponse?>
  automaticRepairsPolicy;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Optional property which must either be set to True or omitted.
  late final pulumi.Output<bool?> constrainedMaximumCapacity;

  /// When Overprovision is enabled, extensions are launched only on the requested number of VMs which are finally kept. This property will hence ensure that the extensions do not run on the extra overprovisioned VMs.
  late final pulumi.Output<bool?> doNotRunExtensionsOnOverprovisionedVMs;

  /// Etag is property returned in Create/Update/Get response of the VMSS, so that customer can supply it in the header to ensure optimistic updates
  late final pulumi.Output<String> etag;

  /// The extended location of the Virtual Machine Scale Set.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// Specifies information about the dedicated host group that the virtual machine scale set resides in. Minimum api-version: 2020-06-01.
  late final pulumi.Output<SubResourceResponse?> hostGroup;

  /// The identity of the virtual machine scale set, if configured.
  late final pulumi.Output<VirtualMachineScaleSetIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Specifies the orchestration mode for the virtual machine scale set.
  late final pulumi.Output<String?> orchestrationMode;

  /// Specifies whether the Virtual Machine Scale Set should be overprovisioned.
  late final pulumi.Output<bool?> overprovision;

  /// Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started -&gt;**. Enter any required information and then click **Save**.
  late final pulumi.Output<PlanResponse?> plan;

  /// Fault Domain count for each placement group.
  late final pulumi.Output<int?> platformFaultDomainCount;

  /// Specifies the desired targets for mixing Spot and Regular priority VMs within the same VMSS Flex instance.
  late final pulumi.Output<PriorityMixPolicyResponse?> priorityMixPolicy;

  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;

  /// Specifies information about the proximity placement group that the virtual machine scale set should be assigned to. Minimum api-version: 2018-04-01.
  late final pulumi.Output<SubResourceResponse?> proximityPlacementGroup;

  /// Policy for Resiliency
  late final pulumi.Output<ResiliencyPolicyResponse?> resiliencyPolicy;

  /// Specifies the policies applied when scaling in Virtual Machines in the Virtual Machine Scale Set.
  late final pulumi.Output<ScaleInPolicyResponse?> scaleInPolicy;

  /// The ScheduledEventsPolicy.
  late final pulumi.Output<ScheduledEventsPolicyResponse?>
  scheduledEventsPolicy;

  /// When true this limits the scale set to a single placement group, of max size 100 virtual machines. NOTE: If singlePlacementGroup is true, it may be modified to false. However, if singlePlacementGroup is false, it may not be modified to true.
  late final pulumi.Output<bool?> singlePlacementGroup;

  /// The virtual machine scale set sku.
  late final pulumi.Output<SkuResponse?> sku;

  /// Specifies the sku profile for the virtual machine scale set.
  late final pulumi.Output<SkuProfileResponse?> skuProfile;

  /// Specifies the Spot Restore properties for the virtual machine scale set.
  late final pulumi.Output<SpotRestorePolicyResponse?> spotRestorePolicy;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Specifies the time at which the Virtual Machine Scale Set resource was created. Minimum api-version: 2021-11-01.
  late final pulumi.Output<String> timeCreated;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Specifies the ID which uniquely identifies a Virtual Machine Scale Set.
  late final pulumi.Output<String> uniqueId;

  /// The upgrade policy.
  late final pulumi.Output<UpgradePolicyResponse?> upgradePolicy;

  /// The virtual machine profile.
  late final pulumi.Output<VirtualMachineScaleSetVMProfileResponse?>
  virtualMachineProfile;

  /// Specifies the align mode between Virtual Machine Scale Set compute and storage Fault Domain count.
  late final pulumi.Output<String?> zonalPlatformFaultDomainAlignMode;

  /// Whether to force strictly even Virtual Machine distribution cross x-zones in case there is zone outage. zoneBalance property can only be set if the zones property of the scale set contains more than one zone. If there are no zones or only one zone specified, then zoneBalance property should not be set.
  late final pulumi.Output<bool?> zoneBalance;

  /// The availability zones.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [VirtualMachineScaleSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineScaleSet]. {@macro pulumi_compute_virtual_machine_scale_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineScaleSet(
    String name, {
    VirtualMachineScaleSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:compute:VirtualMachineScaleSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalCapabilities = registerOutput<AdditionalCapabilitiesResponse?>(
      'additionalCapabilities',
    );
    automaticRepairsPolicy = registerOutput<AutomaticRepairsPolicyResponse?>(
      'automaticRepairsPolicy',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    constrainedMaximumCapacity = registerOutput<bool?>(
      'constrainedMaximumCapacity',
    );
    doNotRunExtensionsOnOverprovisionedVMs = registerOutput<bool?>(
      'doNotRunExtensionsOnOverprovisionedVMs',
    );
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
    );
    hostGroup = registerOutput<SubResourceResponse?>('hostGroup');
    identity = registerOutput<VirtualMachineScaleSetIdentityResponse?>(
      'identity',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    orchestrationMode = registerOutput<String?>('orchestrationMode');
    overprovision = registerOutput<bool?>('overprovision');
    plan = registerOutput<PlanResponse?>('plan');
    platformFaultDomainCount = registerOutput<int?>('platformFaultDomainCount');
    priorityMixPolicy = registerOutput<PriorityMixPolicyResponse?>(
      'priorityMixPolicy',
    );
    provisioningState = registerOutput<String>('provisioningState');
    proximityPlacementGroup = registerOutput<SubResourceResponse?>(
      'proximityPlacementGroup',
    );
    resiliencyPolicy = registerOutput<ResiliencyPolicyResponse?>(
      'resiliencyPolicy',
    );
    scaleInPolicy = registerOutput<ScaleInPolicyResponse?>('scaleInPolicy');
    scheduledEventsPolicy = registerOutput<ScheduledEventsPolicyResponse?>(
      'scheduledEventsPolicy',
    );
    singlePlacementGroup = registerOutput<bool?>('singlePlacementGroup');
    sku = registerOutput<SkuResponse?>('sku');
    skuProfile = registerOutput<SkuProfileResponse?>('skuProfile');
    spotRestorePolicy = registerOutput<SpotRestorePolicyResponse?>(
      'spotRestorePolicy',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    timeCreated = registerOutput<String>('timeCreated');
    type = registerOutput<String>('type');
    uniqueId = registerOutput<String>('uniqueId');
    upgradePolicy = registerOutput<UpgradePolicyResponse?>('upgradePolicy');
    virtualMachineProfile =
        registerOutput<VirtualMachineScaleSetVMProfileResponse?>(
          'virtualMachineProfile',
        );
    zonalPlatformFaultDomainAlignMode = registerOutput<String?>(
      'zonalPlatformFaultDomainAlignMode',
    );
    zoneBalance = registerOutput<bool?>('zoneBalance');
    zones = registerOutput<List<String>?>('zones');
  }
}
