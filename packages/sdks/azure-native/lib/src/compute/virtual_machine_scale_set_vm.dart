import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_capabilities_response.dart';
import 'diagnostics_profile_response.dart';
import 'hardware_profile_response.dart';
import 'network_profile_response.dart';
import 'osprofile_response.dart';
import 'plan_response.dart';
import 'security_profile_response.dart';
import 'sku_response.dart';
import 'storage_profile_response.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_identity_response.dart';
import 'virtual_machine_scale_set_vmargs.dart';
import 'virtual_machine_scale_set_vminstance_view_response.dart';
import 'virtual_machine_scale_set_vmnetwork_profile_configuration_response.dart';
import 'virtual_machine_scale_set_vmprotection_policy_response.dart';

/// Describes a virtual machine scale set virtual machine.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VirtualMachineScaleSetVM_Update_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSetVM = new AzureNative.Compute.VirtualMachineScaleSetVM("virtualMachineScaleSetVM", new()
///     {
///         AdditionalCapabilities = new AzureNative.Compute.Inputs.AdditionalCapabilitiesArgs
///         {
///             HibernationEnabled = true,
///             UltraSSDEnabled = true,
///         },
///         AvailabilitySet = new AzureNative.Compute.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///         },
///         DiagnosticsProfile = new AzureNative.Compute.Inputs.DiagnosticsProfileArgs
///         {
///             BootDiagnostics = new AzureNative.Compute.Inputs.BootDiagnosticsArgs
///             {
///                 Enabled = true,
///                 StorageUri = "aaaaaaaaaaaaa",
///             },
///         },
///         HardwareProfile = new AzureNative.Compute.Inputs.HardwareProfileArgs
///         {
///             VmSize = AzureNative.Compute.VirtualMachineSizeTypes.Basic_A0,
///             VmSizeProperties = new AzureNative.Compute.Inputs.VMSizePropertiesArgs
///             {
///                 VCPUsAvailable = 9,
///                 VCPUsPerCore = 12,
///             },
///         },
///         InstanceId = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
///         LicenseType = "aaaaaaaaaa",
///         Location = "westus",
///         NetworkProfile = new AzureNative.Compute.Inputs.NetworkProfileArgs
///         {
///             NetworkApiVersion = AzureNative.Compute.NetworkApiVersion.NetworkApiVersion_2020_11_01,
///             NetworkInterfaceConfigurations = new[]
///             {
///                 new AzureNative.Compute.Inputs.VirtualMachineNetworkInterfaceConfigurationArgs
///                 {
///                     DeleteOption = AzureNative.Compute.DeleteOptions.Delete,
///                     DnsSettings = new AzureNative.Compute.Inputs.VirtualMachineNetworkInterfaceDnsSettingsConfigurationArgs
///                     {
///                         DnsServers = new[]
///                         {
///                             "aaaaaa",
///                         },
///                     },
///                     DscpConfiguration = new AzureNative.Compute.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                     },
///                     EnableAcceleratedNetworking = true,
///                     EnableFpga = true,
///                     EnableIPForwarding = true,
///                     IpConfigurations = new[]
///                     {
///                         new AzureNative.Compute.Inputs.VirtualMachineNetworkInterfaceIPConfigurationArgs
///                         {
///                             ApplicationGatewayBackendAddressPools = new[]
///                             {
///                                 new AzureNative.Compute.Inputs.SubResourceArgs
///                                 {
///                                     Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                                 },
///                             },
///                             ApplicationSecurityGroups = new[]
///                             {
///                                 new AzureNative.Compute.Inputs.SubResourceArgs
///                                 {
///                                     Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                                 },
///                             },
///                             LoadBalancerBackendAddressPools = new[]
///                             {
///                                 new AzureNative.Compute.Inputs.SubResourceArgs
///                                 {
///                                     Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                                 },
///                             },
///                             Name = "aa",
///                             Primary = true,
///                             PrivateIPAddressVersion = AzureNative.Compute.IPVersions.IPv4,
///                             PublicIPAddressConfiguration = new AzureNative.Compute.Inputs.VirtualMachinePublicIPAddressConfigurationArgs
///                             {
///                                 DeleteOption = AzureNative.Compute.DeleteOptions.Delete,
///                                 DnsSettings = new AzureNative.Compute.Inputs.VirtualMachinePublicIPAddressDnsSettingsConfigurationArgs
///                                 {
///                                     DomainNameLabel = "aaaaaaaaaaaaaaaaaaaaaaaaa",
///                                 },
///                                 IdleTimeoutInMinutes = 2,
///                                 IpTags = new[]
///                                 {
///                                     new AzureNative.Compute.Inputs.VirtualMachineIpTagArgs
///                                     {
///                                         IpTagType = "aaaaaaaaaaaaaaaaaaaaaaaaa",
///                                         Tag = "aaaaaaaaaaaaaaaaaaaa",
///                                     },
///                                 },
///                                 Name = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
///                                 PublicIPAddressVersion = AzureNative.Compute.IPVersions.IPv4,
///                                 PublicIPAllocationMethod = AzureNative.Compute.PublicIPAllocationMethod.Dynamic,
///                                 PublicIPPrefix = new AzureNative.Compute.Inputs.SubResourceArgs
///                                 {
///                                     Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                                 },
///                                 Sku = new AzureNative.Compute.Inputs.PublicIPAddressSkuArgs
///                                 {
///                                     Name = AzureNative.Compute.PublicIPAddressSkuName.Basic,
///                                     Tier = AzureNative.Compute.PublicIPAddressSkuTier.Regional,
///                                 },
///                             },
///                             Subnet = new AzureNative.Compute.Inputs.SubResourceArgs
///                             {
///                                 Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                             },
///                         },
///                     },
///                     Name = "aaaaaaaaaaa",
///                     NetworkSecurityGroup = new AzureNative.Compute.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                     },
///                     Primary = true,
///                 },
///             },
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.Compute.Inputs.NetworkInterfaceReferenceArgs
///                 {
///                     DeleteOption = AzureNative.Compute.DeleteOptions.Delete,
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachineScaleSets/{vmss-name}/virtualMachines/0/networkInterfaces/vmsstestnetconfig5415",
///                     Primary = true,
///                 },
///             },
///         },
///         NetworkProfileConfiguration = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMNetworkProfileConfigurationArgs
///         {
///             NetworkInterfaceConfigurations = new[]
///             {
///                 new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationArgs
///                 {
///                     DeleteOption = AzureNative.Compute.DeleteOptions.Delete,
///                     DnsSettings = new AzureNative.Compute.Inputs.VirtualMachineScaleSetNetworkConfigurationDnsSettingsArgs
///                     {
///                         DnsServers = new() { },
///                     },
///                     EnableAcceleratedNetworking = true,
///                     EnableFpga = true,
///                     EnableIPForwarding = true,
///                     IpConfigurations = new[]
///                     {
///                         new AzureNative.Compute.Inputs.VirtualMachineScaleSetIPConfigurationArgs
///                         {
///                             ApplicationGatewayBackendAddressPools = new[]
///                             {
///                                 new AzureNative.Compute.Inputs.SubResourceArgs
///                                 {
///                                     Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                                 },
///                             },
///                             ApplicationSecurityGroups = new[]
///                             {
///                                 new AzureNative.Compute.Inputs.SubResourceArgs
///                                 {
///                                     Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                                 },
///                             },
///                             LoadBalancerBackendAddressPools = new[]
///                             {
///                                 new AzureNative.Compute.Inputs.SubResourceArgs
///                                 {
///                                     Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                                 },
///                             },
///                             LoadBalancerInboundNatPools = new[]
///                             {
///                                 new AzureNative.Compute.Inputs.SubResourceArgs
///                                 {
///                                     Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                                 },
///                             },
///                             Name = "vmsstestnetconfig9693",
///                             Primary = true,
///                             PrivateIPAddressVersion = AzureNative.Compute.IPVersion.IPv4,
///                             PublicIPAddressConfiguration = new AzureNative.Compute.Inputs.VirtualMachineScaleSetPublicIPAddressConfigurationArgs
///                             {
///                                 DeleteOption = AzureNative.Compute.DeleteOptions.Delete,
///                                 DnsSettings = new AzureNative.Compute.Inputs.VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsArgs
///                                 {
///                                     DomainNameLabel = "aaaaaaaaaaaaaaaaaa",
///                                 },
///                                 IdleTimeoutInMinutes = 18,
///                                 IpTags = new[]
///                                 {
///                                     new AzureNative.Compute.Inputs.VirtualMachineScaleSetIpTagArgs
///                                     {
///                                         IpTagType = "aaaaaaa",
///                                         Tag = "aaaaaaaaaaaaaaaaaaaaaaaaaaa",
///                                     },
///                                 },
///                                 Name = "aaaaaaaaaaaaaaaaaa",
///                                 PublicIPAddressVersion = AzureNative.Compute.IPVersion.IPv4,
///                                 PublicIPPrefix = new AzureNative.Compute.Inputs.SubResourceArgs
///                                 {
///                                     Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                                 },
///                                 Sku = new AzureNative.Compute.Inputs.PublicIPAddressSkuArgs
///                                 {
///                                     Name = AzureNative.Compute.PublicIPAddressSkuName.Basic,
///                                     Tier = AzureNative.Compute.PublicIPAddressSkuTier.Regional,
///                                 },
///                             },
///                             Subnet = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///                             {
///                                 Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/vn4071/subnets/sn5503",
///                             },
///                         },
///                     },
///                     Name = "vmsstestnetconfig5415",
///                     NetworkSecurityGroup = new AzureNative.Compute.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                     },
///                     Primary = true,
///                 },
///             },
///         },
///         OsProfile = new AzureNative.Compute.Inputs.OSProfileArgs
///         {
///             AdminPassword = "aaaaaaaaaaaaaaaa",
///             AdminUsername = "Foo12",
///             AllowExtensionOperations = true,
///             ComputerName = "test000000",
///             CustomData = "aaaa",
///             LinuxConfiguration = new AzureNative.Compute.Inputs.LinuxConfigurationArgs
///             {
///                 DisablePasswordAuthentication = true,
///                 PatchSettings = new AzureNative.Compute.Inputs.LinuxPatchSettingsArgs
///                 {
///                     AssessmentMode = AzureNative.Compute.LinuxPatchAssessmentMode.ImageDefault,
///                     PatchMode = AzureNative.Compute.LinuxVMGuestPatchMode.ImageDefault,
///                 },
///                 ProvisionVMAgent = true,
///                 Ssh = new AzureNative.Compute.Inputs.SshConfigurationArgs
///                 {
///                     PublicKeys = new[]
///                     {
///                         new AzureNative.Compute.Inputs.SshPublicKeyArgs
///                         {
///                             KeyData = "aaaaaa",
///                             Path = "aaa",
///                         },
///                     },
///                 },
///             },
///             RequireGuestProvisionSignal = true,
///             Secrets = new() { },
///             WindowsConfiguration = new AzureNative.Compute.Inputs.WindowsConfigurationArgs
///             {
///                 AdditionalUnattendContent = new[]
///                 {
///                     new AzureNative.Compute.Inputs.AdditionalUnattendContentArgs
///                     {
///                         ComponentName = AzureNative.Compute.ComponentName.Microsoft_Windows_Shell_Setup,
///                         Content = "aaaaaaaaaaaaaaaaaaaa",
///                         PassName = AzureNative.Compute.PassName.OobeSystem,
///                         SettingName = AzureNative.Compute.SettingNames.AutoLogon,
///                     },
///                 },
///                 EnableAutomaticUpdates = true,
///                 PatchSettings = new AzureNative.Compute.Inputs.PatchSettingsArgs
///                 {
///                     AssessmentMode = AzureNative.Compute.WindowsPatchAssessmentMode.ImageDefault,
///                     EnableHotpatching = true,
///                     PatchMode = AzureNative.Compute.WindowsVMGuestPatchMode.Manual,
///                 },
///                 ProvisionVMAgent = true,
///                 TimeZone = "aaaaaaaaaaaaaaaaaaaaaaaaaaa",
///                 WinRM = new AzureNative.Compute.Inputs.WinRMConfigurationArgs
///                 {
///                     Listeners = new[]
///                     {
///                         new AzureNative.Compute.Inputs.WinRMListenerArgs
///                         {
///                             CertificateUrl = "aaaaaaaaaaaaaaaaaaaaaa",
///                             Protocol = AzureNative.Compute.ProtocolTypes.Http,
///                         },
///                     },
///                 },
///             },
///         },
///         Plan = new AzureNative.Compute.Inputs.PlanArgs
///         {
///             Name = "aaaaaaaaaa",
///             Product = "aaaaaaaaaaaaaaaaaaaa",
///             PromotionCode = "aaaaaaaaaaaaaaaaaaaa",
///             Publisher = "aaaaaaaaaaaaaaaaaaaaaa",
///         },
///         ProtectionPolicy = new AzureNative.Compute.Inputs.VirtualMachineScaleSetVMProtectionPolicyArgs
///         {
///             ProtectFromScaleIn = true,
///             ProtectFromScaleSetActions = true,
///         },
///         ResourceGroupName = "rgcompute",
///         SecurityProfile = new AzureNative.Compute.Inputs.SecurityProfileArgs
///         {
///             EncryptionAtHost = true,
///             SecurityType = AzureNative.Compute.SecurityTypes.TrustedLaunch,
///             UefiSettings = new AzureNative.Compute.Inputs.UefiSettingsArgs
///             {
///                 SecureBootEnabled = true,
///                 VTpmEnabled = true,
///             },
///         },
///         StorageProfile = new AzureNative.Compute.Inputs.StorageProfileArgs
///         {
///             DataDisks = new[]
///             {
///                 new AzureNative.Compute.Inputs.DataDiskArgs
///                 {
///                     Caching = AzureNative.Compute.CachingTypes.None,
///                     CreateOption = AzureNative.Compute.DiskCreateOptionTypes.Empty,
///                     DeleteOption = AzureNative.Compute.DiskDeleteOptionTypes.Delete,
///                     DetachOption = AzureNative.Compute.DiskDetachOptionTypes.ForceDetach,
///                     DiskSizeGB = 128,
///                     Image = new AzureNative.Compute.Inputs.VirtualHardDiskArgs
///                     {
///                         Uri = "https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd",
///                     },
///                     Lun = 1,
///                     ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                     {
///                         DiskEncryptionSet = new AzureNative.Compute.Inputs.DiskEncryptionSetParametersArgs
///                         {
///                             Id = "aaaaaaaaaaaa",
///                         },
///                         Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vmss3176_vmss3176_0_disk2_6c4f554bdafa49baa780eb2d128ff39d",
///                         StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                     },
///                     Name = "vmss3176_vmss3176_0_disk2_6c4f554bdafa49baa780eb2d128ff39d",
///                     ToBeDetached = true,
///                     Vhd = new AzureNative.Compute.Inputs.VirtualHardDiskArgs
///                     {
///                         Uri = "https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd",
///                     },
///                     WriteAcceleratorEnabled = true,
///                 },
///             },
///             ImageReference = new AzureNative.Compute.Inputs.ImageReferenceArgs
///             {
///                 Id = "a",
///                 Offer = "WindowsServer",
///                 Publisher = "MicrosoftWindowsServer",
///                 SharedGalleryImageId = "aaaaaaaaaaaaaaaaaaaa",
///                 Sku = "2012-R2-Datacenter",
///                 Version = "4.127.20180315",
///             },
///             OsDisk = new AzureNative.Compute.Inputs.OSDiskArgs
///             {
///                 Caching = AzureNative.Compute.CachingTypes.None,
///                 CreateOption = AzureNative.Compute.DiskCreateOptionTypes.FromImage,
///                 DeleteOption = AzureNative.Compute.DiskDeleteOptionTypes.Delete,
///                 DiffDiskSettings = new AzureNative.Compute.Inputs.DiffDiskSettingsArgs
///                 {
///                     Option = AzureNative.Compute.DiffDiskOptions.Local,
///                     Placement = AzureNative.Compute.DiffDiskPlacement.CacheDisk,
///                 },
///                 DiskSizeGB = 127,
///                 EncryptionSettings = new AzureNative.Compute.Inputs.DiskEncryptionSettingsArgs
///                 {
///                     DiskEncryptionKey = new AzureNative.Compute.Inputs.KeyVaultSecretReferenceArgs
///                     {
///                         SecretUrl = "aaaaaaaa",
///                         SourceVault = new AzureNative.Compute.Inputs.SubResourceArgs
///                         {
///                             Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                         },
///                     },
///                     Enabled = true,
///                     KeyEncryptionKey = new AzureNative.Compute.Inputs.KeyVaultKeyReferenceArgs
///                     {
///                         KeyUrl = "aaaaaaaaaaaaaa",
///                         SourceVault = new AzureNative.Compute.Inputs.SubResourceArgs
///                         {
///                             Id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                         },
///                     },
///                 },
///                 Image = new AzureNative.Compute.Inputs.VirtualHardDiskArgs
///                 {
///                     Uri = "https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd",
///                 },
///                 ManagedDisk = new AzureNative.Compute.Inputs.ManagedDiskParametersArgs
///                 {
///                     DiskEncryptionSet = new AzureNative.Compute.Inputs.DiskEncryptionSetParametersArgs
///                     {
///                         Id = "aaaaaaaaaaaa",
///                     },
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vmss3176_vmss3176_0_OsDisk_1_6d72b805e50e4de6830303c5055077fc",
///                     StorageAccountType = AzureNative.Compute.StorageAccountTypes.Standard_LRS,
///                 },
///                 Name = "vmss3176_vmss3176_0_OsDisk_1_6d72b805e50e4de6830303c5055077fc",
///                 OsType = AzureNative.Compute.OperatingSystemTypes.Windows,
///                 Vhd = new AzureNative.Compute.Inputs.VirtualHardDiskArgs
///                 {
///                     Uri = "https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd",
///                 },
///                 WriteAcceleratorEnabled = true,
///             },
///         },
///         Tags = null,
///         UserData = "RXhhbXBsZSBVc2VyRGF0YQ==",
///         VmScaleSetName = "aaaaaaaaaaaaaa",
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
/// 		_, err := compute.NewVirtualMachineScaleSetVM(ctx, "virtualMachineScaleSetVM", &compute.VirtualMachineScaleSetVMArgs{
/// 			AdditionalCapabilities: &compute.AdditionalCapabilitiesArgs{
/// 				HibernationEnabled: pulumi.Bool(true),
/// 				UltraSSDEnabled:    pulumi.Bool(true),
/// 			},
/// 			AvailabilitySet: &compute.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"),
/// 			},
/// 			DiagnosticsProfile: &compute.DiagnosticsProfileArgs{
/// 				BootDiagnostics: &compute.BootDiagnosticsArgs{
/// 					Enabled:    pulumi.Bool(true),
/// 					StorageUri: pulumi.String("aaaaaaaaaaaaa"),
/// 				},
/// 			},
/// 			HardwareProfile: &compute.HardwareProfileArgs{
/// 				VmSize: pulumi.String(compute.VirtualMachineSizeTypes_Basic_A0),
/// 				VmSizeProperties: &compute.VMSizePropertiesArgs{
/// 					VCPUsAvailable: pulumi.Int(9),
/// 					VCPUsPerCore:   pulumi.Int(12),
/// 				},
/// 			},
/// 			InstanceId:  pulumi.String("aaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),
/// 			LicenseType: pulumi.String("aaaaaaaaaa"),
/// 			Location:    pulumi.String("westus"),
/// 			NetworkProfile: &compute.NetworkProfileArgs{
/// 				NetworkApiVersion: pulumi.String(compute.NetworkApiVersion_2020_11_01),
/// 				NetworkInterfaceConfigurations: compute.VirtualMachineNetworkInterfaceConfigurationArray{
/// 					&compute.VirtualMachineNetworkInterfaceConfigurationArgs{
/// 						DeleteOption: pulumi.String(compute.DeleteOptionsDelete),
/// 						DnsSettings: &compute.VirtualMachineNetworkInterfaceDnsSettingsConfigurationArgs{
/// 							DnsServers: pulumi.StringArray{
/// 								pulumi.String("aaaaaa"),
/// 							},
/// 						},
/// 						DscpConfiguration: &compute.SubResourceArgs{
/// 							Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"),
/// 						},
/// 						EnableAcceleratedNetworking: pulumi.Bool(true),
/// 						EnableFpga:                  pulumi.Bool(true),
/// 						EnableIPForwarding:          pulumi.Bool(true),
/// 						IpConfigurations: compute.VirtualMachineNetworkInterfaceIPConfigurationArray{
/// 							&compute.VirtualMachineNetworkInterfaceIPConfigurationArgs{
/// 								ApplicationGatewayBackendAddressPools: compute.SubResourceArray{
/// 									&compute.SubResourceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"),
/// 									},
/// 								},
/// 								ApplicationSecurityGroups: compute.SubResourceArray{
/// 									&compute.SubResourceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"),
/// 									},
/// 								},
/// 								LoadBalancerBackendAddressPools: compute.SubResourceArray{
/// 									&compute.SubResourceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"),
/// 									},
/// 								},
/// 								Name:                    pulumi.String("aa"),
/// 								Primary:                 pulumi.Bool(true),
/// 								PrivateIPAddressVersion: pulumi.String(compute.IPVersionsIPv4),
/// 								PublicIPAddressConfiguration: &compute.VirtualMachinePublicIPAddressConfigurationArgs{
/// 									DeleteOption: pulumi.String(compute.DeleteOptionsDelete),
/// 									DnsSettings: &compute.VirtualMachinePublicIPAddressDnsSettingsConfigurationArgs{
/// 										DomainNameLabel: pulumi.String("aaaaaaaaaaaaaaaaaaaaaaaaa"),
/// 									},
/// 									IdleTimeoutInMinutes: pulumi.Int(2),
/// 									IpTags: compute.VirtualMachineIpTagArray{
/// 										&compute.VirtualMachineIpTagArgs{
/// 											IpTagType: pulumi.String("aaaaaaaaaaaaaaaaaaaaaaaaa"),
/// 											Tag:       pulumi.String("aaaaaaaaaaaaaaaaaaaa"),
/// 										},
/// 									},
/// 									Name:                     pulumi.String("aaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),
/// 									PublicIPAddressVersion:   pulumi.String(compute.IPVersionsIPv4),
/// 									PublicIPAllocationMethod: pulumi.String(compute.PublicIPAllocationMethodDynamic),
/// 									PublicIPPrefix: &compute.SubResourceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"),
/// 									},
/// 									Sku: &compute.PublicIPAddressSkuArgs{
/// 										Name: pulumi.String(compute.PublicIPAddressSkuNameBasic),
/// 										Tier: pulumi.String(compute.PublicIPAddressSkuTierRegional),
/// 									},
/// 								},
/// 								Subnet: &compute.SubResourceArgs{
/// 									Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"),
/// 								},
/// 							},
/// 						},
/// 						Name: pulumi.String("aaaaaaaaaaa"),
/// 						NetworkSecurityGroup: &compute.SubResourceArgs{
/// 							Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"),
/// 						},
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 				NetworkInterfaces: compute.NetworkInterfaceReferenceArray{
/// 					&compute.NetworkInterfaceReferenceArgs{
/// 						DeleteOption: pulumi.String(compute.DeleteOptionsDelete),
/// 						Id:           pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachineScaleSets/{vmss-name}/virtualMachines/0/networkInterfaces/vmsstestnetconfig5415"),
/// 						Primary:      pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			NetworkProfileConfiguration: &compute.VirtualMachineScaleSetVMNetworkProfileConfigurationArgs{
/// 				NetworkInterfaceConfigurations: compute.VirtualMachineScaleSetNetworkConfigurationArray{
/// 					&compute.VirtualMachineScaleSetNetworkConfigurationArgs{
/// 						DeleteOption: pulumi.String(compute.DeleteOptionsDelete),
/// 						DnsSettings: &compute.VirtualMachineScaleSetNetworkConfigurationDnsSettingsArgs{
/// 							DnsServers: pulumi.StringArray{},
/// 						},
/// 						EnableAcceleratedNetworking: pulumi.Bool(true),
/// 						EnableFpga:                  pulumi.Bool(true),
/// 						EnableIPForwarding:          pulumi.Bool(true),
/// 						IpConfigurations: compute.VirtualMachineScaleSetIPConfigurationArray{
/// 							&compute.VirtualMachineScaleSetIPConfigurationArgs{
/// 								ApplicationGatewayBackendAddressPools: compute.SubResourceArray{
/// 									&compute.SubResourceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"),
/// 									},
/// 								},
/// 								ApplicationSecurityGroups: compute.SubResourceArray{
/// 									&compute.SubResourceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"),
/// 									},
/// 								},
/// 								LoadBalancerBackendAddressPools: compute.SubResourceArray{
/// 									&compute.SubResourceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"),
/// 									},
/// 								},
/// 								LoadBalancerInboundNatPools: compute.SubResourceArray{
/// 									&compute.SubResourceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"),
/// 									},
/// 								},
/// 								Name:                    pulumi.String("vmsstestnetconfig9693"),
/// 								Primary:                 pulumi.Bool(true),
/// 								PrivateIPAddressVersion: pulumi.String(compute.IPVersionIPv4),
/// 								PublicIPAddressConfiguration: &compute.VirtualMachineScaleSetPublicIPAddressConfigurationArgs{
/// 									DeleteOption: pulumi.String(compute.DeleteOptionsDelete),
/// 									DnsSettings: &compute.VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsArgs{
/// 										DomainNameLabel: pulumi.String("aaaaaaaaaaaaaaaaaa"),
/// 									},
/// 									IdleTimeoutInMinutes: pulumi.Int(18),
/// 									IpTags: compute.VirtualMachineScaleSetIpTagArray{
/// 										&compute.VirtualMachineScaleSetIpTagArgs{
/// 											IpTagType: pulumi.String("aaaaaaa"),
/// 											Tag:       pulumi.String("aaaaaaaaaaaaaaaaaaaaaaaaaaa"),
/// 										},
/// 									},
/// 									Name:                   pulumi.String("aaaaaaaaaaaaaaaaaa"),
/// 									PublicIPAddressVersion: pulumi.String(compute.IPVersionIPv4),
/// 									PublicIPPrefix: &compute.SubResourceArgs{
/// 										Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"),
/// 									},
/// 									Sku: &compute.PublicIPAddressSkuArgs{
/// 										Name: pulumi.String(compute.PublicIPAddressSkuNameBasic),
/// 										Tier: pulumi.String(compute.PublicIPAddressSkuTierRegional),
/// 									},
/// 								},
/// 								Subnet: &compute.ApiEntityReferenceArgs{
/// 									Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/vn4071/subnets/sn5503"),
/// 								},
/// 							},
/// 						},
/// 						Name: pulumi.String("vmsstestnetconfig5415"),
/// 						NetworkSecurityGroup: &compute.SubResourceArgs{
/// 							Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"),
/// 						},
/// 						Primary: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			OsProfile: &compute.OSProfileArgs{
/// 				AdminPassword:            pulumi.String("aaaaaaaaaaaaaaaa"),
/// 				AdminUsername:            pulumi.String("Foo12"),
/// 				AllowExtensionOperations: pulumi.Bool(true),
/// 				ComputerName:             pulumi.String("test000000"),
/// 				CustomData:               pulumi.String("aaaa"),
/// 				LinuxConfiguration: &compute.LinuxConfigurationArgs{
/// 					DisablePasswordAuthentication: pulumi.Bool(true),
/// 					PatchSettings: &compute.LinuxPatchSettingsArgs{
/// 						AssessmentMode: pulumi.String(compute.LinuxPatchAssessmentModeImageDefault),
/// 						PatchMode:      pulumi.String(compute.LinuxVMGuestPatchModeImageDefault),
/// 					},
/// 					ProvisionVMAgent: pulumi.Bool(true),
/// 					Ssh: &compute.SshConfigurationArgs{
/// 						PublicKeys: compute.SshPublicKeyTypeArray{
/// 							&compute.SshPublicKeyTypeArgs{
/// 								KeyData: pulumi.String("aaaaaa"),
/// 								Path:    pulumi.String("aaa"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				RequireGuestProvisionSignal: pulumi.Bool(true),
/// 				Secrets:                     compute.VaultSecretGroupArray{},
/// 				WindowsConfiguration: &compute.WindowsConfigurationArgs{
/// 					AdditionalUnattendContent: compute.AdditionalUnattendContentArray{
/// 						&compute.AdditionalUnattendContentArgs{
/// 							ComponentName: compute.ComponentName_Microsoft_Windows_Shell_Setup,
/// 							Content:       pulumi.String("aaaaaaaaaaaaaaaaaaaa"),
/// 							PassName:      compute.PassNameOobeSystem,
/// 							SettingName:   compute.SettingNamesAutoLogon,
/// 						},
/// 					},
/// 					EnableAutomaticUpdates: pulumi.Bool(true),
/// 					PatchSettings: &compute.PatchSettingsArgs{
/// 						AssessmentMode:    pulumi.String(compute.WindowsPatchAssessmentModeImageDefault),
/// 						EnableHotpatching: pulumi.Bool(true),
/// 						PatchMode:         pulumi.String(compute.WindowsVMGuestPatchModeManual),
/// 					},
/// 					ProvisionVMAgent: pulumi.Bool(true),
/// 					TimeZone:         pulumi.String("aaaaaaaaaaaaaaaaaaaaaaaaaaa"),
/// 					WinRM: &compute.WinRMConfigurationArgs{
/// 						Listeners: compute.WinRMListenerArray{
/// 							&compute.WinRMListenerArgs{
/// 								CertificateUrl: pulumi.String("aaaaaaaaaaaaaaaaaaaaaa"),
/// 								Protocol:       compute.ProtocolTypesHttp,
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Plan: &compute.PlanArgs{
/// 				Name:          pulumi.String("aaaaaaaaaa"),
/// 				Product:       pulumi.String("aaaaaaaaaaaaaaaaaaaa"),
/// 				PromotionCode: pulumi.String("aaaaaaaaaaaaaaaaaaaa"),
/// 				Publisher:     pulumi.String("aaaaaaaaaaaaaaaaaaaaaa"),
/// 			},
/// 			ProtectionPolicy: &compute.VirtualMachineScaleSetVMProtectionPolicyArgs{
/// 				ProtectFromScaleIn:         pulumi.Bool(true),
/// 				ProtectFromScaleSetActions: pulumi.Bool(true),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgcompute"),
/// 			SecurityProfile: &compute.SecurityProfileArgs{
/// 				EncryptionAtHost: pulumi.Bool(true),
/// 				SecurityType:     pulumi.String(compute.SecurityTypesTrustedLaunch),
/// 				UefiSettings: &compute.UefiSettingsArgs{
/// 					SecureBootEnabled: pulumi.Bool(true),
/// 					VTpmEnabled:       pulumi.Bool(true),
/// 				},
/// 			},
/// 			StorageProfile: &compute.StorageProfileArgs{
/// 				DataDisks: compute.DataDiskArray{
/// 					&compute.DataDiskArgs{
/// 						Caching:      compute.CachingTypesNone,
/// 						CreateOption: pulumi.String(compute.DiskCreateOptionTypesEmpty),
/// 						DeleteOption: pulumi.String(compute.DiskDeleteOptionTypesDelete),
/// 						DetachOption: pulumi.String(compute.DiskDetachOptionTypesForceDetach),
/// 						DiskSizeGB:   pulumi.Int(128),
/// 						Image: &compute.VirtualHardDiskArgs{
/// 							Uri: pulumi.String("https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd"),
/// 						},
/// 						Lun: pulumi.Int(1),
/// 						ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 							DiskEncryptionSet: &compute.DiskEncryptionSetParametersArgs{
/// 								Id: pulumi.String("aaaaaaaaaaaa"),
/// 							},
/// 							Id:                 pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vmss3176_vmss3176_0_disk2_6c4f554bdafa49baa780eb2d128ff39d"),
/// 							StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 						},
/// 						Name:         pulumi.String("vmss3176_vmss3176_0_disk2_6c4f554bdafa49baa780eb2d128ff39d"),
/// 						ToBeDetached: pulumi.Bool(true),
/// 						Vhd: &compute.VirtualHardDiskArgs{
/// 							Uri: pulumi.String("https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd"),
/// 						},
/// 						WriteAcceleratorEnabled: pulumi.Bool(true),
/// 					},
/// 				},
/// 				ImageReference: &compute.ImageReferenceArgs{
/// 					Id:                   pulumi.String("a"),
/// 					Offer:                pulumi.String("WindowsServer"),
/// 					Publisher:            pulumi.String("MicrosoftWindowsServer"),
/// 					SharedGalleryImageId: pulumi.String("aaaaaaaaaaaaaaaaaaaa"),
/// 					Sku:                  pulumi.String("2012-R2-Datacenter"),
/// 					Version:              pulumi.String("4.127.20180315"),
/// 				},
/// 				OsDisk: &compute.OSDiskArgs{
/// 					Caching:      compute.CachingTypesNone,
/// 					CreateOption: pulumi.String(compute.DiskCreateOptionTypesFromImage),
/// 					DeleteOption: pulumi.String(compute.DiskDeleteOptionTypesDelete),
/// 					DiffDiskSettings: &compute.DiffDiskSettingsArgs{
/// 						Option:    pulumi.String(compute.DiffDiskOptionsLocal),
/// 						Placement: pulumi.String(compute.DiffDiskPlacementCacheDisk),
/// 					},
/// 					DiskSizeGB: pulumi.Int(127),
/// 					EncryptionSettings: &compute.DiskEncryptionSettingsArgs{
/// 						DiskEncryptionKey: &compute.KeyVaultSecretReferenceArgs{
/// 							SecretUrl: pulumi.String("aaaaaaaa"),
/// 							SourceVault: &compute.SubResourceArgs{
/// 								Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"),
/// 							},
/// 						},
/// 						Enabled: pulumi.Bool(true),
/// 						KeyEncryptionKey: &compute.KeyVaultKeyReferenceArgs{
/// 							KeyUrl: pulumi.String("aaaaaaaaaaaaaa"),
/// 							SourceVault: &compute.SubResourceArgs{
/// 								Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"),
/// 							},
/// 						},
/// 					},
/// 					Image: &compute.VirtualHardDiskArgs{
/// 						Uri: pulumi.String("https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd"),
/// 					},
/// 					ManagedDisk: &compute.ManagedDiskParametersArgs{
/// 						DiskEncryptionSet: &compute.DiskEncryptionSetParametersArgs{
/// 							Id: pulumi.String("aaaaaaaaaaaa"),
/// 						},
/// 						Id:                 pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vmss3176_vmss3176_0_OsDisk_1_6d72b805e50e4de6830303c5055077fc"),
/// 						StorageAccountType: pulumi.String(compute.StorageAccountTypes_Standard_LRS),
/// 					},
/// 					Name:   pulumi.String("vmss3176_vmss3176_0_OsDisk_1_6d72b805e50e4de6830303c5055077fc"),
/// 					OsType: compute.OperatingSystemTypesWindows,
/// 					Vhd: &compute.VirtualHardDiskArgs{
/// 						Uri: pulumi.String("https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd"),
/// 					},
/// 					WriteAcceleratorEnabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Tags:           pulumi.StringMap{},
/// 			UserData:       pulumi.String("RXhhbXBsZSBVc2VyRGF0YQ=="),
/// 			VmScaleSetName: pulumi.String("aaaaaaaaaaaaaa"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetVM;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetVMArgs;
/// import com.pulumi.azurenative.compute.inputs.AdditionalCapabilitiesArgs;
/// import com.pulumi.azurenative.compute.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.compute.inputs.DiagnosticsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.BootDiagnosticsArgs;
/// import com.pulumi.azurenative.compute.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VMSizePropertiesArgs;
/// import com.pulumi.azurenative.compute.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMNetworkProfileConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.OSProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.LinuxConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.LinuxPatchSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.SshConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.WindowsConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.PatchSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.WinRMConfigurationArgs;
/// import com.pulumi.azurenative.compute.inputs.PlanArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineScaleSetVMProtectionPolicyArgs;
/// import com.pulumi.azurenative.compute.inputs.SecurityProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.UefiSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.DiffDiskSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.DiskEncryptionSettingsArgs;
/// import com.pulumi.azurenative.compute.inputs.KeyVaultSecretReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.KeyVaultKeyReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualHardDiskArgs;
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
///         var virtualMachineScaleSetVM = new VirtualMachineScaleSetVM("virtualMachineScaleSetVM", VirtualMachineScaleSetVMArgs.builder()
///             .additionalCapabilities(AdditionalCapabilitiesArgs.builder()
///                 .hibernationEnabled(true)
///                 .ultraSSDEnabled(true)
///                 .build())
///             .availabilitySet(SubResourceArgs.builder()
///                 .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}")
///                 .build())
///             .diagnosticsProfile(DiagnosticsProfileArgs.builder()
///                 .bootDiagnostics(BootDiagnosticsArgs.builder()
///                     .enabled(true)
///                     .storageUri("aaaaaaaaaaaaa")
///                     .build())
///                 .build())
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .vmSize("Basic_A0")
///                 .vmSizeProperties(VMSizePropertiesArgs.builder()
///                     .vCPUsAvailable(9)
///                     .vCPUsPerCore(12)
///                     .build())
///                 .build())
///             .instanceId("aaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
///             .licenseType("aaaaaaaaaa")
///             .location("westus")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkApiVersion("2020-11-01")
///                 .networkInterfaceConfigurations(VirtualMachineNetworkInterfaceConfigurationArgs.builder()
///                     .deleteOption("Delete")
///                     .dnsSettings(VirtualMachineNetworkInterfaceDnsSettingsConfigurationArgs.builder()
///                         .dnsServers("aaaaaa")
///                         .build())
///                     .dscpConfiguration(SubResourceArgs.builder()
///                         .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}")
///                         .build())
///                     .enableAcceleratedNetworking(true)
///                     .enableFpga(true)
///                     .enableIPForwarding(true)
///                     .ipConfigurations(VirtualMachineNetworkInterfaceIPConfigurationArgs.builder()
///                         .applicationGatewayBackendAddressPools(SubResourceArgs.builder()
///                             .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}")
///                             .build())
///                         .applicationSecurityGroups(SubResourceArgs.builder()
///                             .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}")
///                             .build())
///                         .loadBalancerBackendAddressPools(SubResourceArgs.builder()
///                             .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}")
///                             .build())
///                         .name("aa")
///                         .primary(true)
///                         .privateIPAddressVersion("IPv4")
///                         .publicIPAddressConfiguration(VirtualMachinePublicIPAddressConfigurationArgs.builder()
///                             .deleteOption("Delete")
///                             .dnsSettings(VirtualMachinePublicIPAddressDnsSettingsConfigurationArgs.builder()
///                                 .domainNameLabel("aaaaaaaaaaaaaaaaaaaaaaaaa")
///                                 .build())
///                             .idleTimeoutInMinutes(2)
///                             .ipTags(VirtualMachineIpTagArgs.builder()
///                                 .ipTagType("aaaaaaaaaaaaaaaaaaaaaaaaa")
///                                 .tag("aaaaaaaaaaaaaaaaaaaa")
///                                 .build())
///                             .name("aaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
///                             .publicIPAddressVersion("IPv4")
///                             .publicIPAllocationMethod("Dynamic")
///                             .publicIPPrefix(SubResourceArgs.builder()
///                                 .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}")
///                                 .build())
///                             .sku(PublicIPAddressSkuArgs.builder()
///                                 .name("Basic")
///                                 .tier("Regional")
///                                 .build())
///                             .build())
///                         .subnet(SubResourceArgs.builder()
///                             .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}")
///                             .build())
///                         .build())
///                     .name("aaaaaaaaaaa")
///                     .networkSecurityGroup(SubResourceArgs.builder()
///                         .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}")
///                         .build())
///                     .primary(true)
///                     .build())
///                 .networkInterfaces(NetworkInterfaceReferenceArgs.builder()
///                     .deleteOption("Delete")
///                     .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachineScaleSets/{vmss-name}/virtualMachines/0/networkInterfaces/vmsstestnetconfig5415")
///                     .primary(true)
///                     .build())
///                 .build())
///             .networkProfileConfiguration(VirtualMachineScaleSetVMNetworkProfileConfigurationArgs.builder()
///                 .networkInterfaceConfigurations(VirtualMachineScaleSetNetworkConfigurationArgs.builder()
///                     .deleteOption("Delete")
///                     .dnsSettings(VirtualMachineScaleSetNetworkConfigurationDnsSettingsArgs.builder()
///                         .dnsServers()
///                         .build())
///                     .enableAcceleratedNetworking(true)
///                     .enableFpga(true)
///                     .enableIPForwarding(true)
///                     .ipConfigurations(VirtualMachineScaleSetIPConfigurationArgs.builder()
///                         .applicationGatewayBackendAddressPools(SubResourceArgs.builder()
///                             .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}")
///                             .build())
///                         .applicationSecurityGroups(SubResourceArgs.builder()
///                             .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}")
///                             .build())
///                         .loadBalancerBackendAddressPools(SubResourceArgs.builder()
///                             .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}")
///                             .build())
///                         .loadBalancerInboundNatPools(SubResourceArgs.builder()
///                             .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}")
///                             .build())
///                         .name("vmsstestnetconfig9693")
///                         .primary(true)
///                         .privateIPAddressVersion("IPv4")
///                         .publicIPAddressConfiguration(VirtualMachineScaleSetPublicIPAddressConfigurationArgs.builder()
///                             .deleteOption("Delete")
///                             .dnsSettings(VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsArgs.builder()
///                                 .domainNameLabel("aaaaaaaaaaaaaaaaaa")
///                                 .build())
///                             .idleTimeoutInMinutes(18)
///                             .ipTags(VirtualMachineScaleSetIpTagArgs.builder()
///                                 .ipTagType("aaaaaaa")
///                                 .tag("aaaaaaaaaaaaaaaaaaaaaaaaaaa")
///                                 .build())
///                             .name("aaaaaaaaaaaaaaaaaa")
///                             .publicIPAddressVersion("IPv4")
///                             .publicIPPrefix(SubResourceArgs.builder()
///                                 .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}")
///                                 .build())
///                             .sku(PublicIPAddressSkuArgs.builder()
///                                 .name("Basic")
///                                 .tier("Regional")
///                                 .build())
///                             .build())
///                         .subnet(ApiEntityReferenceArgs.builder()
///                             .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/vn4071/subnets/sn5503")
///                             .build())
///                         .build())
///                     .name("vmsstestnetconfig5415")
///                     .networkSecurityGroup(SubResourceArgs.builder()
///                         .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}")
///                         .build())
///                     .primary(true)
///                     .build())
///                 .build())
///             .osProfile(OSProfileArgs.builder()
///                 .adminPassword("aaaaaaaaaaaaaaaa")
///                 .adminUsername("Foo12")
///                 .allowExtensionOperations(true)
///                 .computerName("test000000")
///                 .customData("aaaa")
///                 .linuxConfiguration(LinuxConfigurationArgs.builder()
///                     .disablePasswordAuthentication(true)
///                     .patchSettings(LinuxPatchSettingsArgs.builder()
///                         .assessmentMode("ImageDefault")
///                         .patchMode("ImageDefault")
///                         .build())
///                     .provisionVMAgent(true)
///                     .ssh(SshConfigurationArgs.builder()
///                         .publicKeys(SshPublicKeyArgs.builder()
///                             .keyData("aaaaaa")
///                             .path("aaa")
///                             .build())
///                         .build())
///                     .build())
///                 .requireGuestProvisionSignal(true)
///                 .secrets()
///                 .windowsConfiguration(WindowsConfigurationArgs.builder()
///                     .additionalUnattendContent(AdditionalUnattendContentArgs.builder()
///                         .componentName("Microsoft-Windows-Shell-Setup")
///                         .content("aaaaaaaaaaaaaaaaaaaa")
///                         .passName("OobeSystem")
///                         .settingName("AutoLogon")
///                         .build())
///                     .enableAutomaticUpdates(true)
///                     .patchSettings(PatchSettingsArgs.builder()
///                         .assessmentMode("ImageDefault")
///                         .enableHotpatching(true)
///                         .patchMode("Manual")
///                         .build())
///                     .provisionVMAgent(true)
///                     .timeZone("aaaaaaaaaaaaaaaaaaaaaaaaaaa")
///                     .winRM(WinRMConfigurationArgs.builder()
///                         .listeners(WinRMListenerArgs.builder()
///                             .certificateUrl("aaaaaaaaaaaaaaaaaaaaaa")
///                             .protocol("Http")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .plan(PlanArgs.builder()
///                 .name("aaaaaaaaaa")
///                 .product("aaaaaaaaaaaaaaaaaaaa")
///                 .promotionCode("aaaaaaaaaaaaaaaaaaaa")
///                 .publisher("aaaaaaaaaaaaaaaaaaaaaa")
///                 .build())
///             .protectionPolicy(VirtualMachineScaleSetVMProtectionPolicyArgs.builder()
///                 .protectFromScaleIn(true)
///                 .protectFromScaleSetActions(true)
///                 .build())
///             .resourceGroupName("rgcompute")
///             .securityProfile(SecurityProfileArgs.builder()
///                 .encryptionAtHost(true)
///                 .securityType("TrustedLaunch")
///                 .uefiSettings(UefiSettingsArgs.builder()
///                     .secureBootEnabled(true)
///                     .vTpmEnabled(true)
///                     .build())
///                 .build())
///             .storageProfile(StorageProfileArgs.builder()
///                 .dataDisks(DataDiskArgs.builder()
///                     .caching("None")
///                     .createOption("Empty")
///                     .deleteOption("Delete")
///                     .detachOption("ForceDetach")
///                     .diskSizeGB(128)
///                     .image(VirtualHardDiskArgs.builder()
///                         .uri("https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd")
///                         .build())
///                     .lun(1)
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .diskEncryptionSet(DiskEncryptionSetParametersArgs.builder()
///                             .id("aaaaaaaaaaaa")
///                             .build())
///                         .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vmss3176_vmss3176_0_disk2_6c4f554bdafa49baa780eb2d128ff39d")
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("vmss3176_vmss3176_0_disk2_6c4f554bdafa49baa780eb2d128ff39d")
///                     .toBeDetached(true)
///                     .vhd(VirtualHardDiskArgs.builder()
///                         .uri("https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd")
///                         .build())
///                     .writeAcceleratorEnabled(true)
///                     .build())
///                 .imageReference(ImageReferenceArgs.builder()
///                     .id("a")
///                     .offer("WindowsServer")
///                     .publisher("MicrosoftWindowsServer")
///                     .sharedGalleryImageId("aaaaaaaaaaaaaaaaaaaa")
///                     .sku("2012-R2-Datacenter")
///                     .version("4.127.20180315")
///                     .build())
///                 .osDisk(OSDiskArgs.builder()
///                     .caching("None")
///                     .createOption("FromImage")
///                     .deleteOption("Delete")
///                     .diffDiskSettings(DiffDiskSettingsArgs.builder()
///                         .option("Local")
///                         .placement("CacheDisk")
///                         .build())
///                     .diskSizeGB(127)
///                     .encryptionSettings(DiskEncryptionSettingsArgs.builder()
///                         .diskEncryptionKey(KeyVaultSecretReferenceArgs.builder()
///                             .secretUrl("aaaaaaaa")
///                             .sourceVault(SubResourceArgs.builder()
///                                 .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}")
///                                 .build())
///                             .build())
///                         .enabled(true)
///                         .keyEncryptionKey(KeyVaultKeyReferenceArgs.builder()
///                             .keyUrl("aaaaaaaaaaaaaa")
///                             .sourceVault(SubResourceArgs.builder()
///                                 .id("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}")
///                                 .build())
///                             .build())
///                         .build())
///                     .image(VirtualHardDiskArgs.builder()
///                         .uri("https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd")
///                         .build())
///                     .managedDisk(ManagedDiskParametersArgs.builder()
///                         .diskEncryptionSet(DiskEncryptionSetParametersArgs.builder()
///                             .id("aaaaaaaaaaaa")
///                             .build())
///                         .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vmss3176_vmss3176_0_OsDisk_1_6d72b805e50e4de6830303c5055077fc")
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .name("vmss3176_vmss3176_0_OsDisk_1_6d72b805e50e4de6830303c5055077fc")
///                     .osType("Windows")
///                     .vhd(VirtualHardDiskArgs.builder()
///                         .uri("https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd")
///                         .build())
///                     .writeAcceleratorEnabled(true)
///                     .build())
///                 .build())
///             .tags(Map.ofEntries(
///             ))
///             .userData("RXhhbXBsZSBVc2VyRGF0YQ==")
///             .vmScaleSetName("aaaaaaaaaaaaaa")
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
/// const virtualMachineScaleSetVM = new azure_native.compute.VirtualMachineScaleSetVM("virtualMachineScaleSetVM", {
///     additionalCapabilities: {
///         hibernationEnabled: true,
///         ultraSSDEnabled: true,
///     },
///     availabilitySet: {
///         id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///     },
///     diagnosticsProfile: {
///         bootDiagnostics: {
///             enabled: true,
///             storageUri: "aaaaaaaaaaaaa",
///         },
///     },
///     hardwareProfile: {
///         vmSize: azure_native.compute.VirtualMachineSizeTypes.Basic_A0,
///         vmSizeProperties: {
///             vCPUsAvailable: 9,
///             vCPUsPerCore: 12,
///         },
///     },
///     instanceId: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
///     licenseType: "aaaaaaaaaa",
///     location: "westus",
///     networkProfile: {
///         networkApiVersion: azure_native.compute.NetworkApiVersion.NetworkApiVersion_2020_11_01,
///         networkInterfaceConfigurations: [{
///             deleteOption: azure_native.compute.DeleteOptions.Delete,
///             dnsSettings: {
///                 dnsServers: ["aaaaaa"],
///             },
///             dscpConfiguration: {
///                 id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///             },
///             enableAcceleratedNetworking: true,
///             enableFpga: true,
///             enableIPForwarding: true,
///             ipConfigurations: [{
///                 applicationGatewayBackendAddressPools: [{
///                     id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                 }],
///                 applicationSecurityGroups: [{
///                     id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                 }],
///                 loadBalancerBackendAddressPools: [{
///                     id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                 }],
///                 name: "aa",
///                 primary: true,
///                 privateIPAddressVersion: azure_native.compute.IPVersions.IPv4,
///                 publicIPAddressConfiguration: {
///                     deleteOption: azure_native.compute.DeleteOptions.Delete,
///                     dnsSettings: {
///                         domainNameLabel: "aaaaaaaaaaaaaaaaaaaaaaaaa",
///                     },
///                     idleTimeoutInMinutes: 2,
///                     ipTags: [{
///                         ipTagType: "aaaaaaaaaaaaaaaaaaaaaaaaa",
///                         tag: "aaaaaaaaaaaaaaaaaaaa",
///                     }],
///                     name: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
///                     publicIPAddressVersion: azure_native.compute.IPVersions.IPv4,
///                     publicIPAllocationMethod: azure_native.compute.PublicIPAllocationMethod.Dynamic,
///                     publicIPPrefix: {
///                         id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                     },
///                     sku: {
///                         name: azure_native.compute.PublicIPAddressSkuName.Basic,
///                         tier: azure_native.compute.PublicIPAddressSkuTier.Regional,
///                     },
///                 },
///                 subnet: {
///                     id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                 },
///             }],
///             name: "aaaaaaaaaaa",
///             networkSecurityGroup: {
///                 id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///             },
///             primary: true,
///         }],
///         networkInterfaces: [{
///             deleteOption: azure_native.compute.DeleteOptions.Delete,
///             id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachineScaleSets/{vmss-name}/virtualMachines/0/networkInterfaces/vmsstestnetconfig5415",
///             primary: true,
///         }],
///     },
///     networkProfileConfiguration: {
///         networkInterfaceConfigurations: [{
///             deleteOption: azure_native.compute.DeleteOptions.Delete,
///             dnsSettings: {
///                 dnsServers: [],
///             },
///             enableAcceleratedNetworking: true,
///             enableFpga: true,
///             enableIPForwarding: true,
///             ipConfigurations: [{
///                 applicationGatewayBackendAddressPools: [{
///                     id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                 }],
///                 applicationSecurityGroups: [{
///                     id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                 }],
///                 loadBalancerBackendAddressPools: [{
///                     id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                 }],
///                 loadBalancerInboundNatPools: [{
///                     id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                 }],
///                 name: "vmsstestnetconfig9693",
///                 primary: true,
///                 privateIPAddressVersion: azure_native.compute.IPVersion.IPv4,
///                 publicIPAddressConfiguration: {
///                     deleteOption: azure_native.compute.DeleteOptions.Delete,
///                     dnsSettings: {
///                         domainNameLabel: "aaaaaaaaaaaaaaaaaa",
///                     },
///                     idleTimeoutInMinutes: 18,
///                     ipTags: [{
///                         ipTagType: "aaaaaaa",
///                         tag: "aaaaaaaaaaaaaaaaaaaaaaaaaaa",
///                     }],
///                     name: "aaaaaaaaaaaaaaaaaa",
///                     publicIPAddressVersion: azure_native.compute.IPVersion.IPv4,
///                     publicIPPrefix: {
///                         id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                     },
///                     sku: {
///                         name: azure_native.compute.PublicIPAddressSkuName.Basic,
///                         tier: azure_native.compute.PublicIPAddressSkuTier.Regional,
///                     },
///                 },
///                 subnet: {
///                     id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/vn4071/subnets/sn5503",
///                 },
///             }],
///             name: "vmsstestnetconfig5415",
///             networkSecurityGroup: {
///                 id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///             },
///             primary: true,
///         }],
///     },
///     osProfile: {
///         adminPassword: "aaaaaaaaaaaaaaaa",
///         adminUsername: "Foo12",
///         allowExtensionOperations: true,
///         computerName: "test000000",
///         customData: "aaaa",
///         linuxConfiguration: {
///             disablePasswordAuthentication: true,
///             patchSettings: {
///                 assessmentMode: azure_native.compute.LinuxPatchAssessmentMode.ImageDefault,
///                 patchMode: azure_native.compute.LinuxVMGuestPatchMode.ImageDefault,
///             },
///             provisionVMAgent: true,
///             ssh: {
///                 publicKeys: [{
///                     keyData: "aaaaaa",
///                     path: "aaa",
///                 }],
///             },
///         },
///         requireGuestProvisionSignal: true,
///         secrets: [],
///         windowsConfiguration: {
///             additionalUnattendContent: [{
///                 componentName: azure_native.compute.ComponentName.Microsoft_Windows_Shell_Setup,
///                 content: "aaaaaaaaaaaaaaaaaaaa",
///                 passName: azure_native.compute.PassName.OobeSystem,
///                 settingName: azure_native.compute.SettingNames.AutoLogon,
///             }],
///             enableAutomaticUpdates: true,
///             patchSettings: {
///                 assessmentMode: azure_native.compute.WindowsPatchAssessmentMode.ImageDefault,
///                 enableHotpatching: true,
///                 patchMode: azure_native.compute.WindowsVMGuestPatchMode.Manual,
///             },
///             provisionVMAgent: true,
///             timeZone: "aaaaaaaaaaaaaaaaaaaaaaaaaaa",
///             winRM: {
///                 listeners: [{
///                     certificateUrl: "aaaaaaaaaaaaaaaaaaaaaa",
///                     protocol: azure_native.compute.ProtocolTypes.Http,
///                 }],
///             },
///         },
///     },
///     plan: {
///         name: "aaaaaaaaaa",
///         product: "aaaaaaaaaaaaaaaaaaaa",
///         promotionCode: "aaaaaaaaaaaaaaaaaaaa",
///         publisher: "aaaaaaaaaaaaaaaaaaaaaa",
///     },
///     protectionPolicy: {
///         protectFromScaleIn: true,
///         protectFromScaleSetActions: true,
///     },
///     resourceGroupName: "rgcompute",
///     securityProfile: {
///         encryptionAtHost: true,
///         securityType: azure_native.compute.SecurityTypes.TrustedLaunch,
///         uefiSettings: {
///             secureBootEnabled: true,
///             vTpmEnabled: true,
///         },
///     },
///     storageProfile: {
///         dataDisks: [{
///             caching: azure_native.compute.CachingTypes.None,
///             createOption: azure_native.compute.DiskCreateOptionTypes.Empty,
///             deleteOption: azure_native.compute.DiskDeleteOptionTypes.Delete,
///             detachOption: azure_native.compute.DiskDetachOptionTypes.ForceDetach,
///             diskSizeGB: 128,
///             image: {
///                 uri: "https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd",
///             },
///             lun: 1,
///             managedDisk: {
///                 diskEncryptionSet: {
///                     id: "aaaaaaaaaaaa",
///                 },
///                 id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vmss3176_vmss3176_0_disk2_6c4f554bdafa49baa780eb2d128ff39d",
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "vmss3176_vmss3176_0_disk2_6c4f554bdafa49baa780eb2d128ff39d",
///             toBeDetached: true,
///             vhd: {
///                 uri: "https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd",
///             },
///             writeAcceleratorEnabled: true,
///         }],
///         imageReference: {
///             id: "a",
///             offer: "WindowsServer",
///             publisher: "MicrosoftWindowsServer",
///             sharedGalleryImageId: "aaaaaaaaaaaaaaaaaaaa",
///             sku: "2012-R2-Datacenter",
///             version: "4.127.20180315",
///         },
///         osDisk: {
///             caching: azure_native.compute.CachingTypes.None,
///             createOption: azure_native.compute.DiskCreateOptionTypes.FromImage,
///             deleteOption: azure_native.compute.DiskDeleteOptionTypes.Delete,
///             diffDiskSettings: {
///                 option: azure_native.compute.DiffDiskOptions.Local,
///                 placement: azure_native.compute.DiffDiskPlacement.CacheDisk,
///             },
///             diskSizeGB: 127,
///             encryptionSettings: {
///                 diskEncryptionKey: {
///                     secretUrl: "aaaaaaaa",
///                     sourceVault: {
///                         id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                     },
///                 },
///                 enabled: true,
///                 keyEncryptionKey: {
///                     keyUrl: "aaaaaaaaaaaaaa",
///                     sourceVault: {
///                         id: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                     },
///                 },
///             },
///             image: {
///                 uri: "https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd",
///             },
///             managedDisk: {
///                 diskEncryptionSet: {
///                     id: "aaaaaaaaaaaa",
///                 },
///                 id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vmss3176_vmss3176_0_OsDisk_1_6d72b805e50e4de6830303c5055077fc",
///                 storageAccountType: azure_native.compute.StorageAccountTypes.Standard_LRS,
///             },
///             name: "vmss3176_vmss3176_0_OsDisk_1_6d72b805e50e4de6830303c5055077fc",
///             osType: azure_native.compute.OperatingSystemTypes.Windows,
///             vhd: {
///                 uri: "https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd",
///             },
///             writeAcceleratorEnabled: true,
///         },
///     },
///     tags: {},
///     userData: "RXhhbXBsZSBVc2VyRGF0YQ==",
///     vmScaleSetName: "aaaaaaaaaaaaaa",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set_vm = azure_native.compute.VirtualMachineScaleSetVM("virtualMachineScaleSetVM",
///     additional_capabilities={
///         "hibernation_enabled": True,
///         "ultra_ssd_enabled": True,
///     },
///     availability_set={
///         "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///     },
///     diagnostics_profile={
///         "boot_diagnostics": {
///             "enabled": True,
///             "storage_uri": "aaaaaaaaaaaaa",
///         },
///     },
///     hardware_profile={
///         "vm_size": azure_native.compute.VirtualMachineSizeTypes.BASIC_A0,
///         "vm_size_properties": {
///             "v_cpus_available": 9,
///             "v_cpus_per_core": 12,
///         },
///     },
///     instance_id="aaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
///     license_type="aaaaaaaaaa",
///     location="westus",
///     network_profile={
///         "network_api_version": azure_native.compute.NetworkApiVersion.NETWORK_API_VERSION_2020_11_01,
///         "network_interface_configurations": [{
///             "delete_option": azure_native.compute.DeleteOptions.DELETE,
///             "dns_settings": {
///                 "dns_servers": ["aaaaaa"],
///             },
///             "dscp_configuration": {
///                 "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///             },
///             "enable_accelerated_networking": True,
///             "enable_fpga": True,
///             "enable_ip_forwarding": True,
///             "ip_configurations": [{
///                 "application_gateway_backend_address_pools": [{
///                     "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                 }],
///                 "application_security_groups": [{
///                     "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                 }],
///                 "load_balancer_backend_address_pools": [{
///                     "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                 }],
///                 "name": "aa",
///                 "primary": True,
///                 "private_ip_address_version": azure_native.compute.IPVersions.I_PV4,
///                 "public_ip_address_configuration": {
///                     "delete_option": azure_native.compute.DeleteOptions.DELETE,
///                     "dns_settings": {
///                         "domain_name_label": "aaaaaaaaaaaaaaaaaaaaaaaaa",
///                     },
///                     "idle_timeout_in_minutes": 2,
///                     "ip_tags": [{
///                         "ip_tag_type": "aaaaaaaaaaaaaaaaaaaaaaaaa",
///                         "tag": "aaaaaaaaaaaaaaaaaaaa",
///                     }],
///                     "name": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
///                     "public_ip_address_version": azure_native.compute.IPVersions.I_PV4,
///                     "public_ip_allocation_method": azure_native.compute.PublicIPAllocationMethod.DYNAMIC,
///                     "public_ip_prefix": {
///                         "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                     },
///                     "sku": {
///                         "name": azure_native.compute.PublicIPAddressSkuName.BASIC,
///                         "tier": azure_native.compute.PublicIPAddressSkuTier.REGIONAL,
///                     },
///                 },
///                 "subnet": {
///                     "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                 },
///             }],
///             "name": "aaaaaaaaaaa",
///             "network_security_group": {
///                 "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///             },
///             "primary": True,
///         }],
///         "network_interfaces": [{
///             "delete_option": azure_native.compute.DeleteOptions.DELETE,
///             "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachineScaleSets/{vmss-name}/virtualMachines/0/networkInterfaces/vmsstestnetconfig5415",
///             "primary": True,
///         }],
///     },
///     network_profile_configuration={
///         "network_interface_configurations": [{
///             "delete_option": azure_native.compute.DeleteOptions.DELETE,
///             "dns_settings": {
///                 "dns_servers": [],
///             },
///             "enable_accelerated_networking": True,
///             "enable_fpga": True,
///             "enable_ip_forwarding": True,
///             "ip_configurations": [{
///                 "application_gateway_backend_address_pools": [{
///                     "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                 }],
///                 "application_security_groups": [{
///                     "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                 }],
///                 "load_balancer_backend_address_pools": [{
///                     "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                 }],
///                 "load_balancer_inbound_nat_pools": [{
///                     "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                 }],
///                 "name": "vmsstestnetconfig9693",
///                 "primary": True,
///                 "private_ip_address_version": azure_native.compute.IPVersion.I_PV4,
///                 "public_ip_address_configuration": {
///                     "delete_option": azure_native.compute.DeleteOptions.DELETE,
///                     "dns_settings": {
///                         "domain_name_label": "aaaaaaaaaaaaaaaaaa",
///                     },
///                     "idle_timeout_in_minutes": 18,
///                     "ip_tags": [{
///                         "ip_tag_type": "aaaaaaa",
///                         "tag": "aaaaaaaaaaaaaaaaaaaaaaaaaaa",
///                     }],
///                     "name": "aaaaaaaaaaaaaaaaaa",
///                     "public_ip_address_version": azure_native.compute.IPVersion.I_PV4,
///                     "public_ip_prefix": {
///                         "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                     },
///                     "sku": {
///                         "name": azure_native.compute.PublicIPAddressSkuName.BASIC,
///                         "tier": azure_native.compute.PublicIPAddressSkuTier.REGIONAL,
///                     },
///                 },
///                 "subnet": {
///                     "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/vn4071/subnets/sn5503",
///                 },
///             }],
///             "name": "vmsstestnetconfig5415",
///             "network_security_group": {
///                 "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///             },
///             "primary": True,
///         }],
///     },
///     os_profile={
///         "admin_password": "aaaaaaaaaaaaaaaa",
///         "admin_username": "Foo12",
///         "allow_extension_operations": True,
///         "computer_name": "test000000",
///         "custom_data": "aaaa",
///         "linux_configuration": {
///             "disable_password_authentication": True,
///             "patch_settings": {
///                 "assessment_mode": azure_native.compute.LinuxPatchAssessmentMode.IMAGE_DEFAULT,
///                 "patch_mode": azure_native.compute.LinuxVMGuestPatchMode.IMAGE_DEFAULT,
///             },
///             "provision_vm_agent": True,
///             "ssh": {
///                 "public_keys": [{
///                     "key_data": "aaaaaa",
///                     "path": "aaa",
///                 }],
///             },
///         },
///         "require_guest_provision_signal": True,
///         "secrets": [],
///         "windows_configuration": {
///             "additional_unattend_content": [{
///                 "component_name": azure_native.compute.ComponentName.MICROSOFT_WINDOWS_SHELL_SETUP,
///                 "content": "aaaaaaaaaaaaaaaaaaaa",
///                 "pass_name": azure_native.compute.PassName.OOBE_SYSTEM,
///                 "setting_name": azure_native.compute.SettingNames.AUTO_LOGON,
///             }],
///             "enable_automatic_updates": True,
///             "patch_settings": {
///                 "assessment_mode": azure_native.compute.WindowsPatchAssessmentMode.IMAGE_DEFAULT,
///                 "enable_hotpatching": True,
///                 "patch_mode": azure_native.compute.WindowsVMGuestPatchMode.MANUAL,
///             },
///             "provision_vm_agent": True,
///             "time_zone": "aaaaaaaaaaaaaaaaaaaaaaaaaaa",
///             "win_rm": {
///                 "listeners": [{
///                     "certificate_url": "aaaaaaaaaaaaaaaaaaaaaa",
///                     "protocol": azure_native.compute.ProtocolTypes.HTTP,
///                 }],
///             },
///         },
///     },
///     plan={
///         "name": "aaaaaaaaaa",
///         "product": "aaaaaaaaaaaaaaaaaaaa",
///         "promotion_code": "aaaaaaaaaaaaaaaaaaaa",
///         "publisher": "aaaaaaaaaaaaaaaaaaaaaa",
///     },
///     protection_policy={
///         "protect_from_scale_in": True,
///         "protect_from_scale_set_actions": True,
///     },
///     resource_group_name="rgcompute",
///     security_profile={
///         "encryption_at_host": True,
///         "security_type": azure_native.compute.SecurityTypes.TRUSTED_LAUNCH,
///         "uefi_settings": {
///             "secure_boot_enabled": True,
///             "v_tpm_enabled": True,
///         },
///     },
///     storage_profile={
///         "data_disks": [{
///             "caching": azure_native.compute.CachingTypes.NONE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.EMPTY,
///             "delete_option": azure_native.compute.DiskDeleteOptionTypes.DELETE,
///             "detach_option": azure_native.compute.DiskDetachOptionTypes.FORCE_DETACH,
///             "disk_size_gb": 128,
///             "image": {
///                 "uri": "https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd",
///             },
///             "lun": 1,
///             "managed_disk": {
///                 "disk_encryption_set": {
///                     "id": "aaaaaaaaaaaa",
///                 },
///                 "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vmss3176_vmss3176_0_disk2_6c4f554bdafa49baa780eb2d128ff39d",
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "vmss3176_vmss3176_0_disk2_6c4f554bdafa49baa780eb2d128ff39d",
///             "to_be_detached": True,
///             "vhd": {
///                 "uri": "https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd",
///             },
///             "write_accelerator_enabled": True,
///         }],
///         "image_reference": {
///             "id": "a",
///             "offer": "WindowsServer",
///             "publisher": "MicrosoftWindowsServer",
///             "shared_gallery_image_id": "aaaaaaaaaaaaaaaaaaaa",
///             "sku": "2012-R2-Datacenter",
///             "version": "4.127.20180315",
///         },
///         "os_disk": {
///             "caching": azure_native.compute.CachingTypes.NONE,
///             "create_option": azure_native.compute.DiskCreateOptionTypes.FROM_IMAGE,
///             "delete_option": azure_native.compute.DiskDeleteOptionTypes.DELETE,
///             "diff_disk_settings": {
///                 "option": azure_native.compute.DiffDiskOptions.LOCAL,
///                 "placement": azure_native.compute.DiffDiskPlacement.CACHE_DISK,
///             },
///             "disk_size_gb": 127,
///             "encryption_settings": {
///                 "disk_encryption_key": {
///                     "secret_url": "aaaaaaaa",
///                     "source_vault": {
///                         "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                     },
///                 },
///                 "enabled": True,
///                 "key_encryption_key": {
///                     "key_url": "aaaaaaaaaaaaaa",
///                     "source_vault": {
///                         "id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}",
///                     },
///                 },
///             },
///             "image": {
///                 "uri": "https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd",
///             },
///             "managed_disk": {
///                 "disk_encryption_set": {
///                     "id": "aaaaaaaaaaaa",
///                 },
///                 "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vmss3176_vmss3176_0_OsDisk_1_6d72b805e50e4de6830303c5055077fc",
///                 "storage_account_type": azure_native.compute.StorageAccountTypes.STANDARD_LRS,
///             },
///             "name": "vmss3176_vmss3176_0_OsDisk_1_6d72b805e50e4de6830303c5055077fc",
///             "os_type": azure_native.compute.OperatingSystemTypes.WINDOWS,
///             "vhd": {
///                 "uri": "https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd",
///             },
///             "write_accelerator_enabled": True,
///         },
///     },
///     tags={},
///     user_data="RXhhbXBsZSBVc2VyRGF0YQ==",
///     vm_scale_set_name="aaaaaaaaaaaaaa")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSetVM:
///     type: azure-native:compute:VirtualMachineScaleSetVM
///     properties:
///       additionalCapabilities:
///         hibernationEnabled: true
///         ultraSSDEnabled: true
///       availabilitySet:
///         id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}
///       diagnosticsProfile:
///         bootDiagnostics:
///           enabled: true
///           storageUri: aaaaaaaaaaaaa
///       hardwareProfile:
///         vmSize: Basic_A0
///         vmSizeProperties:
///           vCPUsAvailable: 9
///           vCPUsPerCore: 12
///       instanceId: aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
///       licenseType: aaaaaaaaaa
///       location: westus
///       networkProfile:
///         networkApiVersion: 2020-11-01
///         networkInterfaceConfigurations:
///           - deleteOption: Delete
///             dnsSettings:
///               dnsServers:
///                 - aaaaaa
///             dscpConfiguration:
///               id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}
///             enableAcceleratedNetworking: true
///             enableFpga: true
///             enableIPForwarding: true
///             ipConfigurations:
///               - applicationGatewayBackendAddressPools:
///                   - id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}
///                 applicationSecurityGroups:
///                   - id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}
///                 loadBalancerBackendAddressPools:
///                   - id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}
///                 name: aa
///                 primary: true
///                 privateIPAddressVersion: IPv4
///                 publicIPAddressConfiguration:
///                   deleteOption: Delete
///                   dnsSettings:
///                     domainNameLabel: aaaaaaaaaaaaaaaaaaaaaaaaa
///                   idleTimeoutInMinutes: 2
///                   ipTags:
///                     - ipTagType: aaaaaaaaaaaaaaaaaaaaaaaaa
///                       tag: aaaaaaaaaaaaaaaaaaaa
///                   name: aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
///                   publicIPAddressVersion: IPv4
///                   publicIPAllocationMethod: Dynamic
///                   publicIPPrefix:
///                     id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}
///                   sku:
///                     name: Basic
///                     tier: Regional
///                 subnet:
///                   id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}
///             name: aaaaaaaaaaa
///             networkSecurityGroup:
///               id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}
///             primary: true
///         networkInterfaces:
///           - deleteOption: Delete
///             id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachineScaleSets/{vmss-name}/virtualMachines/0/networkInterfaces/vmsstestnetconfig5415
///             primary: true
///       networkProfileConfiguration:
///         networkInterfaceConfigurations:
///           - deleteOption: Delete
///             dnsSettings:
///               dnsServers: []
///             enableAcceleratedNetworking: true
///             enableFpga: true
///             enableIPForwarding: true
///             ipConfigurations:
///               - applicationGatewayBackendAddressPools:
///                   - id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}
///                 applicationSecurityGroups:
///                   - id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}
///                 loadBalancerBackendAddressPools:
///                   - id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}
///                 loadBalancerInboundNatPools:
///                   - id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}
///                 name: vmsstestnetconfig9693
///                 primary: true
///                 privateIPAddressVersion: IPv4
///                 publicIPAddressConfiguration:
///                   deleteOption: Delete
///                   dnsSettings:
///                     domainNameLabel: aaaaaaaaaaaaaaaaaa
///                   idleTimeoutInMinutes: 18
///                   ipTags:
///                     - ipTagType: aaaaaaa
///                       tag: aaaaaaaaaaaaaaaaaaaaaaaaaaa
///                   name: aaaaaaaaaaaaaaaaaa
///                   publicIPAddressVersion: IPv4
///                   publicIPPrefix:
///                     id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}
///                   sku:
///                     name: Basic
///                     tier: Regional
///                 subnet:
///                   id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/vn4071/subnets/sn5503
///             name: vmsstestnetconfig5415
///             networkSecurityGroup:
///               id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}
///             primary: true
///       osProfile:
///         adminPassword: aaaaaaaaaaaaaaaa
///         adminUsername: Foo12
///         allowExtensionOperations: true
///         computerName: test000000
///         customData: aaaa
///         linuxConfiguration:
///           disablePasswordAuthentication: true
///           patchSettings:
///             assessmentMode: ImageDefault
///             patchMode: ImageDefault
///           provisionVMAgent: true
///           ssh:
///             publicKeys:
///               - keyData: aaaaaa
///                 path: aaa
///         requireGuestProvisionSignal: true
///         secrets: []
///         windowsConfiguration:
///           additionalUnattendContent:
///             - componentName: Microsoft-Windows-Shell-Setup
///               content: aaaaaaaaaaaaaaaaaaaa
///               passName: OobeSystem
///               settingName: AutoLogon
///           enableAutomaticUpdates: true
///           patchSettings:
///             assessmentMode: ImageDefault
///             enableHotpatching: true
///             patchMode: Manual
///           provisionVMAgent: true
///           timeZone: aaaaaaaaaaaaaaaaaaaaaaaaaaa
///           winRM:
///             listeners:
///               - certificateUrl: aaaaaaaaaaaaaaaaaaaaaa
///                 protocol: Http
///       plan:
///         name: aaaaaaaaaa
///         product: aaaaaaaaaaaaaaaaaaaa
///         promotionCode: aaaaaaaaaaaaaaaaaaaa
///         publisher: aaaaaaaaaaaaaaaaaaaaaa
///       protectionPolicy:
///         protectFromScaleIn: true
///         protectFromScaleSetActions: true
///       resourceGroupName: rgcompute
///       securityProfile:
///         encryptionAtHost: true
///         securityType: TrustedLaunch
///         uefiSettings:
///           secureBootEnabled: true
///           vTpmEnabled: true
///       storageProfile:
///         dataDisks:
///           - caching: None
///             createOption: Empty
///             deleteOption: Delete
///             detachOption: ForceDetach
///             diskSizeGB: 128
///             image:
///               uri: https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd
///             lun: 1
///             managedDisk:
///               diskEncryptionSet:
///                 id: aaaaaaaaaaaa
///               id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vmss3176_vmss3176_0_disk2_6c4f554bdafa49baa780eb2d128ff39d
///               storageAccountType: Standard_LRS
///             name: vmss3176_vmss3176_0_disk2_6c4f554bdafa49baa780eb2d128ff39d
///             toBeDetached: true
///             vhd:
///               uri: https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd
///             writeAcceleratorEnabled: true
///         imageReference:
///           id: a
///           offer: WindowsServer
///           publisher: MicrosoftWindowsServer
///           sharedGalleryImageId: aaaaaaaaaaaaaaaaaaaa
///           sku: 2012-R2-Datacenter
///           version: 4.127.20180315
///         osDisk:
///           caching: None
///           createOption: FromImage
///           deleteOption: Delete
///           diffDiskSettings:
///             option: Local
///             placement: CacheDisk
///           diskSizeGB: 127
///           encryptionSettings:
///             diskEncryptionKey:
///               secretUrl: aaaaaaaa
///               sourceVault:
///                 id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}
///             enabled: true
///             keyEncryptionKey:
///               keyUrl: aaaaaaaaaaaaaa
///               sourceVault:
///                 id: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}
///           image:
///             uri: https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd
///           managedDisk:
///             diskEncryptionSet:
///               id: aaaaaaaaaaaa
///             id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vmss3176_vmss3176_0_OsDisk_1_6d72b805e50e4de6830303c5055077fc
///             storageAccountType: Standard_LRS
///           name: vmss3176_vmss3176_0_OsDisk_1_6d72b805e50e4de6830303c5055077fc
///           osType: Windows
///           vhd:
///             uri: https://{storageAccountName}.blob.core.windows.net/{containerName}/{vhdName}.vhd
///           writeAcceleratorEnabled: true
///       tags: {}
///       userData: RXhhbXBsZSBVc2VyRGF0YQ==
///       vmScaleSetName: aaaaaaaaaaaaaa
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### VirtualMachineScaleSetVM_Update_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSetVM = new AzureNative.Compute.VirtualMachineScaleSetVM("virtualMachineScaleSetVM", new()
///     {
///         InstanceId = "aaaaaaaaaaaaaaaaaaaa",
///         Location = "westus",
///         ResourceGroupName = "rgcompute",
///         VmScaleSetName = "aaaaaaaaaaaaaaaaaa",
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
/// 		_, err := compute.NewVirtualMachineScaleSetVM(ctx, "virtualMachineScaleSetVM", &compute.VirtualMachineScaleSetVMArgs{
/// 			InstanceId:        pulumi.String("aaaaaaaaaaaaaaaaaaaa"),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("rgcompute"),
/// 			VmScaleSetName:    pulumi.String("aaaaaaaaaaaaaaaaaa"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetVM;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetVMArgs;
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
///         var virtualMachineScaleSetVM = new VirtualMachineScaleSetVM("virtualMachineScaleSetVM", VirtualMachineScaleSetVMArgs.builder()
///             .instanceId("aaaaaaaaaaaaaaaaaaaa")
///             .location("westus")
///             .resourceGroupName("rgcompute")
///             .vmScaleSetName("aaaaaaaaaaaaaaaaaa")
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
/// const virtualMachineScaleSetVM = new azure_native.compute.VirtualMachineScaleSetVM("virtualMachineScaleSetVM", {
///     instanceId: "aaaaaaaaaaaaaaaaaaaa",
///     location: "westus",
///     resourceGroupName: "rgcompute",
///     vmScaleSetName: "aaaaaaaaaaaaaaaaaa",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set_vm = azure_native.compute.VirtualMachineScaleSetVM("virtualMachineScaleSetVM",
///     instance_id="aaaaaaaaaaaaaaaaaaaa",
///     location="westus",
///     resource_group_name="rgcompute",
///     vm_scale_set_name="aaaaaaaaaaaaaaaaaa")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSetVM:
///     type: azure-native:compute:VirtualMachineScaleSetVM
///     properties:
///       instanceId: aaaaaaaaaaaaaaaaaaaa
///       location: westus
///       resourceGroupName: rgcompute
///       vmScaleSetName: aaaaaaaaaaaaaaaaaa
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
/// $ pulumi import azure-native:compute:VirtualMachineScaleSetVM {vmss-vm-name} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}
/// ```
class VirtualMachineScaleSetVM extends pulumi.CustomResource {
  /// Specifies additional capabilities enabled or disabled on the virtual machine in the scale set. For instance: whether the virtual machine has the capability to support attaching managed data disks with UltraSSD_LRS storage account type.
  late final pulumi.Output<AdditionalCapabilitiesResponse?> additionalCapabilities;
  /// Specifies information about the availability set that the virtual machine should be assigned to. Virtual machines specified in the same availability set are allocated to different nodes to maximize availability. For more information about availability sets, see [Availability sets overview](https://docs.microsoft.com/azure/virtual-machines/availability-set-overview). For more information on Azure planned maintenance, see [Maintenance and updates for Virtual Machines in Azure](https://docs.microsoft.com/azure/virtual-machines/maintenance-and-updates). Currently, a VM can only be added to availability set at creation time. An existing VM cannot be added to an availability set.
  late final pulumi.Output<SubResourceResponse?> availabilitySet;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Specifies the boot diagnostic settings state. Minimum api-version: 2015-06-15.
  late final pulumi.Output<DiagnosticsProfileResponse?> diagnosticsProfile;
  /// Etag is property returned in Update/Get response of the VMSS VM, so that customer can supply it in the header to ensure optimistic updates.
  late final pulumi.Output<String> etag;
  /// Specifies the hardware settings for the virtual machine.
  late final pulumi.Output<HardwareProfileResponse?> hardwareProfile;
  /// The identity of the virtual machine, if configured.
  late final pulumi.Output<VirtualMachineIdentityResponse?> identity;
  /// The virtual machine instance ID.
  late final pulumi.Output<String> instanceId;
  /// The virtual machine instance view.
  late final pulumi.Output<VirtualMachineScaleSetVMInstanceViewResponse> instanceView;
  /// Specifies whether the latest model has been applied to the virtual machine.
  late final pulumi.Output<bool> latestModelApplied;
  /// Specifies that the image or disk that is being used was licensed on-premises. &lt;br&gt;&lt;br&gt; Possible values for Windows Server operating system are: &lt;br&gt;&lt;br&gt; Windows_Client &lt;br&gt;&lt;br&gt; Windows_Server &lt;br&gt;&lt;br&gt; Possible values for Linux Server operating system are: &lt;br&gt;&lt;br&gt; RHEL_BYOS (for RHEL) &lt;br&gt;&lt;br&gt; SLES_BYOS (for SUSE) &lt;br&gt;&lt;br&gt; For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) &lt;br&gt;&lt;br&gt; [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) &lt;br&gt;&lt;br&gt; Minimum api-version: 2015-06-15
  late final pulumi.Output<String?> licenseType;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Specifies whether the model applied to the virtual machine is the model of the virtual machine scale set or the customized model for the virtual machine.
  late final pulumi.Output<String> modelDefinitionApplied;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Specifies the network interfaces of the virtual machine.
  late final pulumi.Output<NetworkProfileResponse?> networkProfile;
  /// Specifies the network profile configuration of the virtual machine.
  late final pulumi.Output<VirtualMachineScaleSetVMNetworkProfileConfigurationResponse?> networkProfileConfiguration;
  /// Specifies the operating system settings for the virtual machine.
  late final pulumi.Output<OSProfileResponse?> osProfile;
  /// Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started -&gt;**. Enter any required information and then click **Save**.
  late final pulumi.Output<PlanResponse?> plan;
  /// Specifies the protection policy of the virtual machine.
  late final pulumi.Output<VirtualMachineScaleSetVMProtectionPolicyResponse?> protectionPolicy;
  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// Specifies the resilient VM deletion status for the virtual machine.
  late final pulumi.Output<String?> resilientVMDeletionStatus;
  /// The virtual machine child extension resources.
  late final pulumi.Output<List<Map<String, dynamic>>> resources;
  /// Specifies the Security related profile settings for the virtual machine.
  late final pulumi.Output<SecurityProfileResponse?> securityProfile;
  /// The virtual machine SKU.
  late final pulumi.Output<SkuResponse> sku;
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
  /// UserData for the VM, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum api-version: 2021-03-01
  late final pulumi.Output<String?> userData;
  /// Azure VM unique ID.
  late final pulumi.Output<String> vmId;
  /// The virtual machine zones.
  late final pulumi.Output<List<String>> zones;

  /// Creates a new [VirtualMachineScaleSetVM].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineScaleSetVM]. {@macro pulumi_compute_virtual_machine_scale_set_vmargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineScaleSetVM(
    String name, {
    VirtualMachineScaleSetVMArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:VirtualMachineScaleSetVM',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalCapabilities = registerOutput<AdditionalCapabilitiesResponse?>('additionalCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AdditionalCapabilitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    availabilitySet = registerOutput<SubResourceResponse?>('availabilitySet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    diagnosticsProfile = registerOutput<DiagnosticsProfileResponse?>('diagnosticsProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiagnosticsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    hardwareProfile = registerOutput<HardwareProfileResponse?>('hardwareProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HardwareProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<VirtualMachineIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceId = registerOutput<String>('instanceId');
    instanceView = registerOutput<VirtualMachineScaleSetVMInstanceViewResponse>('instanceView', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineScaleSetVMInstanceViewResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    latestModelApplied = registerOutput<bool>('latestModelApplied');
    licenseType = registerOutput<String?>('licenseType');
    location = registerOutput<String>('location');
    modelDefinitionApplied = registerOutput<String>('modelDefinitionApplied');
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<NetworkProfileResponse?>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkProfileConfiguration = registerOutput<VirtualMachineScaleSetVMNetworkProfileConfigurationResponse?>('networkProfileConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineScaleSetVMNetworkProfileConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osProfile = registerOutput<OSProfileResponse?>('osProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OSProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    plan = registerOutput<PlanResponse?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    protectionPolicy = registerOutput<VirtualMachineScaleSetVMProtectionPolicyResponse?>('protectionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineScaleSetVMProtectionPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    resilientVMDeletionStatus = registerOutput<String?>('resilientVMDeletionStatus');
    resources = registerOutput<List<Map<String, dynamic>>>('resources');
    securityProfile = registerOutput<SecurityProfileResponse?>('securityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageProfile = registerOutput<StorageProfileResponse?>('storageProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    timeCreated = registerOutput<String>('timeCreated');
    type = registerOutput<String>('type');
    userData = registerOutput<String?>('userData');
    vmId = registerOutput<String>('vmId');
    zones = registerOutput<List<String>>('zones');
  }
}
