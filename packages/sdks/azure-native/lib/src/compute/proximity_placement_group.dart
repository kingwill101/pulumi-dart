import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_view_status_response.dart';
import 'proximity_placement_group_args.dart';
import 'proximity_placement_group_properties_intent_response.dart';
import 'system_data_response.dart';

/// Specifies information about the proximity placement group.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a proximity placement group.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var proximityPlacementGroup = new AzureNative.Compute.ProximityPlacementGroup("proximityPlacementGroup", new()
///     {
///         Intent = new AzureNative.Compute.Inputs.ProximityPlacementGroupPropertiesIntentArgs
///         {
///             VmSizes = new[]
///             {
///                 "Basic_A0",
///                 "Basic_A2",
///             },
///         },
///         Location = "westus",
///         ProximityPlacementGroupName = "myProximityPlacementGroup",
///         ProximityPlacementGroupType = AzureNative.Compute.ProximityPlacementGroupType.Standard,
///         ResourceGroupName = "myResourceGroup",
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
/// 		_, err := compute.NewProximityPlacementGroup(ctx, "proximityPlacementGroup", &compute.ProximityPlacementGroupArgs{
/// 			Intent: &compute.ProximityPlacementGroupPropertiesIntentArgs{
/// 				VmSizes: pulumi.StringArray{
/// 					pulumi.String("Basic_A0"),
/// 					pulumi.String("Basic_A2"),
/// 				},
/// 			},
/// 			Location:                    pulumi.String("westus"),
/// 			ProximityPlacementGroupName: pulumi.String("myProximityPlacementGroup"),
/// 			ProximityPlacementGroupType: pulumi.String(compute.ProximityPlacementGroupTypeStandard),
/// 			ResourceGroupName:           pulumi.String("myResourceGroup"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.compute.ProximityPlacementGroup;
/// import com.pulumi.azurenative.compute.ProximityPlacementGroupArgs;
/// import com.pulumi.azurenative.compute.inputs.ProximityPlacementGroupPropertiesIntentArgs;
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
///         var proximityPlacementGroup = new ProximityPlacementGroup("proximityPlacementGroup", ProximityPlacementGroupArgs.builder()
///             .intent(ProximityPlacementGroupPropertiesIntentArgs.builder()
///                 .vmSizes(
///                     "Basic_A0",
///                     "Basic_A2")
///                 .build())
///             .location("westus")
///             .proximityPlacementGroupName("myProximityPlacementGroup")
///             .proximityPlacementGroupType("Standard")
///             .resourceGroupName("myResourceGroup")
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
/// const proximityPlacementGroup = new azure_native.compute.ProximityPlacementGroup("proximityPlacementGroup", {
///     intent: {
///         vmSizes: [
///             "Basic_A0",
///             "Basic_A2",
///         ],
///     },
///     location: "westus",
///     proximityPlacementGroupName: "myProximityPlacementGroup",
///     proximityPlacementGroupType: azure_native.compute.ProximityPlacementGroupType.Standard,
///     resourceGroupName: "myResourceGroup",
///     zones: ["1"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// proximity_placement_group = azure_native.compute.ProximityPlacementGroup("proximityPlacementGroup",
///     intent={
///         "vm_sizes": [
///             "Basic_A0",
///             "Basic_A2",
///         ],
///     },
///     location="westus",
///     proximity_placement_group_name="myProximityPlacementGroup",
///     proximity_placement_group_type=azure_native.compute.ProximityPlacementGroupType.STANDARD,
///     resource_group_name="myResourceGroup",
///     zones=["1"])
///
/// ```
///
/// ```yaml
/// resources:
///   proximityPlacementGroup:
///     type: azure-native:compute:ProximityPlacementGroup
///     properties:
///       intent:
///         vmSizes:
///           - Basic_A0
///           - Basic_A2
///       location: westus
///       proximityPlacementGroupName: myProximityPlacementGroup
///       proximityPlacementGroupType: Standard
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:compute:ProximityPlacementGroup myProximityPlacementGroup /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/proximityPlacementGroups/{proximityPlacementGroupName}
/// ```
class ProximityPlacementGroup extends pulumi.CustomResource {
  /// A list of references to all availability sets in the proximity placement group.
  late final pulumi.Output<List<Map<String, dynamic>>> availabilitySets;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Describes colocation status of the Proximity Placement Group.
  late final pulumi.Output<InstanceViewStatusResponse?> colocationStatus;
  /// Specifies the user intent of the proximity placement group.
  late final pulumi.Output<ProximityPlacementGroupPropertiesIntentResponse?> intent;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Specifies the type of the proximity placement group. Possible values are: **Standard** : Co-locate resources within an Azure region or Availability Zone. **Ultra** : For future use.
  late final pulumi.Output<String?> proximityPlacementGroupType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// A list of references to all virtual machine scale sets in the proximity placement group.
  late final pulumi.Output<List<Map<String, dynamic>>> virtualMachineScaleSets;
  /// A list of references to all virtual machines in the proximity placement group.
  late final pulumi.Output<List<Map<String, dynamic>>> virtualMachines;
  /// The availability zones.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [ProximityPlacementGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProximityPlacementGroup]. {@macro pulumi_compute_proximity_placement_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProximityPlacementGroup(
    String name, {
    ProximityPlacementGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:ProximityPlacementGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    availabilitySets = registerOutput<List<Map<String, dynamic>>>('availabilitySets');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    colocationStatus = registerOutput<InstanceViewStatusResponse?>('colocationStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceViewStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    intent = registerOutput<ProximityPlacementGroupPropertiesIntentResponse?>('intent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProximityPlacementGroupPropertiesIntentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    proximityPlacementGroupType = registerOutput<String?>('proximityPlacementGroupType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualMachineScaleSets = registerOutput<List<Map<String, dynamic>>>('virtualMachineScaleSets');
    virtualMachines = registerOutput<List<Map<String, dynamic>>>('virtualMachines');
    zones = registerOutput<List<String>?>('zones');
  }
}
