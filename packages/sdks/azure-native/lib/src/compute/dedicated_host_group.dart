import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_group_args.dart';
import 'dedicated_host_group_instance_view_response.dart';
import 'dedicated_host_group_properties_additional_capabilities_response.dart';
import 'sub_resource_read_only_response.dart';
import 'system_data_response.dart';

/// Specifies information about the dedicated host group that the dedicated hosts should be assigned to. Currently, a dedicated host can only be added to a dedicated host group at creation time. An existing dedicated host cannot be added to another dedicated host group.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a dedicated host group with Ultra SSD support.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dedicatedHostGroup = new AzureNative.Compute.DedicatedHostGroup("dedicatedHostGroup", new()
///     {
///         AdditionalCapabilities = new AzureNative.Compute.Inputs.DedicatedHostGroupPropertiesAdditionalCapabilitiesArgs
///         {
///             UltraSSDEnabled = true,
///         },
///         HostGroupName = "myDedicatedHostGroup",
///         Location = "westus",
///         PlatformFaultDomainCount = 3,
///         ResourceGroupName = "myResourceGroup",
///         SupportAutomaticPlacement = true,
///         Tags =
///         {
///             { "department", "finance" },
///         },
///         Zones = new[]
///         {
///             "1",
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
/// 		_, err := compute.NewDedicatedHostGroup(ctx, "dedicatedHostGroup", &compute.DedicatedHostGroupArgs{
/// 			AdditionalCapabilities: &compute.DedicatedHostGroupPropertiesAdditionalCapabilitiesArgs{
/// 				UltraSSDEnabled: pulumi.Bool(true),
/// 			},
/// 			HostGroupName:             pulumi.String("myDedicatedHostGroup"),
/// 			Location:                  pulumi.String("westus"),
/// 			PlatformFaultDomainCount:  pulumi.Int(3),
/// 			ResourceGroupName:         pulumi.String("myResourceGroup"),
/// 			SupportAutomaticPlacement: pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"department": pulumi.String("finance"),
/// 			},
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
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
/// resource "azure-native_compute_dedicatedhostgroup" "dedicatedHostGroup" {
///   additional_capabilities = {
///     ultra_ssd_enabled = true
///   }
///   host_group_name             = "myDedicatedHostGroup"
///   location                    = "westus"
///   platform_fault_domain_count = 3
///   resource_group_name         = "myResourceGroup"
///   support_automatic_placement = true
///   tags = {
///     "department" = "finance"
///   }
///   zones = ["1"]
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
/// import com.pulumi.azurenative.compute.DedicatedHostGroup;
/// import com.pulumi.azurenative.compute.DedicatedHostGroupArgs;
/// import com.pulumi.azurenative.compute.inputs.DedicatedHostGroupPropertiesAdditionalCapabilitiesArgs;
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
///         var dedicatedHostGroup = new DedicatedHostGroup("dedicatedHostGroup", DedicatedHostGroupArgs.builder()
///             .additionalCapabilities(DedicatedHostGroupPropertiesAdditionalCapabilitiesArgs.builder()
///                 .ultraSSDEnabled(true)
///                 .build())
///             .hostGroupName("myDedicatedHostGroup")
///             .location("westus")
///             .platformFaultDomainCount(3)
///             .resourceGroupName("myResourceGroup")
///             .supportAutomaticPlacement(true)
///             .tags(Map.of("department", "finance"))
///             .zones("1")
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
/// const dedicatedHostGroup = new azure_native.compute.DedicatedHostGroup("dedicatedHostGroup", {
///     additionalCapabilities: {
///         ultraSSDEnabled: true,
///     },
///     hostGroupName: "myDedicatedHostGroup",
///     location: "westus",
///     platformFaultDomainCount: 3,
///     resourceGroupName: "myResourceGroup",
///     supportAutomaticPlacement: true,
///     tags: {
///         department: "finance",
///     },
///     zones: ["1"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dedicated_host_group = azure_native.compute.DedicatedHostGroup("dedicatedHostGroup",
///     additional_capabilities={
///         "ultra_ssd_enabled": True,
///     },
///     host_group_name="myDedicatedHostGroup",
///     location="westus",
///     platform_fault_domain_count=3,
///     resource_group_name="myResourceGroup",
///     support_automatic_placement=True,
///     tags={
///         "department": "finance",
///     },
///     zones=["1"])
///
/// ```
///
/// ```yaml
/// resources:
///   dedicatedHostGroup:
///     type: azure-native:compute:DedicatedHostGroup
///     properties:
///       additionalCapabilities:
///         ultraSSDEnabled: true
///       hostGroupName: myDedicatedHostGroup
///       location: westus
///       platformFaultDomainCount: 3
///       resourceGroupName: myResourceGroup
///       supportAutomaticPlacement: true
///       tags:
///         department: finance
///       zones:
///         - '1'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a dedicated host group.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dedicatedHostGroup = new AzureNative.Compute.DedicatedHostGroup("dedicatedHostGroup", new()
///     {
///         HostGroupName = "myDedicatedHostGroup",
///         Location = "westus",
///         PlatformFaultDomainCount = 3,
///         ResourceGroupName = "myResourceGroup",
///         SupportAutomaticPlacement = true,
///         Tags =
///         {
///             { "department", "finance" },
///         },
///         Zones = new[]
///         {
///             "1",
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
/// 		_, err := compute.NewDedicatedHostGroup(ctx, "dedicatedHostGroup", &compute.DedicatedHostGroupArgs{
/// 			HostGroupName:             pulumi.String("myDedicatedHostGroup"),
/// 			Location:                  pulumi.String("westus"),
/// 			PlatformFaultDomainCount:  pulumi.Int(3),
/// 			ResourceGroupName:         pulumi.String("myResourceGroup"),
/// 			SupportAutomaticPlacement: pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"department": pulumi.String("finance"),
/// 			},
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
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
/// resource "azure-native_compute_dedicatedhostgroup" "dedicatedHostGroup" {
///   host_group_name             = "myDedicatedHostGroup"
///   location                    = "westus"
///   platform_fault_domain_count = 3
///   resource_group_name         = "myResourceGroup"
///   support_automatic_placement = true
///   tags = {
///     "department" = "finance"
///   }
///   zones = ["1"]
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
/// import com.pulumi.azurenative.compute.DedicatedHostGroup;
/// import com.pulumi.azurenative.compute.DedicatedHostGroupArgs;
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
///         var dedicatedHostGroup = new DedicatedHostGroup("dedicatedHostGroup", DedicatedHostGroupArgs.builder()
///             .hostGroupName("myDedicatedHostGroup")
///             .location("westus")
///             .platformFaultDomainCount(3)
///             .resourceGroupName("myResourceGroup")
///             .supportAutomaticPlacement(true)
///             .tags(Map.of("department", "finance"))
///             .zones("1")
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
/// const dedicatedHostGroup = new azure_native.compute.DedicatedHostGroup("dedicatedHostGroup", {
///     hostGroupName: "myDedicatedHostGroup",
///     location: "westus",
///     platformFaultDomainCount: 3,
///     resourceGroupName: "myResourceGroup",
///     supportAutomaticPlacement: true,
///     tags: {
///         department: "finance",
///     },
///     zones: ["1"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dedicated_host_group = azure_native.compute.DedicatedHostGroup("dedicatedHostGroup",
///     host_group_name="myDedicatedHostGroup",
///     location="westus",
///     platform_fault_domain_count=3,
///     resource_group_name="myResourceGroup",
///     support_automatic_placement=True,
///     tags={
///         "department": "finance",
///     },
///     zones=["1"])
///
/// ```
///
/// ```yaml
/// resources:
///   dedicatedHostGroup:
///     type: azure-native:compute:DedicatedHostGroup
///     properties:
///       hostGroupName: myDedicatedHostGroup
///       location: westus
///       platformFaultDomainCount: 3
///       resourceGroupName: myResourceGroup
///       supportAutomaticPlacement: true
///       tags:
///         department: finance
///       zones:
///         - '1'
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
/// $ pulumi import azure-native:compute:DedicatedHostGroup myDedicatedHostGroup /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName}
/// ```
class DedicatedHostGroup extends pulumi.CustomResource {
  /// Enables or disables a capability on the dedicated host group. Minimum api-version: 2022-03-01.
  late final pulumi.Output<DedicatedHostGroupPropertiesAdditionalCapabilitiesResponse?> additionalCapabilities;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A list of references to all dedicated hosts in the dedicated host group.
  late final pulumi.Output<List<SubResourceReadOnlyResponse>> hosts;
  /// The dedicated host group instance view, which has the list of instance view of the dedicated hosts under the dedicated host group.
  late final pulumi.Output<DedicatedHostGroupInstanceViewResponse> instanceView;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Number of fault domains that the host group can span.
  late final pulumi.Output<int> platformFaultDomainCount;
  /// Specifies whether virtual machines or virtual machine scale sets can be placed automatically on the dedicated host group. Automatic placement means resources are allocated on dedicated hosts, that are chosen by Azure, under the dedicated host group. The value is defaulted to 'false' when not provided. Minimum api-version: 2020-06-01.
  late final pulumi.Output<bool?> supportAutomaticPlacement;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The availability zones.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [DedicatedHostGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedHostGroup]. {@macro pulumi_compute_dedicated_host_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedHostGroup(
    String name, {
    DedicatedHostGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:DedicatedHostGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalCapabilities = registerOutput<DedicatedHostGroupPropertiesAdditionalCapabilitiesResponse?>('additionalCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DedicatedHostGroupPropertiesAdditionalCapabilitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    hosts = registerOutput<List<SubResourceReadOnlyResponse>>('hosts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceReadOnlyResponse>(guardedValue, (value) => SubResourceReadOnlyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    instanceView = registerOutput<DedicatedHostGroupInstanceViewResponse>('instanceView', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DedicatedHostGroupInstanceViewResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    platformFaultDomainCount = registerOutput<int>('platformFaultDomainCount');
    supportAutomaticPlacement = registerOutput<bool?>('supportAutomaticPlacement');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [DedicatedHostGroup] resource.
  DedicatedHostGroup.reference(String urn)
    : super(
        'azure-native:compute:DedicatedHostGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    additionalCapabilities = registerOutput<DedicatedHostGroupPropertiesAdditionalCapabilitiesResponse?>('additionalCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DedicatedHostGroupPropertiesAdditionalCapabilitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    hosts = registerOutput<List<SubResourceReadOnlyResponse>>('hosts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceReadOnlyResponse>(guardedValue, (value) => SubResourceReadOnlyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    instanceView = registerOutput<DedicatedHostGroupInstanceViewResponse>('instanceView', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DedicatedHostGroupInstanceViewResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    platformFaultDomainCount = registerOutput<int>('platformFaultDomainCount');
    supportAutomaticPlacement = registerOutput<bool?>('supportAutomaticPlacement');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
