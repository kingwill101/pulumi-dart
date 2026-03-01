import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_virtual_machine_additional_capabilities.dart';
import 'linux_virtual_machine_admin_ssh_key.dart';
import 'linux_virtual_machine_args.dart';
import 'linux_virtual_machine_boot_diagnostics.dart';
import 'linux_virtual_machine_gallery_application.dart';
import 'linux_virtual_machine_identity.dart';
import 'linux_virtual_machine_os_disk.dart';
import 'linux_virtual_machine_os_image_notification.dart';
import 'linux_virtual_machine_plan.dart';
import 'linux_virtual_machine_secret.dart';
import 'linux_virtual_machine_source_image_reference.dart';
import 'linux_virtual_machine_termination_notification.dart';

/// Manages a Linux Virtual Machine.
///
/// ## Disclaimers
///
/// > **Note** This provider will automatically remove the OS Disk by default - this behaviour can be configured using the `features` configuration within the Provider configuration block.
///
/// > **Note** All arguments including the administrator login and password will be stored in the raw state as plain-text.
///
/// > **Note** This resource does not support Unmanaged Disks. If you need to use Unmanaged Disks you can continue to use the `azure.compute.VirtualMachine` resource instead.
///
/// > **Note** This resource does not support attaching existing OS Disks. You can instead capture an image of the OS Disk or continue to use the `azure.compute.VirtualMachine` resource instead.
///
/// > In this release there's a known issue where the `public_ip_address` and `public_ip_addresses` fields may not be fully populated for Dynamic Public IP's.
///
/// ## Example Usage
///
/// This example provisions a basic Linux Virtual Machine on an internal network.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-network",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "internal",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleNetworkInterface = new azure.network.NetworkInterface("example", {
///     name: "example-nic",
///     location: example.location,
///     resourceGroupName: example.name,
///     ipConfigurations: [{
///         name: "internal",
///         subnetId: exampleSubnet.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const exampleLinuxVirtualMachine = new azure.compute.LinuxVirtualMachine("example", {
///     name: "example-machine",
///     resourceGroupName: example.name,
///     location: example.location,
///     size: "Standard_F2",
///     adminUsername: "adminuser",
///     networkInterfaceIds: [exampleNetworkInterface.id],
///     adminSshKeys: [{
///         username: "adminuser",
///         publicKey: std.file({
///             input: "~/.ssh/id_rsa.pub",
///         }).then(invoke => invoke.result),
///     }],
///     osDisk: {
///         caching: "ReadWrite",
///         storageAccountType: "Standard_LRS",
///     },
///     sourceImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-network",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="internal",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="example-nic",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_configurations=[{
///         "name": "internal",
///         "subnet_id": example_subnet.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_linux_virtual_machine = azure.compute.LinuxVirtualMachine("example",
///     name="example-machine",
///     resource_group_name=example.name,
///     location=example.location,
///     size="Standard_F2",
///     admin_username="adminuser",
///     network_interface_ids=[example_network_interface.id],
///     admin_ssh_keys=[{
///         "username": "adminuser",
///         "public_key": std.file(input="~/.ssh/id_rsa.pub").result,
///     }],
///     os_disk={
///         "caching": "ReadWrite",
///         "storage_account_type": "Standard_LRS",
///     },
///     source_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-network",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "internal",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var exampleNetworkInterface = new Azure.Network.NetworkInterface("example", new()
///     {
///         Name = "example-nic",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkInterfaceIpConfigurationArgs
///             {
///                 Name = "internal",
///                 SubnetId = exampleSubnet.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///             },
///         },
///     });
///
///     var exampleLinuxVirtualMachine = new Azure.Compute.LinuxVirtualMachine("example", new()
///     {
///         Name = "example-machine",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Size = "Standard_F2",
///         AdminUsername = "adminuser",
///         NetworkInterfaceIds = new[]
///         {
///             exampleNetworkInterface.Id,
///         },
///         AdminSshKeys = new[]
///         {
///             new Azure.Compute.Inputs.LinuxVirtualMachineAdminSshKeyArgs
///             {
///                 Username = "adminuser",
///                 PublicKey = Std.File.Invoke(new()
///                 {
///                     Input = "~/.ssh/id_rsa.pub",
///                 }).Apply(invoke => invoke.Result),
///             },
///         },
///         OsDisk = new Azure.Compute.Inputs.LinuxVirtualMachineOsDiskArgs
///         {
///             Caching = "ReadWrite",
///             StorageAccountType = "Standard_LRS",
///         },
///         SourceImageReference = new Azure.Compute.Inputs.LinuxVirtualMachineSourceImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-network"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("internal"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkInterface, err := network.NewNetworkInterface(ctx, "example", &network.NetworkInterfaceArgs{
/// 			Name:              pulumi.String("example-nic"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			IpConfigurations: network.NetworkInterfaceIpConfigurationArray{
/// 				&network.NetworkInterfaceIpConfigurationArgs{
/// 					Name:                       pulumi.String("internal"),
/// 					SubnetId:                   exampleSubnet.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "~/.ssh/id_rsa.pub",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewLinuxVirtualMachine(ctx, "example", &compute.LinuxVirtualMachineArgs{
/// 			Name:              pulumi.String("example-machine"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Size:              pulumi.String("Standard_F2"),
/// 			AdminUsername:     pulumi.String("adminuser"),
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				exampleNetworkInterface.ID(),
/// 			},
/// 			AdminSshKeys: compute.LinuxVirtualMachineAdminSshKeyArray{
/// 				&compute.LinuxVirtualMachineAdminSshKeyArgs{
/// 					Username:  pulumi.String("adminuser"),
/// 					PublicKey: pulumi.String(invokeFile.Result),
/// 				},
/// 			},
/// 			OsDisk: &compute.LinuxVirtualMachineOsDiskArgs{
/// 				Caching:            pulumi.String("ReadWrite"),
/// 				StorageAccountType: pulumi.String("Standard_LRS"),
/// 			},
/// 			SourceImageReference: &compute.LinuxVirtualMachineSourceImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.compute.LinuxVirtualMachine;
/// import com.pulumi.azure.compute.LinuxVirtualMachineArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineAdminSshKeyArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineSourceImageReferenceArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-network")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("internal")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleNetworkInterface = new NetworkInterface("exampleNetworkInterface", NetworkInterfaceArgs.builder()
///             .name("example-nic")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("internal")
///                 .subnetId(exampleSubnet.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .build())
///             .build());
///
///         var exampleLinuxVirtualMachine = new LinuxVirtualMachine("exampleLinuxVirtualMachine", LinuxVirtualMachineArgs.builder()
///             .name("example-machine")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .size("Standard_F2")
///             .adminUsername("adminuser")
///             .networkInterfaceIds(exampleNetworkInterface.id())
///             .adminSshKeys(LinuxVirtualMachineAdminSshKeyArgs.builder()
///                 .username("adminuser")
///                 .publicKey(StdFunctions.file(FileArgs.builder()
///                     .input("~/.ssh/id_rsa.pub")
///                     .build()).result())
///                 .build())
///             .osDisk(LinuxVirtualMachineOsDiskArgs.builder()
///                 .caching("ReadWrite")
///                 .storageAccountType("Standard_LRS")
///                 .build())
///             .sourceImageReference(LinuxVirtualMachineSourceImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-network
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: internal
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleNetworkInterface:
///     type: azure:network:NetworkInterface
///     name: example
///     properties:
///       name: example-nic
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       ipConfigurations:
///         - name: internal
///           subnetId: ${exampleSubnet.id}
///           privateIpAddressAllocation: Dynamic
///   exampleLinuxVirtualMachine:
///     type: azure:compute:LinuxVirtualMachine
///     name: example
///     properties:
///       name: example-machine
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       size: Standard_F2
///       adminUsername: adminuser
///       networkInterfaceIds:
///         - ${exampleNetworkInterface.id}
///       adminSshKeys:
///         - username: adminuser
///           publicKey:
///             fn::invoke:
///               function: std:file
///               arguments:
///                 input: ~/.ssh/id_rsa.pub
///               return: result
///       osDisk:
///         caching: ReadWrite
///         storageAccountType: Standard_LRS
///       sourceImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-03-01, 2023-04-02
///
/// ## Import
///
/// Linux Virtual Machines can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/linuxVirtualMachine:LinuxVirtualMachine example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/virtualMachines/machine1
/// ```
class LinuxVirtualMachine extends pulumi.CustomResource {
  /// A `additional_capabilities` block as defined below.
  late final pulumi.Output<LinuxVirtualMachineAdditionalCapabilities?> additionalCapabilities;
  /// The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** When an `admin_password` is specified `disable_password_authentication` must be set to `false`.
  /// > **NOTE:** One of either `admin_password` or `admin_ssh_key` must be specified.
  late final pulumi.Output<String?> adminPassword;
  /// One or more `admin_ssh_key` blocks as defined below. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** One of either `admin_password` or `admin_ssh_key` must be specified.
  late final pulumi.Output<List<LinuxVirtualMachineAdminSshKey>?> adminSshKeys;
  /// The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This is required unless using an existing OS Managed Disk by specifying `os_managed_disk_id`.
  late final pulumi.Output<String?> adminUsername;
  /// Should Extension Operations be allowed on this Virtual Machine? Defaults to `true`.
  late final pulumi.Output<bool> allowExtensionOperations;
  /// Specifies the ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> availabilitySetId;
  /// A `boot_diagnostics` block as defined below.
  late final pulumi.Output<LinuxVirtualMachineBootDiagnostics?> bootDiagnostics;
  /// Specifies whether to skip platform scheduled patching when a user schedule is associated with the VM. Defaults to `false`.
  ///
  /// > **NOTE:** `bypass_platform_safety_checks_on_user_schedule_enabled` can only be set to `true` when `patch_mode` is set to `AutomaticByPlatform`.
  late final pulumi.Output<bool?> bypassPlatformSafetyChecksOnUserScheduleEnabled;
  /// Specifies the ID of the Capacity Reservation Group which the Virtual Machine should be allocated to.
  ///
  /// > **NOTE:** `capacity_reservation_group_id` cannot be used with `availability_set_id` or `proximity_placement_group_id`
  late final pulumi.Output<String?> capacityReservationGroupId;
  /// Specifies the Hostname which should be used for this Virtual Machine. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computer_name`, then you must specify `computer_name`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> computerName;
  /// The Base64-Encoded Custom Data which should be used for this Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> customData;
  /// The ID of a Dedicated Host Group that this Linux Virtual Machine should be run within. Conflicts with `dedicated_host_id`.
  late final pulumi.Output<String?> dedicatedHostGroupId;
  /// The ID of a Dedicated Host where this machine should be run on. Conflicts with `dedicated_host_group_id`.
  late final pulumi.Output<String?> dedicatedHostId;
  /// Should Password Authentication be disabled on this Virtual Machine? Defaults to `true`. Changing this forces a new resource to be created.
  ///
  /// > In general we'd recommend using SSH Keys for authentication rather than Passwords - but there's tradeoff's to each - please [see this thread for more information](https://security.stackexchange.com/questions/69407/why-is-using-an-ssh-key-more-secure-than-using-passwords).
  ///
  /// > **NOTE:** When an `admin_password` is specified `disable_password_authentication` must be set to `false`.
  late final pulumi.Output<bool> disablePasswordAuthentication;
  /// Specifies the Disk Controller Type used for this Virtual Machine. Possible values are `SCSI` and `NVMe`.
  late final pulumi.Output<String> diskControllerType;
  /// Specifies the Edge Zone within the Azure Region where this Linux Virtual Machine should exist. Changing this forces a new Linux Virtual Machine to be created.
  late final pulumi.Output<String?> edgeZone;
  /// Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?
  late final pulumi.Output<bool?> encryptionAtHostEnabled;
  /// Specifies what should happen when the Virtual Machine is evicted for price reasons when using a Spot instance. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** This can only be configured when `priority` is set to `Spot`.
  late final pulumi.Output<String?> evictionPolicy;
  /// Specifies the duration allocated for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  late final pulumi.Output<String?> extensionsTimeBudget;
  /// One or more `gallery_application` blocks as defined below.
  ///
  /// > **Note** Gallery Application Assignments can be defined either directly on `azure.compute.LinuxVirtualMachine` resource, or using the `azure.compute.GalleryApplicationAssignment` resource - but the two approaches cannot be used together. If both are used with the same Virtual Machine, spurious changes will occur. If `azure.compute.GalleryApplicationAssignment` is used, it's recommended to use `ignore_changes` for the `gallery_application` block on the corresponding `azure.compute.LinuxVirtualMachine` resource, to avoid a persistent diff when using this resource.
  late final pulumi.Output<List<LinuxVirtualMachineGalleryApplication>?> galleryApplications;
  /// An `identity` block as defined below.
  late final pulumi.Output<LinuxVirtualMachineIdentity?> identity;
  /// Specifies the License Type for this Virtual Machine. Possible values are `RHEL_BYOS`, `RHEL_BASE`, `RHEL_EUS`, `RHEL_SAPAPPS`, `RHEL_SAPHA`, `RHEL_BASESAPAPPS`, `RHEL_BASESAPHA`, `SLES_BYOS`, `SLES_SAP`, `SLES_HPC`, `UBUNTU_PRO`.
  late final pulumi.Output<String?> licenseType;
  /// The Azure location where the Linux Virtual Machine should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The maximum price you're willing to pay for this Virtual Machine, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machine will be evicted using the `eviction_policy`. Defaults to `-1`, which means that the Virtual Machine should not be evicted for price reasons.
  ///
  /// > **NOTE:** This can only be configured when `priority` is set to `Spot`.
  late final pulumi.Output<double?> maxBidPrice;
  /// The name of the Linux Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// . A list of Network Interface IDs which should be attached to this Virtual Machine. The first Network Interface ID in this list will be the Primary Network Interface on the Virtual Machine.
  late final pulumi.Output<List<String>> networkInterfaceIds;
  /// A `os_disk` block as defined below.
  late final pulumi.Output<LinuxVirtualMachineOsDisk> osDisk;
  /// A `os_image_notification` block as defined below.
  late final pulumi.Output<LinuxVirtualMachineOsImageNotification?> osImageNotification;
  /// The ID of an existing Managed Disk to use as the OS Disk for this Linux Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// > **Note:** When specifying an existing Managed Disk it is not currently possible to subsequently manage the Operating System Profile properties: `admin_username`, `admin_password`, `bypass_platform_safety_checks_on_user_schedule_enabled`, `computer_name`, `custom_data`, `provision_vm_agent`, `patch_mode`, `patch_assessment_mode`, or `reboot_setting`.
  late final pulumi.Output<String> osManagedDiskId;
  /// Specifies the mode of VM Guest Patching for the Virtual Machine. Possible values are `AutomaticByPlatform` or `ImageDefault`. Defaults to `ImageDefault`.
  ///
  /// > **NOTE:** If the `patch_assessment_mode` is set to `AutomaticByPlatform` then the `provision_vm_agent` field must be set to `true`.
  late final pulumi.Output<String> patchAssessmentMode;
  /// Specifies the mode of in-guest patching to this Linux Virtual Machine. Possible values are `AutomaticByPlatform` and `ImageDefault`. Defaults to `ImageDefault`. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes).
  ///
  /// > **NOTE:** If `patch_mode` is set to `AutomaticByPlatform` then `provision_vm_agent` must also be set to `true`.
  late final pulumi.Output<String> patchMode;
  /// A `plan` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<LinuxVirtualMachinePlan?> plan;
  /// Specifies the Platform Fault Domain in which this Linux Virtual Machine should be created. Defaults to `-1`, which means this will be automatically assigned to a fault domain that best maintains balance across the available fault domains. Changing this forces a new Linux Virtual Machine to be created.
  late final pulumi.Output<int?> platformFaultDomain;
  /// Specifies the priority of this Virtual Machine. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> priority;
  /// The Primary Private IP Address assigned to this Virtual Machine.
  late final pulumi.Output<String> privateIpAddress;
  /// A list of Private IP Addresses assigned to this Virtual Machine.
  late final pulumi.Output<List<String>> privateIpAddresses;
  /// Should the Azure VM Agent be provisioned on this Virtual Machine? Defaults to `true`. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** If `provision_vm_agent` is set to `false` then `allow_extension_operations` must also be set to `false`.
  late final pulumi.Output<bool> provisionVmAgent;
  /// The ID of the Proximity Placement Group which the Virtual Machine should be assigned to.
  late final pulumi.Output<String?> proximityPlacementGroupId;
  /// The Primary Public IP Address assigned to this Virtual Machine.
  late final pulumi.Output<String> publicIpAddress;
  /// A list of the Public IP Addresses assigned to this Virtual Machine.
  late final pulumi.Output<List<String>> publicIpAddresses;
  /// Specifies the reboot setting for platform scheduled patching. Possible values are `Always`, `IfRequired` and `Never`.
  ///
  /// > **NOTE:** `reboot_setting` can only be set when `patch_mode` is set to `AutomaticByPlatform`.
  late final pulumi.Output<String?> rebootSetting;
  /// The name of the Resource Group in which the Linux Virtual Machine should be exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// One or more `secret` blocks as defined below.
  late final pulumi.Output<List<LinuxVirtualMachineSecret>?> secrets;
  /// Specifies whether secure boot should be enabled on the virtual machine. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> secureBootEnabled;
  /// The SKU which should be used for this Virtual Machine, such as `Standard_F2`.
  late final pulumi.Output<String> size;
  /// The ID of the Image which this Virtual Machine should be created from. Changing this forces a new resource to be created. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s.
  ///
  /// > **NOTE:** One of either `source_image_id` or `source_image_reference` must be set.
  late final pulumi.Output<String?> sourceImageId;
  /// A `source_image_reference` block as defined below. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** One of either `source_image_id` or `source_image_reference` must be set.
  late final pulumi.Output<LinuxVirtualMachineSourceImageReference?> sourceImageReference;
  /// A mapping of tags which should be assigned to this Virtual Machine.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `termination_notification` block as defined below.
  late final pulumi.Output<LinuxVirtualMachineTerminationNotification> terminationNotification;
  /// The Base64-Encoded User Data which should be used for this Virtual Machine.
  late final pulumi.Output<String?> userData;
  /// A 128-bit identifier which uniquely identifies this Virtual Machine.
  late final pulumi.Output<String> virtualMachineId;
  /// Specifies the Orchestrated Virtual Machine Scale Set that this Virtual Machine should be created within.
  ///
  /// > **NOTE:** To update `virtual_machine_scale_set_id` the Preview Feature `Microsoft.Compute/SingleFDAttachDetachVMToVmss` needs to be enabled, see [the documentation](https://review.learn.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-attach-detach-vm#enroll-in-the-preview) for more information.
  ///
  /// > **NOTE:** Orchestrated Virtual Machine Scale Sets can be provisioned using [the `azure.compute.OrchestratedVirtualMachineScaleSet` resource](https://www.terraform.io/docs/providers/azurerm/r/orchestrated_virtual_machine_scale_set.html).
  ///
  /// > **NOTE:** To attach an existing VM to a Virtual Machine Scale Set, the scale set must have `single_placement_group` set to `false`, see [the documentation](https://learn.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-attach-detach-vm?tabs=portal-1%2Cportal-2%2Cportal-3#limitations-for-attaching-an-existing-vm-to-a-scale-set) for more information.
  late final pulumi.Output<String?> virtualMachineScaleSetId;
  /// Specifies whether VMAgent Platform Updates is enabled. Defaults to `false`.
  late final pulumi.Output<bool> vmAgentPlatformUpdatesEnabled;
  /// Specifies whether vTPM should be enabled on the virtual machine. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> vtpmEnabled;
  /// Specifies the Availability Zones in which this Linux Virtual Machine should be located. Changing this forces a new Linux Virtual Machine to be created.
  late final pulumi.Output<String?> zone;

