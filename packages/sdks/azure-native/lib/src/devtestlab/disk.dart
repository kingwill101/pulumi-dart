import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_args.dart';
import 'system_data_response.dart';

/// A Disk.
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Disks_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.DevTestLab.Disk("disk", new()
///     {
///         DiskSizeGiB = 1023,
///         DiskType = AzureNative.DevTestLab.StorageType.Standard,
///         LabName = "{labName}",
///         LeasedByLabVmId = "/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualmachines/vmName",
///         Name = "{diskName}",
///         ResourceGroupName = "resourceGroupName",
///         UserName = "{userId}",
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
/// 		_, err := devtestlab.NewDisk(ctx, "disk", &devtestlab.DiskArgs{
/// 			DiskSizeGiB:       pulumi.Int(1023),
/// 			DiskType:          pulumi.String(devtestlab.StorageTypeStandard),
/// 			LabName:           pulumi.String("{labName}"),
/// 			LeasedByLabVmId:   pulumi.String("/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualmachines/vmName"),
/// 			Name:              pulumi.String("{diskName}"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			UserName:          pulumi.String("{userId}"),
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
/// resource "azure-native_devtestlab_disk" "disk" {
///   disk_size_gi_b      = 1023
///   disk_type           = "Standard"
///   lab_name            = "{labName}"
///   leased_by_lab_vm_id = "/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualmachines/vmName"
///   name                = "{diskName}"
///   resource_group_name = "resourceGroupName"
///   user_name           = "{userId}"
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
/// import com.pulumi.azurenative.devtestlab.Disk;
/// import com.pulumi.azurenative.devtestlab.DiskArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .diskSizeGiB(1023)
///             .diskType("Standard")
///             .labName("{labName}")
///             .leasedByLabVmId("/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualmachines/vmName")
///             .name("{diskName}")
///             .resourceGroupName("resourceGroupName")
///             .userName("{userId}")
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
/// const disk = new azure_native.devtestlab.Disk("disk", {
///     diskSizeGiB: 1023,
///     diskType: azure_native.devtestlab.StorageType.Standard,
///     labName: "{labName}",
///     leasedByLabVmId: "/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualmachines/vmName",
///     name: "{diskName}",
///     resourceGroupName: "resourceGroupName",
///     userName: "{userId}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.devtestlab.Disk("disk",
///     disk_size_gi_b=1023,
///     disk_type=azure_native.devtestlab.StorageType.STANDARD,
///     lab_name="{labName}",
///     leased_by_lab_vm_id="/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualmachines/vmName",
///     name="{diskName}",
///     resource_group_name="resourceGroupName",
///     user_name="{userId}")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:devtestlab:Disk
///     properties:
///       diskSizeGiB: 1023
///       diskType: Standard
///       labName: '{labName}'
///       leasedByLabVmId: /subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualmachines/vmName
///       name: '{diskName}'
///       resourceGroupName: resourceGroupName
///       userName: '{userId}'
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
/// $ pulumi import azure-native:devtestlab:Disk {diskName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/users/{userName}/disks/{name}
/// ```
class Disk extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The creation date of the disk.
  late final pulumi.Output<String> createdDate;
  /// When backed by a blob, the name of the VHD blob without extension.
  late final pulumi.Output<String?> diskBlobName;
  /// The size of the disk in Gibibytes.
  late final pulumi.Output<int?> diskSizeGiB;
  /// The storage type for the disk (i.e. Standard, Premium).
  late final pulumi.Output<String?> diskType;
  /// When backed by a blob, the URI of underlying blob.
  late final pulumi.Output<String?> diskUri;
  /// The host caching policy of the disk (i.e. None, ReadOnly, ReadWrite).
  late final pulumi.Output<String?> hostCaching;
  /// The resource ID of the VM to which this disk is leased.
  late final pulumi.Output<String?> leasedByLabVmId;
  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;
  /// When backed by managed disk, this is the ID of the compute disk resource.
  late final pulumi.Output<String?> managedDiskId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning status of the resource.
  late final pulumi.Output<String> provisioningState;
  /// When backed by a blob, the storage account where the blob is.
  late final pulumi.Output<String?> storageAccountId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The unique immutable identifier of a resource (Guid).
  late final pulumi.Output<String> uniqueIdentifier;

  /// Creates a new [Disk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Disk]. {@macro pulumi_devtestlab_disk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Disk(
    String name, {
    DiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devtestlab:Disk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdDate = registerOutput<String>('createdDate');
    diskBlobName = registerOutput<String?>('diskBlobName');
    diskSizeGiB = registerOutput<int?>('diskSizeGiB');
    diskType = registerOutput<String?>('diskType');
    diskUri = registerOutput<String?>('diskUri');
    hostCaching = registerOutput<String?>('hostCaching');
    leasedByLabVmId = registerOutput<String?>('leasedByLabVmId');
    location = registerOutput<String?>('location');
    managedDiskId = registerOutput<String?>('managedDiskId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    storageAccountId = registerOutput<String?>('storageAccountId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
  }
}
