import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_set_args.dart';
import 'instance_view_status_response.dart';
import 'scheduled_events_policy_response.dart';
import 'sku_response.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_scale_set_migration_info_response.dart';

/// Specifies information about the availability set that the virtual machine should be assigned to. Virtual machines specified in the same availability set are allocated to different nodes to maximize availability. For more information about availability sets, see [Availability sets overview](https://docs.microsoft.com/azure/virtual-machines/availability-set-overview). For more information on Azure planned maintenance, see [Maintenance and updates for Virtual Machines in Azure](https://docs.microsoft.com/azure/virtual-machines/maintenance-and-updates). Currently, a VM can only be added to an availability set at creation time. An existing VM cannot be added to an availability set.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create an availability set with Scheduled Event Policy.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var availabilitySet = new AzureNative.Compute.AvailabilitySet("availabilitySet", new()
///     {
///         AvailabilitySetName = "myAvailabilitySet",
///         Location = "westus",
///         PlatformFaultDomainCount = 2,
///         PlatformUpdateDomainCount = 20,
///         ResourceGroupName = "myResourceGroup",
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
/// 		_, err := compute.NewAvailabilitySet(ctx, "availabilitySet", &compute.AvailabilitySetArgs{
/// 			AvailabilitySetName:       pulumi.String("myAvailabilitySet"),
/// 			Location:                  pulumi.String("westus"),
/// 			PlatformFaultDomainCount:  pulumi.Int(2),
/// 			PlatformUpdateDomainCount: pulumi.Int(20),
/// 			ResourceGroupName:         pulumi.String("myResourceGroup"),
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
/// resource "azure-native_compute_availabilityset" "availabilitySet" {
///   availability_set_name        = "myAvailabilitySet"
///   location                     = "westus"
///   platform_fault_domain_count  = 2
///   platform_update_domain_count = 20
///   resource_group_name          = "myResourceGroup"
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
/// import com.pulumi.azurenative.compute.AvailabilitySet;
/// import com.pulumi.azurenative.compute.AvailabilitySetArgs;
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
///         var availabilitySet = new AvailabilitySet("availabilitySet", AvailabilitySetArgs.builder()
///             .availabilitySetName("myAvailabilitySet")
///             .location("westus")
///             .platformFaultDomainCount(2)
///             .platformUpdateDomainCount(20)
///             .resourceGroupName("myResourceGroup")
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
/// const availabilitySet = new azure_native.compute.AvailabilitySet("availabilitySet", {
///     availabilitySetName: "myAvailabilitySet",
///     location: "westus",
///     platformFaultDomainCount: 2,
///     platformUpdateDomainCount: 20,
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// availability_set = azure_native.compute.AvailabilitySet("availabilitySet",
///     availability_set_name="myAvailabilitySet",
///     location="westus",
///     platform_fault_domain_count=2,
///     platform_update_domain_count=20,
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   availabilitySet:
///     type: azure-native:compute:AvailabilitySet
///     properties:
///       availabilitySetName: myAvailabilitySet
///       location: westus
///       platformFaultDomainCount: 2
///       platformUpdateDomainCount: 20
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create an availability set.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var availabilitySet = new AzureNative.Compute.AvailabilitySet("availabilitySet", new()
///     {
///         AvailabilitySetName = "myAvailabilitySet",
///         Location = "westus",
///         PlatformFaultDomainCount = 2,
///         PlatformUpdateDomainCount = 20,
///         ResourceGroupName = "myResourceGroup",
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
/// 		_, err := compute.NewAvailabilitySet(ctx, "availabilitySet", &compute.AvailabilitySetArgs{
/// 			AvailabilitySetName:       pulumi.String("myAvailabilitySet"),
/// 			Location:                  pulumi.String("westus"),
/// 			PlatformFaultDomainCount:  pulumi.Int(2),
/// 			PlatformUpdateDomainCount: pulumi.Int(20),
/// 			ResourceGroupName:         pulumi.String("myResourceGroup"),
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
/// resource "azure-native_compute_availabilityset" "availabilitySet" {
///   availability_set_name        = "myAvailabilitySet"
///   location                     = "westus"
///   platform_fault_domain_count  = 2
///   platform_update_domain_count = 20
///   resource_group_name          = "myResourceGroup"
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
/// import com.pulumi.azurenative.compute.AvailabilitySet;
/// import com.pulumi.azurenative.compute.AvailabilitySetArgs;
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
///         var availabilitySet = new AvailabilitySet("availabilitySet", AvailabilitySetArgs.builder()
///             .availabilitySetName("myAvailabilitySet")
///             .location("westus")
///             .platformFaultDomainCount(2)
///             .platformUpdateDomainCount(20)
///             .resourceGroupName("myResourceGroup")
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
/// const availabilitySet = new azure_native.compute.AvailabilitySet("availabilitySet", {
///     availabilitySetName: "myAvailabilitySet",
///     location: "westus",
///     platformFaultDomainCount: 2,
///     platformUpdateDomainCount: 20,
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// availability_set = azure_native.compute.AvailabilitySet("availabilitySet",
///     availability_set_name="myAvailabilitySet",
///     location="westus",
///     platform_fault_domain_count=2,
///     platform_update_domain_count=20,
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   availabilitySet:
///     type: azure-native:compute:AvailabilitySet
///     properties:
///       availabilitySetName: myAvailabilitySet
///       location: westus
///       platformFaultDomainCount: 2
///       platformUpdateDomainCount: 20
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:compute:AvailabilitySet myAvailabilitySet /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}
/// ```
class AvailabilitySet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Fault Domain count.
  late final pulumi.Output<int?> platformFaultDomainCount;
  /// Update Domain count.
  late final pulumi.Output<int?> platformUpdateDomainCount;
  /// Specifies information about the proximity placement group that the availability set should be assigned to. Minimum api-version: 2018-04-01.
  late final pulumi.Output<SubResourceResponse?> proximityPlacementGroup;
  /// Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations for the availability set.
  late final pulumi.Output<ScheduledEventsPolicyResponse?> scheduledEventsPolicy;
  /// Sku of the availability set, only name is required to be set. See AvailabilitySetSkuTypes for possible set of values. Use 'Aligned' for virtual machines with managed disks and 'Classic' for virtual machines with unmanaged disks. Default value is 'Classic'.
  late final pulumi.Output<SkuResponse?> sku;
  /// The resource status information.
  late final pulumi.Output<List<InstanceViewStatusResponse>> statuses;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Describes the migration properties on the Availability Set.
  late final pulumi.Output<VirtualMachineScaleSetMigrationInfoResponse> virtualMachineScaleSetMigrationInfo;
  /// A list of references to all virtual machines in the availability set.
  late final pulumi.Output<List<SubResourceResponse>?> virtualMachines;

  /// Creates a new [AvailabilitySet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AvailabilitySet]. {@macro pulumi_compute_availability_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AvailabilitySet(
    String name, {
    AvailabilitySetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:AvailabilitySet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    platformFaultDomainCount = registerOutput<int?>('platformFaultDomainCount');
    platformUpdateDomainCount = registerOutput<int?>('platformUpdateDomainCount');
    proximityPlacementGroup = registerOutput<SubResourceResponse?>('proximityPlacementGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scheduledEventsPolicy = registerOutput<ScheduledEventsPolicyResponse?>('scheduledEventsPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduledEventsPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statuses = registerOutput<List<InstanceViewStatusResponse>>('statuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceViewStatusResponse>(guardedValue, (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    virtualMachineScaleSetMigrationInfo = registerOutput<VirtualMachineScaleSetMigrationInfoResponse>('virtualMachineScaleSetMigrationInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineScaleSetMigrationInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualMachines = registerOutput<List<SubResourceResponse>?>('virtualMachines', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [AvailabilitySet] resource.
  AvailabilitySet.reference(String urn)
    : super(
        'azure-native:compute:AvailabilitySet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    platformFaultDomainCount = registerOutput<int?>('platformFaultDomainCount');
    platformUpdateDomainCount = registerOutput<int?>('platformUpdateDomainCount');
    proximityPlacementGroup = registerOutput<SubResourceResponse?>('proximityPlacementGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scheduledEventsPolicy = registerOutput<ScheduledEventsPolicyResponse?>('scheduledEventsPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduledEventsPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statuses = registerOutput<List<InstanceViewStatusResponse>>('statuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceViewStatusResponse>(guardedValue, (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    virtualMachineScaleSetMigrationInfo = registerOutput<VirtualMachineScaleSetMigrationInfoResponse>('virtualMachineScaleSetMigrationInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineScaleSetMigrationInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualMachines = registerOutput<List<SubResourceResponse>?>('virtualMachines', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
