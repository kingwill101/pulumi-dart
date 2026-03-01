import 'package:pulumi/pulumi.dart' as pulumi;
import 'applicable_schedule_response.dart';
import 'artifact_deployment_status_properties_response.dart';
import 'artifact_install_properties_response.dart';
import 'compute_vm_properties_response.dart';
import 'data_disk_properties_response.dart';
import 'gallery_image_reference_response.dart';
import 'network_interface_properties_response.dart';
import 'schedule_creation_parameter_response.dart';
import 'virtual_machine_args.dart';

/// A virtual machine.
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VirtualMachines_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.DevTestLab.VirtualMachine("virtualMachine", new()
///     {
///         AllowClaim = true,
///         DisallowPublicIpAddress = true,
///         GalleryImageReference = new AzureNative.DevTestLab.Inputs.GalleryImageReferenceArgs
///         {
///             Offer = "UbuntuServer",
///             OsType = "Linux",
///             Publisher = "Canonical",
///             Sku = "16.04-LTS",
///             Version = "Latest",
///         },
///         LabName = "{labName}",
///         LabSubnetName = "{virtualNetworkName}Subnet",
///         LabVirtualNetworkId = "/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualnetworks/{virtualNetworkName}",
///         Location = "{location}",
///         Name = "{vmName}",
///         Password = "{userPassword}",
///         ResourceGroupName = "resourceGroupName",
///         Size = "Standard_A2_v2",
///         StorageType = "Standard",
///         Tags =
///         {
///             { "tagName1", "tagValue1" },
///         },
///         UserName = "{userName}",
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
/// 	devtestlab "github.com/pulumi/pulumi-azure-native-sdk/devtestlab/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devtestlab.NewVirtualMachine(ctx, "virtualMachine", &devtestlab.VirtualMachineArgs{
/// 			AllowClaim:              pulumi.Bool(true),
/// 			DisallowPublicIpAddress: pulumi.Bool(true),
/// 			GalleryImageReference: &devtestlab.GalleryImageReferenceArgs{
/// 				Offer:     pulumi.String("UbuntuServer"),
/// 				OsType:    pulumi.String("Linux"),
/// 				Publisher: pulumi.String("Canonical"),
/// 				Sku:       pulumi.String("16.04-LTS"),
/// 				Version:   pulumi.String("Latest"),
/// 			},
/// 			LabName:             pulumi.String("{labName}"),
/// 			LabSubnetName:       pulumi.String("{virtualNetworkName}Subnet"),
/// 			LabVirtualNetworkId: pulumi.String("/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualnetworks/{virtualNetworkName}"),
/// 			Location:            pulumi.String("{location}"),
/// 			Name:                pulumi.String("{vmName}"),
/// 			Password:            pulumi.String("{userPassword}"),
/// 			ResourceGroupName:   pulumi.String("resourceGroupName"),
/// 			Size:                pulumi.String("Standard_A2_v2"),
/// 			StorageType:         pulumi.String("Standard"),
/// 			Tags: pulumi.StringMap{
/// 				"tagName1": pulumi.String("tagValue1"),
/// 			},
/// 			UserName: pulumi.String("{userName}"),
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
/// import com.pulumi.azurenative.devtestlab.VirtualMachine;
/// import com.pulumi.azurenative.devtestlab.VirtualMachineArgs;
/// import com.pulumi.azurenative.devtestlab.inputs.GalleryImageReferenceArgs;
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
///             .allowClaim(true)
///             .disallowPublicIpAddress(true)
///             .galleryImageReference(GalleryImageReferenceArgs.builder()
///                 .offer("UbuntuServer")
///                 .osType("Linux")
///                 .publisher("Canonical")
///                 .sku("16.04-LTS")
///                 .version("Latest")
///                 .build())
///             .labName("{labName}")
///             .labSubnetName("{virtualNetworkName}Subnet")
///             .labVirtualNetworkId("/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualnetworks/{virtualNetworkName}")
///             .location("{location}")
///             .name("{vmName}")
///             .password("{userPassword}")
///             .resourceGroupName("resourceGroupName")
///             .size("Standard_A2_v2")
///             .storageType("Standard")
///             .tags(Map.of("tagName1", "tagValue1"))
///             .userName("{userName}")
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
/// const virtualMachine = new azure_native.devtestlab.VirtualMachine("virtualMachine", {
///     allowClaim: true,
///     disallowPublicIpAddress: true,
///     galleryImageReference: {
///         offer: "UbuntuServer",
///         osType: "Linux",
///         publisher: "Canonical",
///         sku: "16.04-LTS",
///         version: "Latest",
///     },
///     labName: "{labName}",
///     labSubnetName: "{virtualNetworkName}Subnet",
///     labVirtualNetworkId: "/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualnetworks/{virtualNetworkName}",
///     location: "{location}",
///     name: "{vmName}",
///     password: "{userPassword}",
///     resourceGroupName: "resourceGroupName",
///     size: "Standard_A2_v2",
///     storageType: "Standard",
///     tags: {
///         tagName1: "tagValue1",
///     },
///     userName: "{userName}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.devtestlab.VirtualMachine("virtualMachine",
///     allow_claim=True,
///     disallow_public_ip_address=True,
///     gallery_image_reference={
///         "offer": "UbuntuServer",
///         "os_type": "Linux",
///         "publisher": "Canonical",
///         "sku": "16.04-LTS",
///         "version": "Latest",
///     },
///     lab_name="{labName}",
///     lab_subnet_name="{virtualNetworkName}Subnet",
///     lab_virtual_network_id="/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualnetworks/{virtualNetworkName}",
///     location="{location}",
///     name="{vmName}",
///     password="{userPassword}",
///     resource_group_name="resourceGroupName",
///     size="Standard_A2_v2",
///     storage_type="Standard",
///     tags={
///         "tagName1": "tagValue1",
///     },
///     user_name="{userName}")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:devtestlab:VirtualMachine
///     properties:
///       allowClaim: true
///       disallowPublicIpAddress: true
///       galleryImageReference:
///         offer: UbuntuServer
///         osType: Linux
///         publisher: Canonical
///         sku: 16.04-LTS
///         version: Latest
///       labName: '{labName}'
///       labSubnetName: '{virtualNetworkName}Subnet'
///       labVirtualNetworkId: /subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualnetworks/{virtualNetworkName}
///       location: '{location}'
///       name: '{vmName}'
///       password: '{userPassword}'
///       resourceGroupName: resourceGroupName
///       size: Standard_A2_v2
///       storageType: Standard
///       tags:
///         tagName1: tagValue1
///       userName: '{userName}'
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
/// $ pulumi import azure-native:devtestlab:VirtualMachine {vmName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/virtualmachines/{name}
/// ```
class VirtualMachine extends pulumi.CustomResource {
  /// Indicates whether another user can take ownership of the virtual machine
  late final pulumi.Output<bool?> allowClaim;
  /// The applicable schedule for the virtual machine.
  late final pulumi.Output<ApplicableScheduleResponse> applicableSchedule;
  /// The artifact deployment status for the virtual machine.
  late final pulumi.Output<ArtifactDeploymentStatusPropertiesResponse> artifactDeploymentStatus;
  /// The artifacts to be installed on the virtual machine.
  late final pulumi.Output<List<ArtifactInstallPropertiesResponse>?> artifacts;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource identifier (Microsoft.Compute) of the virtual machine.
  late final pulumi.Output<String> computeId;
  /// The compute virtual machine properties.
  late final pulumi.Output<ComputeVmPropertiesResponse> computeVm;
  /// The email address of creator of the virtual machine.
  late final pulumi.Output<String> createdByUser;
  /// The object identifier of the creator of the virtual machine.
  late final pulumi.Output<String> createdByUserId;
  /// The creation date of the virtual machine.
  late final pulumi.Output<String?> createdDate;
  /// The custom image identifier of the virtual machine.
  late final pulumi.Output<String?> customImageId;
  /// New or existing data disks to attach to the virtual machine after creation
  late final pulumi.Output<List<DataDiskPropertiesResponse>?> dataDiskParameters;
  /// Indicates whether the virtual machine is to be created without a public IP address.
  late final pulumi.Output<bool?> disallowPublicIpAddress;
  /// The resource ID of the environment that contains this virtual machine, if any.
  late final pulumi.Output<String?> environmentId;
  /// The expiration date for VM.
  late final pulumi.Output<String?> expirationDate;
  /// The fully-qualified domain name of the virtual machine.
  late final pulumi.Output<String> fqdn;
  /// The Microsoft Azure Marketplace image reference of the virtual machine.
  late final pulumi.Output<GalleryImageReferenceResponse?> galleryImageReference;
  /// Indicates whether this virtual machine uses an SSH key for authentication.
  late final pulumi.Output<bool?> isAuthenticationWithSshKey;
  /// The lab subnet name of the virtual machine.
  late final pulumi.Output<String?> labSubnetName;
  /// The lab virtual network identifier of the virtual machine.
  late final pulumi.Output<String?> labVirtualNetworkId;
  /// Last known compute power state captured in DTL
  late final pulumi.Output<String> lastKnownPowerState;
  /// The location of the resource.
  late final pulumi.Output<String?> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The network interface properties.
  late final pulumi.Output<NetworkInterfacePropertiesResponse?> networkInterface;
  /// The notes of the virtual machine.
  late final pulumi.Output<String?> notes;
  /// The OS type of the virtual machine.
  late final pulumi.Output<String> osType;
  /// The object identifier of the owner of the virtual machine.
  late final pulumi.Output<String?> ownerObjectId;
  /// The user principal name of the virtual machine owner.
  late final pulumi.Output<String?> ownerUserPrincipalName;
  /// The password of the virtual machine administrator.
  late final pulumi.Output<String?> password;
  /// The id of the plan associated with the virtual machine image
  late final pulumi.Output<String?> planId;
  /// The provisioning status of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Virtual Machine schedules to be created
  late final pulumi.Output<List<ScheduleCreationParameterResponse>?> scheduleParameters;
  /// The size of the virtual machine.
  late final pulumi.Output<String?> size;
  /// The SSH key of the virtual machine administrator.
  late final pulumi.Output<String?> sshKey;
  /// Storage type to use for virtual machine (i.e. Standard, Premium).
  late final pulumi.Output<String?> storageType;
  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource.
  late final pulumi.Output<String> type;
  /// The unique immutable identifier of a resource (Guid).
  late final pulumi.Output<String> uniqueIdentifier;
  /// The user name of the virtual machine.
  late final pulumi.Output<String?> userName;
  /// Tells source of creation of lab virtual machine. Output property only.
  late final pulumi.Output<String> virtualMachineCreationSource;

  /// Creates a new [VirtualMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachine]. {@macro pulumi_devtestlab_virtual_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachine(
    String name, {
    VirtualMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devtestlab:VirtualMachine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowClaim = registerOutput<bool?>('allowClaim');
    this.applicableSchedule = registerOutput<ApplicableScheduleResponse>('applicableSchedule');
    this.artifactDeploymentStatus = registerOutput<ArtifactDeploymentStatusPropertiesResponse>('artifactDeploymentStatus');
    this.artifacts = registerOutput<List<ArtifactInstallPropertiesResponse>?>('artifacts');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.computeId = registerOutput<String>('computeId');
    this.computeVm = registerOutput<ComputeVmPropertiesResponse>('computeVm');
    this.createdByUser = registerOutput<String>('createdByUser');
    this.createdByUserId = registerOutput<String>('createdByUserId');
    this.createdDate = registerOutput<String?>('createdDate');
    this.customImageId = registerOutput<String?>('customImageId');
    this.dataDiskParameters = registerOutput<List<DataDiskPropertiesResponse>?>('dataDiskParameters');
    this.disallowPublicIpAddress = registerOutput<bool?>('disallowPublicIpAddress');
    this.environmentId = registerOutput<String?>('environmentId');
    this.expirationDate = registerOutput<String?>('expirationDate');
    this.fqdn = registerOutput<String>('fqdn');
    this.galleryImageReference = registerOutput<GalleryImageReferenceResponse?>('galleryImageReference');
    this.isAuthenticationWithSshKey = registerOutput<bool?>('isAuthenticationWithSshKey');
    this.labSubnetName = registerOutput<String?>('labSubnetName');
    this.labVirtualNetworkId = registerOutput<String?>('labVirtualNetworkId');
    this.lastKnownPowerState = registerOutput<String>('lastKnownPowerState');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.networkInterface = registerOutput<NetworkInterfacePropertiesResponse?>('networkInterface');
    this.notes = registerOutput<String?>('notes');
    this.osType = registerOutput<String>('osType');
    this.ownerObjectId = registerOutput<String?>('ownerObjectId');
    this.ownerUserPrincipalName = registerOutput<String?>('ownerUserPrincipalName');
    this.password = registerOutput<String?>('password');
    this.planId = registerOutput<String?>('planId');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.scheduleParameters = registerOutput<List<ScheduleCreationParameterResponse>?>('scheduleParameters');
    this.size = registerOutput<String?>('size');
    this.sshKey = registerOutput<String?>('sshKey');
    this.storageType = registerOutput<String?>('storageType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
    this.userName = registerOutput<String?>('userName');
    this.virtualMachineCreationSource = registerOutput<String>('virtualMachineCreationSource');
  }
}
