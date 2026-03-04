import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_function_template_response.dart';
import 'system_data_response.dart';
import 'vendor_skus_args.dart';

/// Sku sub resource.
///
/// Uses Azure REST API version 2022-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update the sku of vendor resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vendorSkus = new AzureNative.HybridNetwork.VendorSkus("vendorSkus", new()
///     {
///         DeploymentMode = AzureNative.HybridNetwork.SkuDeploymentMode.PrivateEdgeZone,
///         ManagedApplicationTemplate = null,
///         NetworkFunctionTemplate = new AzureNative.HybridNetwork.Inputs.NetworkFunctionTemplateArgs
///         {
///             NetworkFunctionRoleConfigurations = new[]
///             {
///                 new AzureNative.HybridNetwork.Inputs.NetworkFunctionRoleConfigurationArgs
///                 {
///                     CustomProfile = new AzureNative.HybridNetwork.Inputs.CustomProfileArgs
///                     {
///                         MetadataConfigurationPath = "/var/logs/network.cfg",
///                     },
///                     NetworkInterfaces = new[]
///                     {
///                         new AzureNative.HybridNetwork.Inputs.NetworkInterfaceArgs
///                         {
///                             IpConfigurations = new[]
///                             {
///                                 new AzureNative.HybridNetwork.Inputs.NetworkInterfaceIPConfigurationArgs
///                                 {
///                                     Gateway = "",
///                                     IpAddress = "",
///                                     IpAllocationMethod = AzureNative.HybridNetwork.IPAllocationMethod.Dynamic,
///                                     IpVersion = AzureNative.HybridNetwork.IPVersion.IPv4,
///                                     Subnet = "",
///                                 },
///                             },
///                             MacAddress = "",
///                             NetworkInterfaceName = "nic1",
///                             VmSwitchType = AzureNative.HybridNetwork.VMSwitchType.Wan,
///                         },
///                         new AzureNative.HybridNetwork.Inputs.NetworkInterfaceArgs
///                         {
///                             IpConfigurations = new[]
///                             {
///                                 new AzureNative.HybridNetwork.Inputs.NetworkInterfaceIPConfigurationArgs
///                                 {
///                                     Gateway = "",
///                                     IpAddress = "",
///                                     IpAllocationMethod = AzureNative.HybridNetwork.IPAllocationMethod.Dynamic,
///                                     IpVersion = AzureNative.HybridNetwork.IPVersion.IPv4,
///                                     Subnet = "",
///                                 },
///                             },
///                             MacAddress = "",
///                             NetworkInterfaceName = "nic2",
///                             VmSwitchType = AzureNative.HybridNetwork.VMSwitchType.Management,
///                         },
///                     },
///                     OsProfile = new AzureNative.HybridNetwork.Inputs.OsProfileArgs
///                     {
///                         AdminUsername = "dummyuser",
///                         CustomData = "base-64 encoded string of custom data",
///                         LinuxConfiguration = new AzureNative.HybridNetwork.Inputs.LinuxConfigurationArgs
///                         {
///                             Ssh = new AzureNative.HybridNetwork.Inputs.SshConfigurationArgs
///                             {
///                                 PublicKeys = new[]
///                                 {
///                                     new AzureNative.HybridNetwork.Inputs.SshPublicKeyArgs
///                                     {
///                                         KeyData = "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEAwrr66r8n6B8Y0zMF3dOpXEapIQD9DiYQ6D6/zwor9o39jSkHNiMMER/GETBbzP83LOcekm02aRjo55ArO7gPPVvCXbrirJu9pkm4AC4BBre5xSLS= user@constoso-DSH",
///                                         Path = "home/user/.ssh/authorized_keys",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                     RoleName = "test",
///                     RoleType = AzureNative.HybridNetwork.NetworkFunctionRoleConfigurationType.VirtualMachine,
///                     StorageProfile = new AzureNative.HybridNetwork.Inputs.StorageProfileArgs
///                     {
///                         DataDisks = new[]
///                         {
///                             new AzureNative.HybridNetwork.Inputs.DataDiskArgs
///                             {
///                                 CreateOption = AzureNative.HybridNetwork.DiskCreateOptionTypes.Empty,
///                                 DiskSizeGB = 10,
///                                 Name = "DataDisk1",
///                             },
///                         },
///                         ImageReference = new AzureNative.HybridNetwork.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "UbuntuServer",
///                             Publisher = "Canonical",
///                             Sku = "18.04-LTS",
///                             Version = "18.04.201804262",
///                         },
///                         OsDisk = new AzureNative.HybridNetwork.Inputs.OsDiskArgs
///                         {
///                             DiskSizeGB = 30,
///                             Name = "vhdName",
///                             OsType = AzureNative.HybridNetwork.OperatingSystemTypes.Linux,
///                             Vhd = new AzureNative.HybridNetwork.Inputs.VirtualHardDiskArgs
///                             {
///                                 Uri = "https://contoso.net/link/vnd.vhd?sp=rl&st=2020-10-08T20:38:19Z&se=2020-12-09T19:38:00Z&sv=2019-12-12&sr=b&sig=7BM2f4yOw%3D",
///                             },
///                         },
///                     },
///                     VirtualMachineSize = AzureNative.HybridNetwork.VirtualMachineSizeTypes.Standard_D3_v2,
///                 },
///             },
///         },
///         NetworkFunctionType = AzureNative.HybridNetwork.NetworkFunctionType.VirtualNetworkFunction,
///         Preview = true,
///         SkuName = "TestSku",
///         VendorName = "TestVendor",
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewVendorSkus(ctx, "vendorSkus", &hybridnetwork.VendorSkusArgs{
/// 			DeploymentMode:             pulumi.String(hybridnetwork.SkuDeploymentModePrivateEdgeZone),
/// 			ManagedApplicationTemplate: pulumi.Any(map[string]interface{}{}),
/// 			NetworkFunctionTemplate: &hybridnetwork.NetworkFunctionTemplateArgs{
/// 				NetworkFunctionRoleConfigurations: hybridnetwork.NetworkFunctionRoleConfigurationArray{
/// 					&hybridnetwork.NetworkFunctionRoleConfigurationArgs{
/// 						CustomProfile: &hybridnetwork.CustomProfileArgs{
/// 							MetadataConfigurationPath: pulumi.String("/var/logs/network.cfg"),
/// 						},
/// 						NetworkInterfaces: hybridnetwork.NetworkInterfaceArray{
/// 							&hybridnetwork.NetworkInterfaceArgs{
/// 								IpConfigurations: hybridnetwork.NetworkInterfaceIPConfigurationArray{
/// 									&hybridnetwork.NetworkInterfaceIPConfigurationArgs{
/// 										Gateway:            pulumi.String(""),
/// 										IpAddress:          pulumi.String(""),
/// 										IpAllocationMethod: pulumi.String(hybridnetwork.IPAllocationMethodDynamic),
/// 										IpVersion:          pulumi.String(hybridnetwork.IPVersionIPv4),
/// 										Subnet:             pulumi.String(""),
/// 									},
/// 								},
/// 								MacAddress:           pulumi.String(""),
/// 								NetworkInterfaceName: pulumi.String("nic1"),
/// 								VmSwitchType:         pulumi.String(hybridnetwork.VMSwitchTypeWan),
/// 							},
/// 							&hybridnetwork.NetworkInterfaceArgs{
/// 								IpConfigurations: hybridnetwork.NetworkInterfaceIPConfigurationArray{
/// 									&hybridnetwork.NetworkInterfaceIPConfigurationArgs{
/// 										Gateway:            pulumi.String(""),
/// 										IpAddress:          pulumi.String(""),
/// 										IpAllocationMethod: pulumi.String(hybridnetwork.IPAllocationMethodDynamic),
/// 										IpVersion:          pulumi.String(hybridnetwork.IPVersionIPv4),
/// 										Subnet:             pulumi.String(""),
/// 									},
/// 								},
/// 								MacAddress:           pulumi.String(""),
/// 								NetworkInterfaceName: pulumi.String("nic2"),
/// 								VmSwitchType:         pulumi.String(hybridnetwork.VMSwitchTypeManagement),
/// 							},
/// 						},
/// 						OsProfile: &hybridnetwork.OsProfileArgs{
/// 							AdminUsername: pulumi.String("dummyuser"),
/// 							CustomData:    pulumi.String("base-64 encoded string of custom data"),
/// 							LinuxConfiguration: &hybridnetwork.LinuxConfigurationArgs{
/// 								Ssh: &hybridnetwork.SshConfigurationArgs{
/// 									PublicKeys: hybridnetwork.SshPublicKeyArray{
/// 										&hybridnetwork.SshPublicKeyArgs{
/// 											KeyData: pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEAwrr66r8n6B8Y0zMF3dOpXEapIQD9DiYQ6D6/zwor9o39jSkHNiMMER/GETBbzP83LOcekm02aRjo55ArO7gPPVvCXbrirJu9pkm4AC4BBre5xSLS= user@constoso-DSH"),
/// 											Path:    pulumi.String("home/user/.ssh/authorized_keys"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 						RoleName: pulumi.String("test"),
/// 						RoleType: pulumi.String(hybridnetwork.NetworkFunctionRoleConfigurationTypeVirtualMachine),
/// 						StorageProfile: &hybridnetwork.StorageProfileArgs{
/// 							DataDisks: hybridnetwork.DataDiskArray{
/// 								&hybridnetwork.DataDiskArgs{
/// 									CreateOption: pulumi.String(hybridnetwork.DiskCreateOptionTypesEmpty),
/// 									DiskSizeGB:   pulumi.Int(10),
/// 									Name:         pulumi.String("DataDisk1"),
/// 								},
/// 							},
/// 							ImageReference: &hybridnetwork.ImageReferenceArgs{
/// 								Offer:     pulumi.String("UbuntuServer"),
/// 								Publisher: pulumi.String("Canonical"),
/// 								Sku:       pulumi.String("18.04-LTS"),
/// 								Version:   pulumi.String("18.04.201804262"),
/// 							},
/// 							OsDisk: &hybridnetwork.OsDiskArgs{
/// 								DiskSizeGB: pulumi.Int(30),
/// 								Name:       pulumi.String("vhdName"),
/// 								OsType:     pulumi.String(hybridnetwork.OperatingSystemTypesLinux),
/// 								Vhd: &hybridnetwork.VirtualHardDiskArgs{
/// 									Uri: pulumi.String("https://contoso.net/link/vnd.vhd?sp=rl&st=2020-10-08T20:38:19Z&se=2020-12-09T19:38:00Z&sv=2019-12-12&sr=b&sig=7BM2f4yOw%3D"),
/// 								},
/// 							},
/// 						},
/// 						VirtualMachineSize: pulumi.String(hybridnetwork.VirtualMachineSizeTypes_Standard_D3_v2),
/// 					},
/// 				},
/// 			},
/// 			NetworkFunctionType: pulumi.String(hybridnetwork.NetworkFunctionTypeVirtualNetworkFunction),
/// 			Preview:             pulumi.Bool(true),
/// 			SkuName:             pulumi.String("TestSku"),
/// 			VendorName:          pulumi.String("TestVendor"),
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
/// import com.pulumi.azurenative.hybridnetwork.VendorSkus;
/// import com.pulumi.azurenative.hybridnetwork.VendorSkusArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.NetworkFunctionTemplateArgs;
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
///         var vendorSkus = new VendorSkus("vendorSkus", VendorSkusArgs.builder()
///             .deploymentMode("PrivateEdgeZone")
///             .managedApplicationTemplate(Map.ofEntries(
///             ))
///             .networkFunctionTemplate(NetworkFunctionTemplateArgs.builder()
///                 .networkFunctionRoleConfigurations(NetworkFunctionRoleConfigurationArgs.builder()
///                     .customProfile(CustomProfileArgs.builder()
///                         .metadataConfigurationPath("/var/logs/network.cfg")
///                         .build())
///                     .networkInterfaces(
///                         NetworkInterfaceArgs.builder()
///                             .ipConfigurations(NetworkInterfaceIPConfigurationArgs.builder()
///                                 .gateway("")
///                                 .ipAddress("")
///                                 .ipAllocationMethod("Dynamic")
///                                 .ipVersion("IPv4")
///                                 .subnet("")
///                                 .build())
///                             .macAddress("")
///                             .networkInterfaceName("nic1")
///                             .vmSwitchType("Wan")
///                             .build(),
///                         NetworkInterfaceArgs.builder()
///                             .ipConfigurations(NetworkInterfaceIPConfigurationArgs.builder()
///                                 .gateway("")
///                                 .ipAddress("")
///                                 .ipAllocationMethod("Dynamic")
///                                 .ipVersion("IPv4")
///                                 .subnet("")
///                                 .build())
///                             .macAddress("")
///                             .networkInterfaceName("nic2")
///                             .vmSwitchType("Management")
///                             .build())
///                     .osProfile(OsProfileArgs.builder()
///                         .adminUsername("dummyuser")
///                         .customData("base-64 encoded string of custom data")
///                         .linuxConfiguration(LinuxConfigurationArgs.builder()
///                             .ssh(SshConfigurationArgs.builder()
///                                 .publicKeys(SshPublicKeyArgs.builder()
///                                     .keyData("ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEAwrr66r8n6B8Y0zMF3dOpXEapIQD9DiYQ6D6/zwor9o39jSkHNiMMER/GETBbzP83LOcekm02aRjo55ArO7gPPVvCXbrirJu9pkm4AC4BBre5xSLS= user@constoso-DSH")
///                                     .path("home/user/.ssh/authorized_keys")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .roleName("test")
///                     .roleType("VirtualMachine")
///                     .storageProfile(StorageProfileArgs.builder()
///                         .dataDisks(DataDiskArgs.builder()
///                             .createOption("Empty")
///                             .diskSizeGB(10)
///                             .name("DataDisk1")
///                             .build())
///                         .imageReference(ImageReferenceArgs.builder()
///                             .offer("UbuntuServer")
///                             .publisher("Canonical")
///                             .sku("18.04-LTS")
///                             .version("18.04.201804262")
///                             .build())
///                         .osDisk(OsDiskArgs.builder()
///                             .diskSizeGB(30)
///                             .name("vhdName")
///                             .osType("Linux")
///                             .vhd(VirtualHardDiskArgs.builder()
///                                 .uri("https://contoso.net/link/vnd.vhd?sp=rl&st=2020-10-08T20:38:19Z&se=2020-12-09T19:38:00Z&sv=2019-12-12&sr=b&sig=7BM2f4yOw%3D")
///                                 .build())
///                             .build())
///                         .build())
///                     .virtualMachineSize("Standard_D3_v2")
///                     .build())
///                 .build())
///             .networkFunctionType("VirtualNetworkFunction")
///             .preview(true)
///             .skuName("TestSku")
///             .vendorName("TestVendor")
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
/// const vendorSkus = new azure_native.hybridnetwork.VendorSkus("vendorSkus", {
///     deploymentMode: azure_native.hybridnetwork.SkuDeploymentMode.PrivateEdgeZone,
///     managedApplicationTemplate: {},
///     networkFunctionTemplate: {
///         networkFunctionRoleConfigurations: [{
///             customProfile: {
///                 metadataConfigurationPath: "/var/logs/network.cfg",
///             },
///             networkInterfaces: [
///                 {
///                     ipConfigurations: [{
///                         gateway: "",
///                         ipAddress: "",
///                         ipAllocationMethod: azure_native.hybridnetwork.IPAllocationMethod.Dynamic,
///                         ipVersion: azure_native.hybridnetwork.IPVersion.IPv4,
///                         subnet: "",
///                     }],
///                     macAddress: "",
///                     networkInterfaceName: "nic1",
///                     vmSwitchType: azure_native.hybridnetwork.VMSwitchType.Wan,
///                 },
///                 {
///                     ipConfigurations: [{
///                         gateway: "",
///                         ipAddress: "",
///                         ipAllocationMethod: azure_native.hybridnetwork.IPAllocationMethod.Dynamic,
///                         ipVersion: azure_native.hybridnetwork.IPVersion.IPv4,
///                         subnet: "",
///                     }],
///                     macAddress: "",
///                     networkInterfaceName: "nic2",
///                     vmSwitchType: azure_native.hybridnetwork.VMSwitchType.Management,
///                 },
///             ],
///             osProfile: {
///                 adminUsername: "dummyuser",
///                 customData: "base-64 encoded string of custom data",
///                 linuxConfiguration: {
///                     ssh: {
///                         publicKeys: [{
///                             keyData: "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEAwrr66r8n6B8Y0zMF3dOpXEapIQD9DiYQ6D6/zwor9o39jSkHNiMMER/GETBbzP83LOcekm02aRjo55ArO7gPPVvCXbrirJu9pkm4AC4BBre5xSLS= user@constoso-DSH",
///                             path: "home/user/.ssh/authorized_keys",
///                         }],
///                     },
///                 },
///             },
///             roleName: "test",
///             roleType: azure_native.hybridnetwork.NetworkFunctionRoleConfigurationType.VirtualMachine,
///             storageProfile: {
///                 dataDisks: [{
///                     createOption: azure_native.hybridnetwork.DiskCreateOptionTypes.Empty,
///                     diskSizeGB: 10,
///                     name: "DataDisk1",
///                 }],
///                 imageReference: {
///                     offer: "UbuntuServer",
///                     publisher: "Canonical",
///                     sku: "18.04-LTS",
///                     version: "18.04.201804262",
///                 },
///                 osDisk: {
///                     diskSizeGB: 30,
///                     name: "vhdName",
///                     osType: azure_native.hybridnetwork.OperatingSystemTypes.Linux,
///                     vhd: {
///                         uri: "https://contoso.net/link/vnd.vhd?sp=rl&st=2020-10-08T20:38:19Z&se=2020-12-09T19:38:00Z&sv=2019-12-12&sr=b&sig=7BM2f4yOw%3D",
///                     },
///                 },
///             },
///             virtualMachineSize: azure_native.hybridnetwork.VirtualMachineSizeTypes.Standard_D3_v2,
///         }],
///     },
///     networkFunctionType: azure_native.hybridnetwork.NetworkFunctionType.VirtualNetworkFunction,
///     preview: true,
///     skuName: "TestSku",
///     vendorName: "TestVendor",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vendor_skus = azure_native.hybridnetwork.VendorSkus("vendorSkus",
///     deployment_mode=azure_native.hybridnetwork.SkuDeploymentMode.PRIVATE_EDGE_ZONE,
///     managed_application_template={},
///     network_function_template={
///         "network_function_role_configurations": [{
///             "custom_profile": {
///                 "metadata_configuration_path": "/var/logs/network.cfg",
///             },
///             "network_interfaces": [
///                 {
///                     "ip_configurations": [{
///                         "gateway": "",
///                         "ip_address": "",
///                         "ip_allocation_method": azure_native.hybridnetwork.IPAllocationMethod.DYNAMIC,
///                         "ip_version": azure_native.hybridnetwork.IPVersion.I_PV4,
///                         "subnet": "",
///                     }],
///                     "mac_address": "",
///                     "network_interface_name": "nic1",
///                     "vm_switch_type": azure_native.hybridnetwork.VMSwitchType.WAN,
///                 },
///                 {
///                     "ip_configurations": [{
///                         "gateway": "",
///                         "ip_address": "",
///                         "ip_allocation_method": azure_native.hybridnetwork.IPAllocationMethod.DYNAMIC,
///                         "ip_version": azure_native.hybridnetwork.IPVersion.I_PV4,
///                         "subnet": "",
///                     }],
///                     "mac_address": "",
///                     "network_interface_name": "nic2",
///                     "vm_switch_type": azure_native.hybridnetwork.VMSwitchType.MANAGEMENT,
///                 },
///             ],
///             "os_profile": {
///                 "admin_username": "dummyuser",
///                 "custom_data": "base-64 encoded string of custom data",
///                 "linux_configuration": {
///                     "ssh": {
///                         "public_keys": [{
///                             "key_data": "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEAwrr66r8n6B8Y0zMF3dOpXEapIQD9DiYQ6D6/zwor9o39jSkHNiMMER/GETBbzP83LOcekm02aRjo55ArO7gPPVvCXbrirJu9pkm4AC4BBre5xSLS= user@constoso-DSH",
///                             "path": "home/user/.ssh/authorized_keys",
///                         }],
///                     },
///                 },
///             },
///             "role_name": "test",
///             "role_type": azure_native.hybridnetwork.NetworkFunctionRoleConfigurationType.VIRTUAL_MACHINE,
///             "storage_profile": {
///                 "data_disks": [{
///                     "create_option": azure_native.hybridnetwork.DiskCreateOptionTypes.EMPTY,
///                     "disk_size_gb": 10,
///                     "name": "DataDisk1",
///                 }],
///                 "image_reference": {
///                     "offer": "UbuntuServer",
///                     "publisher": "Canonical",
///                     "sku": "18.04-LTS",
///                     "version": "18.04.201804262",
///                 },
///                 "os_disk": {
///                     "disk_size_gb": 30,
///                     "name": "vhdName",
///                     "os_type": azure_native.hybridnetwork.OperatingSystemTypes.LINUX,
///                     "vhd": {
///                         "uri": "https://contoso.net/link/vnd.vhd?sp=rl&st=2020-10-08T20:38:19Z&se=2020-12-09T19:38:00Z&sv=2019-12-12&sr=b&sig=7BM2f4yOw%3D",
///                     },
///                 },
///             },
///             "virtual_machine_size": azure_native.hybridnetwork.VirtualMachineSizeTypes.STANDARD_D3_V2,
///         }],
///     },
///     network_function_type=azure_native.hybridnetwork.NetworkFunctionType.VIRTUAL_NETWORK_FUNCTION,
///     preview=True,
///     sku_name="TestSku",
///     vendor_name="TestVendor")
///
/// ```
///
/// ```yaml
/// resources:
///   vendorSkus:
///     type: azure-native:hybridnetwork:VendorSkus
///     properties:
///       deploymentMode: PrivateEdgeZone
///       managedApplicationTemplate: {}
///       networkFunctionTemplate:
///         networkFunctionRoleConfigurations:
///           - customProfile:
///               metadataConfigurationPath: /var/logs/network.cfg
///             networkInterfaces:
///               - ipConfigurations:
///                   - gateway: ""
///                     ipAddress: ""
///                     ipAllocationMethod: Dynamic
///                     ipVersion: IPv4
///                     subnet: ""
///                 macAddress: ""
///                 networkInterfaceName: nic1
///                 vmSwitchType: Wan
///               - ipConfigurations:
///                   - gateway: ""
///                     ipAddress: ""
///                     ipAllocationMethod: Dynamic
///                     ipVersion: IPv4
///                     subnet: ""
///                 macAddress: ""
///                 networkInterfaceName: nic2
///                 vmSwitchType: Management
///             osProfile:
///               adminUsername: dummyuser
///               customData: base-64 encoded string of custom data
///               linuxConfiguration:
///                 ssh:
///                   publicKeys:
///                     - keyData: ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEAwrr66r8n6B8Y0zMF3dOpXEapIQD9DiYQ6D6/zwor9o39jSkHNiMMER/GETBbzP83LOcekm02aRjo55ArO7gPPVvCXbrirJu9pkm4AC4BBre5xSLS= user@constoso-DSH
///                       path: home/user/.ssh/authorized_keys
///             roleName: test
///             roleType: VirtualMachine
///             storageProfile:
///               dataDisks:
///                 - createOption: Empty
///                   diskSizeGB: 10
///                   name: DataDisk1
///               imageReference:
///                 offer: UbuntuServer
///                 publisher: Canonical
///                 sku: 18.04-LTS
///                 version: 18.04.201804262
///               osDisk:
///                 diskSizeGB: 30
///                 name: vhdName
///                 osType: Linux
///                 vhd:
///                   uri: https://contoso.net/link/vnd.vhd?sp=rl&st=2020-10-08T20:38:19Z&se=2020-12-09T19:38:00Z&sv=2019-12-12&sr=b&sig=7BM2f4yOw%3D
///             virtualMachineSize: Standard_D3_v2
///       networkFunctionType: VirtualNetworkFunction
///       preview: true
///       skuName: TestSku
///       vendorName: TestVendor
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
/// $ pulumi import azure-native:hybridnetwork:VendorSkus TestSku /subscriptions/{subscriptionId}/providers/Microsoft.HybridNetwork/vendors/{vendorName}/vendorSkus/{skuName}
/// ```
class VendorSkus extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The sku deployment mode.
  late final pulumi.Output<String?> deploymentMode;

  /// The parameters for the managed application to be supplied by the vendor.
  late final pulumi.Output<dynamic> managedApplicationParameters;

  /// The template for the managed application deployment.
  late final pulumi.Output<dynamic> managedApplicationTemplate;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The template definition of the network function.
  late final pulumi.Output<NetworkFunctionTemplateResponse?>
  networkFunctionTemplate;

  /// The network function type.
  late final pulumi.Output<String?> networkFunctionType;

  /// Indicates if the vendor sku is in preview mode.
  late final pulumi.Output<bool?> preview;

  /// The provisioning state of the vendor sku sub resource.
  late final pulumi.Output<String> provisioningState;

  /// The sku type.
  late final pulumi.Output<String?> skuType;

  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [VendorSkus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VendorSkus]. {@macro pulumi_hybridnetwork_vendor_skus_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VendorSkus(
    String name, {
    VendorSkusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hybridnetwork:VendorSkus',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deploymentMode = registerOutput<String?>('deploymentMode');
    managedApplicationParameters = registerOutput<dynamic>(
      'managedApplicationParameters',
    );
    managedApplicationTemplate = registerOutput<dynamic>(
      'managedApplicationTemplate',
    );
    this.name = registerOutput<String>('name');
    networkFunctionTemplate = registerOutput<NetworkFunctionTemplateResponse?>(
      'networkFunctionTemplate',
    );
    networkFunctionType = registerOutput<String?>('networkFunctionType');
    preview = registerOutput<bool?>('preview');
    provisioningState = registerOutput<String>('provisioningState');
    skuType = registerOutput<String?>('skuType');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