  /// Creates a new [LinuxVirtualMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinuxVirtualMachine]. {@macro pulumi_compute_linux_virtual_machine_linux_virtual_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinuxVirtualMachine(
    String name, {
    LinuxVirtualMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/linuxVirtualMachine:LinuxVirtualMachine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalCapabilities = registerOutput<LinuxVirtualMachineAdditionalCapabilities?>('additionalCapabilities');
    this.adminPassword = registerOutput<String?>('adminPassword');
    this.adminSshKeys = registerOutput<List<LinuxVirtualMachineAdminSshKey>?>('adminSshKeys');
    this.adminUsername = registerOutput<String?>('adminUsername');
    this.allowExtensionOperations = registerOutput<bool>('allowExtensionOperations');
    this.availabilitySetId = registerOutput<String?>('availabilitySetId');
    this.bootDiagnostics = registerOutput<LinuxVirtualMachineBootDiagnostics?>('bootDiagnostics');
    this.bypassPlatformSafetyChecksOnUserScheduleEnabled = registerOutput<bool?>('bypassPlatformSafetyChecksOnUserScheduleEnabled');
    this.capacityReservationGroupId = registerOutput<String?>('capacityReservationGroupId');
    this.computerName = registerOutput<String>('computerName');
    this.customData = registerOutput<String?>('customData');
    this.dedicatedHostGroupId = registerOutput<String?>('dedicatedHostGroupId');
    this.dedicatedHostId = registerOutput<String?>('dedicatedHostId');
    this.disablePasswordAuthentication = registerOutput<bool>('disablePasswordAuthentication');
    this.diskControllerType = registerOutput<String>('diskControllerType');
    this.edgeZone = registerOutput<String?>('edgeZone');
    this.encryptionAtHostEnabled = registerOutput<bool?>('encryptionAtHostEnabled');
    this.evictionPolicy = registerOutput<String?>('evictionPolicy');
    this.extensionsTimeBudget = registerOutput<String?>('extensionsTimeBudget');
    this.galleryApplications = registerOutput<List<LinuxVirtualMachineGalleryApplication>?>('galleryApplications');
    this.identity = registerOutput<LinuxVirtualMachineIdentity?>('identity');
    this.licenseType = registerOutput<String?>('licenseType');
    this.location = registerOutput<String>('location');
    this.maxBidPrice = registerOutput<double?>('maxBidPrice');
    this.name = registerOutput<String>('name');
    this.networkInterfaceIds = registerOutput<List<String>>('networkInterfaceIds');
    this.osDisk = registerOutput<LinuxVirtualMachineOsDisk>('osDisk');
    this.osImageNotification = registerOutput<LinuxVirtualMachineOsImageNotification?>('osImageNotification');
    this.osManagedDiskId = registerOutput<String>('osManagedDiskId');
    this.patchAssessmentMode = registerOutput<String>('patchAssessmentMode');
    this.patchMode = registerOutput<String>('patchMode');
    this.plan = registerOutput<LinuxVirtualMachinePlan?>('plan');
    this.platformFaultDomain = registerOutput<int?>('platformFaultDomain');
    this.priority = registerOutput<String?>('priority');
    this.privateIpAddress = registerOutput<String>('privateIpAddress');
    this.privateIpAddresses = registerOutput<List<String>>('privateIpAddresses');
    this.provisionVmAgent = registerOutput<bool>('provisionVmAgent');
    this.proximityPlacementGroupId = registerOutput<String?>('proximityPlacementGroupId');
    this.publicIpAddress = registerOutput<String>('publicIpAddress');
    this.publicIpAddresses = registerOutput<List<String>>('publicIpAddresses');
    this.rebootSetting = registerOutput<String?>('rebootSetting');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.secrets = registerOutput<List<LinuxVirtualMachineSecret>?>('secrets');
    this.secureBootEnabled = registerOutput<bool?>('secureBootEnabled');
    this.size = registerOutput<String>('size');
    this.sourceImageId = registerOutput<String?>('sourceImageId');
    this.sourceImageReference = registerOutput<LinuxVirtualMachineSourceImageReference?>('sourceImageReference');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.terminationNotification = registerOutput<LinuxVirtualMachineTerminationNotification>('terminationNotification');
    this.userData = registerOutput<String?>('userData');
    this.virtualMachineId = registerOutput<String>('virtualMachineId');
    this.virtualMachineScaleSetId = registerOutput<String?>('virtualMachineScaleSetId');
    this.vmAgentPlatformUpdatesEnabled = registerOutput<bool>('vmAgentPlatformUpdatesEnabled');
    this.vtpmEnabled = registerOutput<bool?>('vtpmEnabled');
    this.zone = registerOutput<String?>('zone');
  }
}
